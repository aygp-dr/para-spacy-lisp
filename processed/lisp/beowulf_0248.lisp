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
 :text "Et ma tante ne répondait même pas, exhalant un soupir qui semblait
devoir être le dernier, les yeux clos, comme morte. Mais à peine
Françoise était-elle descendue que quatre coups donnés avec la plus
grande violence retentissaient dans la maison et ma tante, dressée sur
son lit, criait:"
 :tokens 48
 :processed-at "2025-03-16T02:18:14.043623"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 119 :end 123) (entity :text "Françoise" :label "ORG" :start 132 :end 141)
 )
 :sentences (list
  (sentence :text "Et ma tante ne répondait même pas, exhalant un soupir qui semblait
devoir être le dernier, les yeux clos, comme morte" :start 0 :end 117) (sentence :text "Mais à peine
Françoise était-elle descendue que quatre coups donnés avec la plus
grande violence retentissaient dans la maison et ma tante, dressée sur
son lit, criait:" :start 118 :end 287)
 ))