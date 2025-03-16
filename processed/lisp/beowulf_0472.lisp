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
 :text "--Je connais bien quelqu’un qui s’appelle Vinteuil, dit Swann, en
pensant au professeur de piano des sœurs de ma grand’mère."
 :tokens 20
 :processed-at "2025-03-16T02:18:14.291752"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Vinteuil," :label "ORG" :start 42 :end 51) (entity :text "Swann," :label "ORG" :start 56 :end 62)
 )
 :sentences (list
  (sentence :text "--Je connais bien quelqu’un qui s’appelle Vinteuil, dit Swann, en
pensant au professeur de piano des sœurs de ma grand’mère" :start 0 :end 123)
 ))