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
 :text "--Oh! Charles, mais tu ne vois pas que tu me tues, c’est tout ce qu’il
y a de plus ancien. Je n’y avais jamais repensé, on dirait que tu veux
absolument me redonner ces idées-là. Tu seras bien avancé, dit-elle,
avec une sottise inconsciente et une méchanceté voulue."
 :tokens 48
 :processed-at "2025-03-16T02:18:14.783714"
 :entities (list
  (entity :text "--Oh!" :label "ORG" :start 0 :end 5) (entity :text "Charles," :label "ORG" :start 6 :end 14)
 )
 :sentences (list
  (sentence :text "--Oh! Charles, mais tu ne vois pas que tu me tues, c’est tout ce qu’il
y a de plus ancien" :start 0 :end 89) (sentence :text "Je n’y avais jamais repensé, on dirait que tu veux
absolument me redonner ces idées-là" :start 90 :end 177) (sentence :text "Tu seras bien avancé, dit-elle,
avec une sottise inconsciente et une méchanceté voulue" :start 178 :end 265)
 ))