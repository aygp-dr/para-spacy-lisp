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
 :text "--Tout dépend de ce que vous appelez intelligence, dit Forcheville qui
voulait briller à son tour. Voyons, Swann, qu’entendez-vous par
intelligence?"
 :tokens 21
 :processed-at "2025-03-16T02:18:14.461665"
 :entities (list
  (entity :text "--Tout" :label "ORG" :start 0 :end 6) (entity :text "Forcheville" :label "ORG" :start 55 :end 66) (entity :text "Voyons," :label "ORG" :start 99 :end 106) (entity :text "Swann," :label "ORG" :start 107 :end 113)
 )
 :sentences (list
  (sentence :text "--Tout dépend de ce que vous appelez intelligence, dit Forcheville qui
voulait briller à son tour" :start 0 :end 97) (sentence :text "Voyons, Swann, qu’entendez-vous par
intelligence?" :start 98 :end 148)
 ))