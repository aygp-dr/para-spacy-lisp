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
 :text "--Hé bien! je suis ravie, Charles, si mes petits fruits d’aubépine vous
plaisent. Pourquoi est-ce que vous saluez cette Cambremer, est-ce que
vous êtes aussi son voisin de campagne?"
 :tokens 29
 :processed-at "2025-03-16T02:18:14.712475"
 :entities (list
  (entity :text "--Hé" :label "ORG" :start 0 :end 4) (entity :text "Charles," :label "ORG" :start 26 :end 34) (entity :text "Pourquoi" :label "ORG" :start 82 :end 90) (entity :text "Cambremer," :label "ORG" :start 120 :end 130)
 )
 :sentences (list
  (sentence :text "--Hé bien! je suis ravie, Charles, si mes petits fruits d’aubépine vous
plaisent" :start 0 :end 80) (sentence :text "Pourquoi est-ce que vous saluez cette Cambremer, est-ce que
vous êtes aussi son voisin de campagne?" :start 81 :end 181)
 ))