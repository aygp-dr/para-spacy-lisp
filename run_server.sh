#!/bin/bash

# Activate virtual environment
source venv/bin/activate

# Start NLP server
python -m defrecord.para_spacy.server "$@"