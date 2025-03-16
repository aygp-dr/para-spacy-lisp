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
 :text "--«Vous voulez dire qu’elle est du dernier bien avec lui, qu’elle lui a
fait voir l’heure du berger», dit le docteur, expérimentant avec
prudence le sens de ces expressions."
 :tokens 29
 :processed-at "2025-03-16T02:18:14.350156"
 :entities (list
  (entity :text "--«Vous" :label "ORG" :start 0 :end 7)
 )
 :sentences (list
  (sentence :text "--«Vous voulez dire qu’elle est du dernier bien avec lui, qu’elle lui a
fait voir l’heure du berger», dit le docteur, expérimentant avec
prudence le sens de ces expressions" :start 0 :end 172)
 ))