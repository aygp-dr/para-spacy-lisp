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
 :text "--«Je soigne en ce moment une baronne, la baronne Putbus, les Putbus
étaient aux Croisades, n’est-ce pas? Ils ont, en Poméranie, un lac qui
est grand comme dix fois la place de la Concorde. Je la soigne pour de
l’arthrite sèche, c’est une femme charmante. Elle connaît du reste Mme
Verdurin, je crois."
 :tokens 53
 :processed-at "2025-03-16T02:18:14.482103"
 :entities (list
  (entity :text "--«Je" :label "ORG" :start 0 :end 5) (entity :text "Putbus," :label "ORG" :start 50 :end 57) (entity :text "Putbus" :label "ORG" :start 62 :end 68) (entity :text "Croisades," :label "ORG" :start 81 :end 91) (entity :text "Poméranie," :label "ORG" :start 118 :end 128) (entity :text "Concorde." :label "ORG" :start 180 :end 189) (entity :text "Elle" :label "ORG" :start 256 :end 260) (entity :text "Verdurin," :label "ORG" :start 282 :end 291)
 )
 :sentences (list
  (sentence :text "--«Je soigne en ce moment une baronne, la baronne Putbus, les Putbus
étaient aux Croisades, n’est-ce pas? Ils ont, en Poméranie, un lac qui
est grand comme dix fois la place de la Concorde" :start 0 :end 188) (sentence :text "Je la soigne pour de
l’arthrite sèche, c’est une femme charmante" :start 189 :end 254) (sentence :text "Elle connaît du reste Mme
Verdurin, je crois" :start 255 :end 300)
 ))