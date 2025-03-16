# Makefile for para-spacy-lisp

.PHONY: all setup run clean data paragraphs process

all: setup

setup:
	./setup.sh

run:
	./run_server.sh

# Download data files
data/pg2650.txt:
	mkdir -p data
	curl -o data/pg2650.txt https://www.gutenberg.org/cache/epub/2650/pg2650.txt

data: data/pg2650.txt

# Parse book into paragraphs
paragraphs: data/pg2650.txt
	python3 scripts/paragraph_parser.py data/pg2650.txt -o data/paragraphs -p beowulf

# Process paragraphs to JSON and Lisp representations
processed/json/beowulf_0001.json processed/lisp/beowulf_0001.lisp: data/paragraphs/beowulf_0001.txt scripts/process_paragraphs.py
	python3 scripts/process_paragraphs.py data/paragraphs -o processed/json -l processed/lisp

process: paragraphs processed/json/beowulf_0001.json

all: process

# Clean up
clean:
	rm -rf venv data/paragraphs processed
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete