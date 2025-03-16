# para-spacy-lisp

A bridge between Emacs and spaCy NLP processing via WebSockets.

[![MELPA](https://melpa.org/packages/spacy-mode-badge.svg)](https://melpa.org/#/spacy-mode)
[![PyPI](https://img.shields.io/pypi/v/defrecord-para-spacy.svg)](https://pypi.org/project/defrecord-para-spacy/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

This project provides an Emacs minor mode that connects to a Python spaCy server via WebSockets to analyze text. It allows sending paragraphs or regions of text directly from Emacs to spaCy for natural language processing.

## Features

- Send paragraphs or regions from Emacs to spaCy for analysis
- View named entities, sentences, and other NLP results
- Simple WebSocket communication between Emacs and Python
- Easy to extend with additional NLP capabilities

## Installation

### Option 1: From package repositories (recommended)

#### Python Server Installation

```bash
# Install the Python package
pip install defrecord-para-spacy

# Run the server
python -m defrecord.para_spacy.server
```

#### Emacs Installation

Using `use-package` with `straight.el`:

```elisp
(use-package spacy-mode
  :straight t
  :commands (spacy-mode)
  :bind (:map spacy-mode-map
         ("C-c C-a" . spacy-analyze-paragraph)
         ("C-c C-r" . spacy-analyze-region))
  :config
  (setq spacy-server-url "ws://localhost:8765"))
```

Using `use-package` with MELPA:

```elisp
(use-package spacy-mode
  :ensure t
  :commands (spacy-mode)
  :bind (:map spacy-mode-map
         ("C-c C-a" . spacy-analyze-paragraph)
         ("C-c C-r" . spacy-analyze-region))
  :config
  (setq spacy-server-url "ws://localhost:8765"))
```

### Option 2: Manual installation from source

1. Clone this repository:
   ```bash
   git clone https://github.com/defrecord/para-spacy-lisp.git
   cd para-spacy-lisp
   ```

2. Set up the Python environment:
   ```bash
   ./setup.sh
   ```

3. Add the Emacs Lisp files to your load path:
   ```elisp
   (add-to-list 'load-path "~/path/to/para-spacy-lisp/elisp")
   (require 'spacy-mode)
   ```

## Usage

1. Start the spaCy server:
   ```bash
   # If installed from PyPI:
   python -m defrecord.para_spacy.server
   
   # Or if installed from source:
   ./run_server.sh
   ```

2. In Emacs, activate the spaCy mode:
   ```
   M-x spacy-mode
   ```

3. Analyze text:
   - `C-c C-a` - Analyze the current paragraph
   - `C-c C-r` - Analyze the selected region

4. View the results in the `*spaCy Analysis*` buffer

## Architecture

The system consists of two main components:

1. **Python spaCy Server** - A WebSocket server that receives text and processes it with spaCy
2. **Emacs spaCy Mode** - A minor mode that connects to the server and provides commands for text analysis

The communication happens over WebSockets, with JSON messages containing the text to analyze and the analysis results.

## Development

### Build and test

```bash
# Run tests
make test

# Build packages
make build

# Publish packages (maintainers only)
make publish
```

## License

MIT

## Contributing

See [CONTRIBUTING.org](docs/CONTRIBUTING.org) for guidelines on how to contribute to this project.