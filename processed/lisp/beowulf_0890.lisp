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
 :text "--Oh! oui, la vie est une chose affreuse. Il faut que nous nous
voyions, ma chère amie. Ce qu’il y a de gentil avec vous, c’est que
vous n’êtes pas gaie. On pourrait passer une soirée ensemble."
 :tokens 37
 :processed-at "2025-03-16T02:18:14.722084"
 :entities (list
  (entity :text "--Oh!" :label "ORG" :start 0 :end 5)
 )
 :sentences (list
  (sentence :text "--Oh! oui, la vie est une chose affreuse" :start 0 :end 40) (sentence :text "Il faut que nous nous
voyions, ma chère amie" :start 41 :end 86) (sentence :text "Ce qu’il y a de gentil avec vous, c’est que
vous n’êtes pas gaie" :start 87 :end 152) (sentence :text "On pourrait passer une soirée ensemble" :start 153 :end 192)
 ))