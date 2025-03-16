#!/bin/bash

# Setup script for para-spacy-lisp

# Create virtual environment
echo "Creating Python virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Install required packages
echo "Installing required Python packages..."
pip install -e ".[dev]"
python -m spacy download en_core_web_sm

# Create directory structure
echo "Creating directory structure..."
mkdir -p data/raw data/processed
mkdir -p docs
mkdir -p processed/json processed/lisp
mkdir -p src/defrecord/para_spacy
mkdir -p tests

echo "Setup complete!"
echo "To start the server:"
echo "  source venv/bin/activate"
echo "  python -m defrecord.para_spacy.server"