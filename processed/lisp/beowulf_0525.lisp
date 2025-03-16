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
 :text "--«As-tu vu la tête qu’il a fait quand il s’est aperçu qu’elle n’était
pas là? dit M. Verdurin à sa femme, je crois qu’on peut dire qu’il est
pincé!»"
 :tokens 29
 :processed-at "2025-03-16T02:18:14.346297"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 86 :end 94)
 )
 :sentences (list
  (sentence :text "--«As-tu vu la tête qu’il a fait quand il s’est aperçu qu’elle n’était
pas là? dit M" :start 0 :end 84) (sentence :text "Verdurin à sa femme, je crois qu’on peut dire qu’il est
pincé!»" :start 85 :end 149)
 ))