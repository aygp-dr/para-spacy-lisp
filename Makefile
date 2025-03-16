# Makefile for para-spacy-lisp

.PHONY: all setup run clean data

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

# Clean up
clean:
	rm -rf venv
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete