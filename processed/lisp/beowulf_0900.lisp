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
 :text "--Vous connaissez quelqu’un rue La Pérouse? demanda Swann d’un air
agité."
 :tokens 11
 :processed-at "2025-03-16T02:18:14.734776"
 :entities (list
  (entity :text "--Vous" :label "ORG" :start 0 :end 6) (entity :text "Pérouse?" :label "ORG" :start 35 :end 43) (entity :text "Swann" :label "ORG" :start 52 :end 57)
 )
 :sentences (list
  (sentence :text "--Vous connaissez quelqu’un rue La Pérouse? demanda Swann d’un air
agité" :start 0 :end 72)
 ))