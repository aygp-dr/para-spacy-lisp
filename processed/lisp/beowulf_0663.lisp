;; spaCy-lisp: 1.0.0
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

(text-analysis
 :text "Mais le docteur Cottard, qui n’avait jamais entendu ce calembour, ne
le comprit pas et crut à une erreur de M. de Forcheville. Il
s’approcha vivement pour la rectifier:"
 :tokens 29
 :processed-at "2025-03-16T02:18:14.487754"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Cottard," :label "ORG" :start 16 :end 24) (entity :text "Forcheville." :label "ORG" :start 114 :end 126)
 )
 :sentences (list
  (sentence :text "Mais le docteur Cottard, qui n’avait jamais entendu ce calembour, ne
le comprit pas et crut à une erreur de M" :start 0 :end 109) (sentence :text "de Forcheville" :start 110 :end 125) (sentence :text "Il
s’approcha vivement pour la rectifier:" :start 126 :end 168)
 ))