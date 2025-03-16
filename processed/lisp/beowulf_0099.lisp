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
 :text "--«Comment, Françoise, encore des asperges! mais c’est une vraie
maladie d’asperges que vous avez cette année, vous allez en fatiguer
nos Parisiens!»"
 :tokens 22
 :processed-at "2025-03-16T02:18:13.888868"
 :entities (list
  (entity :text "--«Comment," :label "ORG" :start 0 :end 11) (entity :text "Françoise," :label "ORG" :start 12 :end 22) (entity :text "Parisiens!»" :label "ORG" :start 138 :end 149)
 )
 :sentences (list
  (sentence :text "--«Comment, Françoise, encore des asperges! mais c’est une vraie
maladie d’asperges que vous avez cette année, vous allez en fatiguer
nos Parisiens!»" :start 0 :end 149)
 ))