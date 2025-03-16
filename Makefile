# Makefile for para-spacy-lisp

.PHONY: all setup run clean data paragraphs process test test-python test-elisp build-python build-elisp publish publish-python publish-elisp

all: setup process

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

# Run tests
test: test-python test-elisp

test-python:
	python -m pytest tests/ -v

test-elisp:
	emacs --batch \
		--eval "(add-to-list 'load-path \"$(PWD)/elisp\")" \
		--load "$(PWD)/tests/test_elisp.el" \
		--funcall ert-run-tests-batch-and-exit

# Build packages
build: build-python build-elisp

build-python:
	python -m build

build-elisp:
	mkdir -p dist
	tar -cf dist/spacy-mode.tar elisp/spacy-mode.el elisp/tramp-mkdirp.el

# Publish packages
publish: publish-python publish-elisp

publish-python:
	@echo "Publishing Python package to PyPI..."
	python -m twine upload dist/*.whl dist/*.tar.gz

publish-elisp:
	@echo "Publishing Emacs package to MELPA..."
	@echo "Note: This requires a PR to the MELPA repository"
	@echo "See https://github.com/melpa/melpa#contributing-a-new-recipe"
	@if [ ! -f "recipes/spacy-mode" ]; then \
		mkdir -p recipes; \
		echo '(spacy-mode :fetcher github :repo "defrecord/para-spacy-lisp" :files ("elisp/*.el"))' > recipes/spacy-mode; \
		echo "Recipe created at recipes/spacy-mode"; \
	fi

# Clean up
clean:
	rm -rf venv data/paragraphs processed build dist *.egg-info
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete