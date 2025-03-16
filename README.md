# para-spacy-lisp

A bridge between Emacs and spaCy NLP processing via WebSockets.

## Overview

This project provides an Emacs minor mode that connects to a Python spaCy server via WebSockets to analyze text. It allows sending paragraphs or regions of text directly from Emacs to spaCy for natural language processing.

## Features

- Send paragraphs or regions from Emacs to spaCy for analysis
- View named entities, sentences, and other NLP results
- Simple WebSocket communication between Emacs and Python
- Easy to extend with additional NLP capabilities

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/para-spacy-lisp.git
   cd para-spacy-lisp
   ```

2. Set up the Python environment:
   ```
   ./setup.sh
   ```

3. Add the Emacs Lisp files to your load path:
   ```elisp
   (add-to-list 'load-path "~/path/to/para-spacy-lisp/elisp")
   (require 'spacy-mode)
   ```

## Usage

1. Start the spaCy server:
   ```
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

## License

MIT
