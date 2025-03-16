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
 :text "--Mais ce pourrait être un parent, reprit Swann, cela serait assez
triste, mais enfin un homme de génie peut être le cousin d’une vieille
bête. Si cela était, j’avoue qu’il n’y a pas de supplice que je ne
m’imposerais pour que la vieille bête me présentât à l’auteur de la
sonate: d’abord le supplice de fréquenter la vieille bête, et qui doit
être affreux."
 :tokens 64
 :processed-at "2025-03-16T02:18:14.294768"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Swann," :label "ORG" :start 42 :end 48)
 )
 :sentences (list
  (sentence :text "--Mais ce pourrait être un parent, reprit Swann, cela serait assez
triste, mais enfin un homme de génie peut être le cousin d’une vieille
bête" :start 0 :end 142) (sentence :text "Si cela était, j’avoue qu’il n’y a pas de supplice que je ne
m’imposerais pour que la vieille bête me présentât à l’auteur de la
sonate: d’abord le supplice de fréquenter la vieille bête, et qui doit
être affreux" :start 143 :end 356)
 ))