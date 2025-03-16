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
 :text "Et quand il était tenté de regretter que depuis des mois il ne fît
plus que voir Odette, il se disait qu’il était raisonnable de donner
beaucoup de son temps à un chef-d’œuvre inestimable, coulé pour une
fois dans une matière différente et particulièrement savoureuse, en un
exemplaire rarissime qu’il contemplait tantôt avec l’humilité, la
spiritualité et le désintéressement d’un artiste, tantôt avec
l’orgueil, l’égoïsme et la sensualité d’un collectionneur."
 :tokens 70
 :processed-at "2025-03-16T02:18:14.339986"
 :entities (list
  (entity :text "Odette," :label "ORG" :start 81 :end 88)
 )
 :sentences (list
  (sentence :text "Et quand il était tenté de regretter que depuis des mois il ne fît
plus que voir Odette, il se disait qu’il était raisonnable de donner
beaucoup de son temps à un chef-d’œuvre inestimable, coulé pour une
fois dans une matière différente et particulièrement savoureuse, en un
exemplaire rarissime qu’il contemplait tantôt avec l’humilité, la
spiritualité et le désintéressement d’un artiste, tantôt avec
l’orgueil, l’égoïsme et la sensualité d’un collectionneur" :start 0 :end 460)
 ))