#!/usr/bin/env python3
"""
French Tense Analyzer MCP Server

A microservice for analyzing French text verb tenses, integrating with the
syntree-generator project.

This server implements the MCP (Microservice Communication Protocol) for
interacting with the Chrome extension and other clients.
"""

import argparse
import json
import logging
import os
import sys
import time
from concurrent.futures import ThreadPoolExecutor
from typing import Dict, List, Optional, Tuple, Union, Any

import spacy
from fastapi import FastAPI, HTTPException, Request, Response
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse
from fastapi.staticfiles import StaticFiles
from pydantic import BaseModel, Field
from spacy.tokens import Doc, Token

# Import custom syntree-generator modules
try:
    from syntree_generator.cli import process_text
    from syntree_generator.parser import french_parser
    from syntree_generator.utils import text_chunker
except ImportError:
    print("Error: syntree-generator package not found in PYTHONPATH")
    print("Please install it with: pip install -e /path/to/syntree-generator")
    sys.exit(1)

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s - %(name)s - %(levelname)s - %(message)s",
    handlers=[logging.StreamHandler()],
)
logger = logging.getLogger("french-tense-analyzer")

# Initialize FastAPI app
app = FastAPI(
    title="French Tense Analyzer",
    description="MCP service for analyzing French text verb tenses",
    version="1.0.0",
)

# Enable CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # In production, limit this to specific origins
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Initialize thread pool
executor = ThreadPoolExecutor(max_workers=4)

# Cache for author profiles
author_profiles = {}

# Load spaCy model
try:
    nlp = spacy.load("fr_core_news_md")
    logger.info("Loaded spaCy model: fr_core_news_md")
except OSError:
    logger.error("French language model not found. Installing...")
    os.system("python -m spacy download fr_core_news_md")
    nlp = spacy.load("fr_core_news_md")
    logger.info("Installed and loaded spaCy model: fr_core_news_md")

# Define Pydantic models for request/response validation
class AnalyzeRequest(BaseModel):
    text: str
    language: str = "fr"
    chunk_size: int = 5000
    include_examples: bool = True
    include_tree: bool = False

class TenseExample(BaseModel):
    tense: str
    text: str
    verb: str
    position: Optional[int] = None
    context: Optional[str] = None
    spacy_tag: Optional[str] = None

class AnalyzeResponse(BaseModel):
    tense_analysis: Dict[str, int]
    examples: Optional[List[TenseExample]] = None
    tree_id: Optional[str] = None
    total_verbs: int
    dominant_tense: Optional[str] = None
    processing_time: float

class ParseRequest(BaseModel):
    text: str
    language: str = "fr"
    output_format: str = "sexp"
    simplify: bool = False

class ParseResponse(BaseModel):
    tree: str
    tree_id: Optional[str] = None
    sentence_count: int
    processing_time: float

class AuthorCompareRequest(BaseModel):
    text: str
    authors: List[str] = []
    include_analysis: bool = True

class SimilarityScore(BaseModel):
    author: str
    score: float
    notes: Optional[str] = None

class AuthorCompareResponse(BaseModel):
    tense_analysis: Dict[str, int]
    similarities: List[SimilarityScore]
    closest_author: str
    closest_score: float
    style_notes: Optional[str] = None

class AuthorProfileRequest(BaseModel):
    author_name: str
    include_samples: bool = True

class AuthorProfile(BaseModel):
    name: str
    dominant_tense: str
    tense_distribution: Dict[str, int]
    style_features: List[str] = []
    sample_text: Optional[str] = None

class AuthorProfileResponse(BaseModel):
    author_profile: AuthorProfile
    examples: Optional[List[TenseExample]] = None

# Error response model
class ErrorResponse(BaseModel):
    error: str
    message: str
    code: int
    details: Optional[Dict[str, Any]] = None

# Initialize author profiles
def load_author_profiles():
    """Load predefined author profiles for comparison."""
    global author_profiles
    
    author_profiles = {
        "proust": {
            "name": "Marcel Proust",
            "dominant_tense": "imparfait",
            "tense_distribution": {
                "imparfait": 70,
                "passé composé": 7,
                "passé simple": 10,
                "présent": 10,
                "plus-que-parfait": 3
            },
            "style_features": [
                "Long, complex sentences",
                "Memory-driven narrative",
                "Fluid sense of time",
                "Introspective descriptions"
            ],
            "sample_text": "Longtemps, je me couchais de bonne heure. Parfois, à peine ma bougie éteinte, mes yeux se fermaient si vite que je n'avais pas le temps de me dire : « Je m'endors. »"
        },
        "camus": {
            "name": "Albert Camus",
            "dominant_tense": "passé composé",
            "tense_distribution": {
                "passé composé": 60,
                "imparfait": 20,
                "présent": 15,
                "plus-que-parfait": 3,
                "passé simple": 2
            },
            "style_features": [
                "Detached perspective",
                "Emotionally neutral tone",
                "Short, direct sentences",
                "Existentialist themes"
            ],
            "sample_text": "Aujourd'hui, maman est morte. Ou peut-être hier, je ne sais pas. J'ai reçu un télégramme de l'asile : « Mère décédée. Enterrement demain. Sentiments distingués. »"
        },
        "derrida": {
            "name": "Jacques Derrida",
            "dominant_tense": "présent",
            "tense_distribution": {
                "présent": 75,
                "passé composé": 15,
                "futur simple": 5,
                "conditionnel présent": 5
            },
            "style_features": [
                "Abstract philosophical language",
                "Complex conceptual analysis",
                "Deconstruction of binaries",
                "Theoretical language"
            ],
            "sample_text": "La déconstruction ne consiste pas à passer d'un concept à un autre, mais à renverser et à déplacer un ordre conceptuel, aussi bien que l'ordre non conceptuel auquel il s'articule."
        },
        "beauvoir": {
            "name": "Simone de Beauvoir",
            "dominant_tense": "présent",
            "tense_distribution": {
                "présent": 65,
                "passé composé": 20,
                "futur simple": 10,
                "conditionnel présent": 5
            },
            "style_features": [
                "Authoritative declarations",
                "Feminist theoretical language",
                "Clear argumentative structure",
                "Universal truths in present tense"
            ],
            "sample_text": "On ne naît pas femme : on le devient. Aucun destin biologique, psychique, économique ne définit la figure que revêt au sein de la société la femelle humaine."
        },
        "sartre": {
            "name": "Jean-Paul Sartre",
            "dominant_tense": "présent",
            "tense_distribution": {
                "présent": 70,
                "conditionnel présent": 10,
                "passé composé": 10,
                "futur simple": 10
            },
            "style_features": [
                "Existentialist philosophy",
                "Emphasis on freedom and responsibility",
                "Philosophical present tense",
                "Abstract conceptual
