# Project Configuration for para-spacy-lisp

## Setup Commands
```bash
# Initial setup
./setup.sh

# Run server
./run_server.sh

# Start spaCy mode in Emacs
M-x spacy-mode
```

## Code Style Guidelines
- Python: Follow PEP 8, use docstrings for functions
- Elisp: Follow Emacs Lisp conventions with proper docstrings
- Use meaningful variable names and avoid abbreviations
- Handle exceptions with appropriate error messages
- Add logging for operational information

## Development Workflow
- Modify code in setup.org and tangle (C-c C-v t)
- Use :mkdirp yes for all code blocks
- Test by running server and connecting from Emacs
- Keyboard shortcuts: C-c C-a (analyze paragraph), C-c C-r (analyze region)

## Project Structure
- server/: Python WebSocket server with spaCy integration
- elisp/: Emacs Lisp code for minor mode
- examples/: Sample usage demonstrations