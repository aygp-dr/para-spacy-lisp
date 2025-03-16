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
 :text "--«Il ne faudra aucune lumière et qu’il joue la sonate Clair de lune
dans l’obscurité pour mieux voir s’éclairer les choses.»"
 :tokens 21
 :processed-at "2025-03-16T02:18:14.552012"
 :entities (list
  (entity :text "--«Il" :label "ORG" :start 0 :end 5) (entity :text "Clair" :label "ORG" :start 55 :end 60)
 )
 :sentences (list
  (sentence :text "--«Il ne faudra aucune lumière et qu’il joue la sonate Clair de lune
dans l’obscurité pour mieux voir s’éclairer les choses" :start 0 :end 123) (sentence :text "»" :start 124 :end 125)
 ))