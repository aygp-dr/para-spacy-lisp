#!/usr/bin/env python3
"""
Process paragraph files and generate Lisp representations of the NLP analysis.
"""

import os
import json
import glob
import click
from pathlib import Path
from pydantic import BaseModel, Field
from typing import List, Dict, Any, Optional
from datetime import datetime


class EntityModel(BaseModel):
    """Model for named entities in text."""
    text: str
    label: str
    start: int
    end: int


class SentenceModel(BaseModel):
    """Model for sentences in text."""
    text: str
    start: int
    end: int


class TextAnalysis(BaseModel):
    """Model for the complete text analysis."""
    text: str
    entities: List[EntityModel]
    sentences: List[SentenceModel]
    tokens: int
    processed_at: datetime = Field(default_factory=datetime.now)


def generate_lisp(analysis: TextAnalysis) -> str:
    """
    Generate Lisp representation of the analysis.
    """
    lisp_entities = []
    for entity in analysis.entities:
        lisp_entity = f'(entity :text "{entity.text}" :label "{entity.label}" :start {entity.start} :end {entity.end})'
        lisp_entities.append(lisp_entity)
    
    lisp_sentences = []
    for sentence in analysis.sentences:
        lisp_sentence = f'(sentence :text "{sentence.text}" :start {sentence.start} :end {sentence.end})'
        lisp_sentences.append(lisp_sentence)
    
    # Create a schema description at the top of the file
    schema = f''';; spaCy-lisp: 1.0.0
;; info:
;;   title: Text Analysis Schema
;;   description: Schema for NLP analysis of paragraphs using spaCy
;;   version: 1.0.0
;; components:
;;   schemas:
;;     TextAnalysis:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Original text content
;;         tokens:
;;           type: integer
;;           description: Number of tokens in the text
;;         processed-at:
;;           type: string
;;           format: date-time
;;           description: Timestamp of processing
;;         entities:
;;           type: array
;;           items:
;;             $ref: '#/components/schemas/Entity'
;;           description: Named entities found in text
;;         sentences:
;;           type: array
;;           items:
;;             $ref: '#/components/schemas/Sentence'
;;           description: Sentences in the text
;;     Entity:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Text of the entity
;;         label:
;;           type: string
;;           description: Entity type label
;;         start:
;;           type: integer
;;           description: Start character position
;;         end:
;;           type: integer
;;           description: End character position
;;     Sentence:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Text of the sentence
;;         start:
;;           type: integer
;;           description: Start character position
;;         end:
;;           type: integer
;;           description: End character position

'''
    
    lisp_output = f'''{schema}(text-analysis
 :text "{analysis.text}"
 :tokens {analysis.tokens}
 :processed-at "{analysis.processed_at.isoformat()}"
 :entities (list
  {" ".join(lisp_entities)}
 )
 :sentences (list
  {" ".join(lisp_sentences)}
 ))'''
    
    return lisp_output


def simulate_nlp_analysis(text: str) -> TextAnalysis:
    """
    Simulate NLP analysis for demonstration purposes.
    In a real implementation, this would use spaCy.
    """
    # Mock entities extraction
    entities = []
    words = text.split()
    current_pos = 0
    
    for word in words:
        if word.istitle() and len(word) > 3 and not word.startswith(("The", "A", "An", "In")):
            start = text.find(word, current_pos)
            if start >= 0:
                end = start + len(word)
                entities.append(EntityModel(
                    text=word,
                    label="PERSON" if word.endswith(("ing", "ed")) else "ORG",
                    start=start,
                    end=end
                ))
                current_pos = end
    
    # Mock sentence splitting
    sentences = []
    for sentence in text.split('.'):
        if sentence.strip():
            start = text.find(sentence)
            if start >= 0:
                end = start + len(sentence)
                sentences.append(SentenceModel(
                    text=sentence.strip(),
                    start=start,
                    end=end
                ))
    
    return TextAnalysis(
        text=text,
        entities=entities,
        sentences=sentences,
        tokens=len(words)
    )


def process_paragraph_file(input_file: Path, output_dir: Path, lisp_dir: Path) -> None:
    """
    Process a single paragraph file and generate JSON and Lisp outputs.
    """
    # Create output directories
    os.makedirs(output_dir, exist_ok=True)
    os.makedirs(lisp_dir, exist_ok=True)
    
    # Read the input file
    with open(input_file, 'r', encoding='utf-8') as f:
        text = f.read()
    
    # Process the text
    analysis = simulate_nlp_analysis(text)
    
    # Generate output filenames
    stem = input_file.stem
    json_output_path = output_dir / f"{stem}.json"
    lisp_output_path = lisp_dir / f"{stem}.lisp"
    
    # Write JSON output
    with open(json_output_path, 'w', encoding='utf-8') as f:
        f.write(analysis.model_dump_json(indent=2))
    
    # Write Lisp output
    with open(lisp_output_path, 'w', encoding='utf-8') as f:
        f.write(generate_lisp(analysis))
    
    return json_output_path, lisp_output_path


@click.command()
@click.argument('input_dir', type=click.Path(exists=True, file_okay=False, dir_okay=True, path_type=Path))
@click.option('--output-dir', '-o', type=click.Path(file_okay=False, dir_okay=True, path_type=Path), 
              default=Path('processed/json'), help='Directory for JSON output')
@click.option('--lisp-dir', '-l', type=click.Path(file_okay=False, dir_okay=True, path_type=Path), 
              default=Path('processed/lisp'), help='Directory for Lisp output')
@click.option('--pattern', '-p', default='*.txt', help='Glob pattern for input files')
def main(input_dir: Path, output_dir: Path, lisp_dir: Path, pattern: str):
    """
    Process paragraph files from INPUT_DIR and generate JSON and Lisp representations.
    
    Files matching the pattern in INPUT_DIR will be processed with NLP analysis,
    and the results will be saved as JSON in OUTPUT_DIR and as Lisp in LISP_DIR.
    """
    # Find all paragraph files
    input_files = list(input_dir.glob(pattern))
    input_files.sort()  # Process in order
    
    if not input_files:
        click.echo(f"No files found matching pattern {pattern} in {input_dir}")
        return
    
    click.echo(f"Found {len(input_files)} files to process")
    
    # Process each file
    for i, input_file in enumerate(input_files, 1):
        click.echo(f"Processing {i}/{len(input_files)}: {input_file.name}")
        json_path, lisp_path = process_paragraph_file(input_file, output_dir, lisp_dir)
        click.echo(f"  - JSON: {json_path}")
        click.echo(f"  - Lisp: {lisp_path}")
    
    click.echo("\nProcessing complete!")
    click.echo(f"JSON files saved to: {output_dir.absolute()}")
    click.echo(f"Lisp files saved to: {lisp_dir.absolute()}")


if __name__ == '__main__':
    main()