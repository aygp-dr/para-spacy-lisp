#!/usr/bin/env python3
"""
Paragraph Parser - Chunks text files by paragraphs.
Specifically designed for Project Gutenberg texts.
"""

import os
import argparse
import re
from pathlib import Path


def load_text_file(file_path):
    """Load a text file and return its contents."""
    with open(file_path, 'r', encoding='utf-8') as file:
        return file.read()


def split_into_paragraphs(text):
    """
    Split text into paragraphs based on blank lines.
    A paragraph is defined as text separated by one or more blank lines.
    """
    # Replace windows-style line endings
    text = text.replace('\r\n', '\n')
    
    # Strip Project Gutenberg header if present
    match = re.search(r'\*\*\* START OF (THIS|THE) PROJECT GUTENBERG.*?\*\*\*', text, re.DOTALL)
    if match:
        text = text[match.end():]
    
    # Strip Project Gutenberg footer if present
    match = re.search(r'\*\*\* END OF (THIS|THE) PROJECT GUTENBERG.*?$', text, re.DOTALL)
    if match:
        text = text[:match.start()]
    
    # Split text by blank lines (one or more consecutive newlines)
    paragraphs = re.split(r'\n\s*\n', text)
    
    # Remove empty paragraphs and strip whitespace
    paragraphs = [p.strip() for p in paragraphs if p.strip()]
    
    return paragraphs


def save_paragraphs(paragraphs, output_dir, base_filename, file_extension='.txt'):
    """Save paragraphs to separate files in the output directory."""
    os.makedirs(output_dir, exist_ok=True)
    
    # Calculate padding width based on number of paragraphs
    padding = len(str(len(paragraphs)))
    
    for i, para in enumerate(paragraphs, 1):
        filename = f"{base_filename}_{i:0{padding}d}{file_extension}"
        output_path = os.path.join(output_dir, filename)
        
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(para)
    
    return len(paragraphs)


def main():
    parser = argparse.ArgumentParser(description='Split text file into paragraphs.')
    parser.add_argument('input_file', help='Path to the input text file')
    parser.add_argument('-o', '--output-dir', default='paragraphs',
                        help='Directory to save paragraph files (default: paragraphs)')
    parser.add_argument('-p', '--prefix', help='Prefix for output files')
    
    args = parser.parse_args()
    
    # Load and process the text
    text = load_text_file(args.input_file)
    paragraphs = split_into_paragraphs(text)
    
    # Determine output filename prefix
    if args.prefix:
        prefix = args.prefix
    else:
        prefix = Path(args.input_file).stem
    
    # Save paragraphs
    count = save_paragraphs(paragraphs, args.output_dir, prefix)
    
    print(f"Processed {args.input_file}")
    print(f"Found {count} paragraphs")
    print(f"Saved to {os.path.abspath(args.output_dir)}")


if __name__ == '__main__':
    main()