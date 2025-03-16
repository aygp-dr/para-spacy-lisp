# Project Configuration for para-spacy-lisp

## Build & Run Commands
```bash
# Setup environment and dependencies
./setup.sh

# Build data pipeline
make paragraphs     # Parse book into paragraphs
make process        # Process paragraphs into JSON/Lisp

# Run server
./run_server.sh

# Clean build artifacts
make clean
```

## Testing & Development
```bash
# Run all tests
python -m pytest tests/

# Run specific test
python -m pytest tests/test_server.py -v

# Test specific paragraph processing
python scripts/process_paragraphs.py data/paragraphs/beowulf_0001.txt -o test_output

# Start Emacs with spaCy mode
emacs -Q -L elisp --eval "(require 'spacy-mode)" --eval "(spacy-mode 1)"
```

## Code Style Guidelines
- **Python**: PEP 8, typed annotations, 4-space indents, 88-char line limit
- **Imports**: Standard library first, then third-party, then local modules
- **Elisp**: Emacs conventions, descriptive docstrings, 2-space indents
- **Naming**: snake_case for Python, kebab-case for Elisp
- **Error handling**: Always catch specific exceptions with appropriate logging
- **Logging**: Use the logging module, not print statements
- **Documentation**: Docstrings for all functions, classes, and modules

## Project Structure
- `server/`: WebSocket server with spaCy integration
- `elisp/`: Emacs Lisp code for minor mode
- `scripts/`: Text processing tools
- `data/`: Input text files
- `processed/`: JSON and Lisp output files
- `docs/`: Project documentation in .org format
- `tests/`: Test suite

## Documentation
- All documentation is in org-mode format in the `docs/` directory
- Key files: README.org, SETUP.org, CONTRIBUTING.org, SECURITY.org, ONBOARDING.org
- Use `:mkdirp yes` for all code blocks in org files
- Generate code from org files with: `C-c C-v t` or `org-babel-tangle`