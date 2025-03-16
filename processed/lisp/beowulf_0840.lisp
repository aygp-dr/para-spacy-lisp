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
 :text "--Je sais qu’il est converti, et même déjà ses parents et ses
grands-parents. Mais on dit que les convertis restent plus attachés à
leur religion que les autres, que c’est une frime, est-ce vrai?"
 :tokens 34
 :processed-at "2025-03-16T02:18:14.678828"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Mais" :label "ORG" :start 78 :end 82)
 )
 :sentences (list
  (sentence :text "--Je sais qu’il est converti, et même déjà ses parents et ses
grands-parents" :start 0 :end 76) (sentence :text "Mais on dit que les convertis restent plus attachés à
leur religion que les autres, que c’est une frime, est-ce vrai?" :start 77 :end 195)
 ))