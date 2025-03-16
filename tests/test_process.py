"""Tests for paragraph processing functionality."""

import os
import json
import tempfile
import pytest
from pathlib import Path
from scripts.process_paragraphs import TextAnalysis, EntityModel, SentenceModel, simulate_nlp_analysis, generate_lisp


def test_text_analysis_model():
    """Test the TextAnalysis model."""
    entities = [EntityModel(text="John", label="PERSON", start=0, end=4)]
    sentences = [SentenceModel(text="John is a developer.", start=0, end=19)]
    analysis = TextAnalysis(
        text="John is a developer.",
        entities=entities,
        sentences=sentences,
        tokens=5
    )
    
    assert analysis.text == "John is a developer."
    assert len(analysis.entities) == 1
    assert analysis.entities[0].text == "John"
    assert analysis.entities[0].label == "PERSON"
    assert len(analysis.sentences) == 1
    assert analysis.sentences[0].text == "John is a developer."
    assert analysis.tokens == 5


def test_simulate_nlp_analysis():
    """Test the mock NLP analysis function."""
    text = "John Smith works at Microsoft. He lives in Seattle."
    analysis = simulate_nlp_analysis(text)
    
    # Check the analysis structure
    assert analysis.text == text
    assert isinstance(analysis.entities, list)
    assert isinstance(analysis.sentences, list)
    assert isinstance(analysis.tokens, int)
    
    # Check entities were found
    assert any(e.text == "John" for e in analysis.entities)
    assert any(e.text == "Smith" for e in analysis.entities)
    assert any(e.text == "Microsoft" for e in analysis.entities)
    
    # Check sentences were split
    assert len(analysis.sentences) > 0


def test_generate_lisp():
    """Test Lisp generation from analysis."""
    entities = [EntityModel(text="John", label="PERSON", start=0, end=4)]
    sentences = [SentenceModel(text="John is a developer.", start=0, end=19)]
    analysis = TextAnalysis(
        text="John is a developer.",
        entities=entities,
        sentences=sentences,
        tokens=5
    )
    
    lisp = generate_lisp(analysis)
    
    # Check Lisp structure
    assert ";; spaCy-lisp: 1.0.0" in lisp
    assert "(text-analysis" in lisp
    assert ":text \"John is a developer.\"" in lisp
    assert ":tokens 5" in lisp
    assert "(entity :text \"John\" :label \"PERSON\" :start 0 :end 4)" in lisp
    assert "(sentence :text \"John is a developer.\" :start 0 :end 19)" in lisp


def test_model_dump_json():
    """Test JSON serialization."""
    entities = [EntityModel(text="John", label="PERSON", start=0, end=4)]
    sentences = [SentenceModel(text="John is a developer.", start=0, end=19)]
    analysis = TextAnalysis(
        text="John is a developer.",
        entities=entities,
        sentences=sentences,
        tokens=5
    )
    
    # Test JSON serialization
    json_str = analysis.model_dump_json()
    data = json.loads(json_str)
    
    assert data["text"] == "John is a developer."
    assert data["tokens"] == 5
    assert len(data["entities"]) == 1
    assert data["entities"][0]["text"] == "John"
    assert data["entities"][0]["label"] == "PERSON"
    assert len(data["sentences"]) == 1
    assert data["sentences"][0]["text"] == "John is a developer."


if __name__ == "__main__":
    pytest.main(["-v", __file__])