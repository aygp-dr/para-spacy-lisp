#!/bin/bash
#!/bin/bash

# Setup script for para-spacy-lisp

# Create virtual environment
echo "Creating Python virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Install required packages
echo "Installing required Python packages..."
pip install websockets spacy
python -m spacy download en_core_web_sm

echo "Setup complete!"
echo "To start the server:"
echo "  source venv/bin/activate"
echo "  python server/nlp_server.py"
