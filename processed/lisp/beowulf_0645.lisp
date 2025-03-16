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
 :text "--Ces de La Trémouaille que Mme Verdurin nous a montrés comme si peu
recommandables, demanda Brichot, en articulant avec force,
descendent-ils de ceux que cette bonne snob de Mme de Sévigné avouait
être heureuse de connaître parce que cela faisait bien pour ses
paysans? Il est vrai que la marquise avait une autre raison, et qui
pour elle devait primer celle-là, car gendelettre dans l’âme, elle
faisait passer la copie avant tout. Or dans le journal qu’elle
envoyait régulièrement à sa fille, c’est Mme de la Trémouaille, bien
documentée par ses grandes alliances, qui faisait la politique
étrangère."
 :tokens 98
 :processed-at "2025-03-16T02:18:14.470204"
 :entities (list
  (entity :text "--Ces" :label "ORG" :start 0 :end 5) (entity :text "Trémouaille" :label "ORG" :start 12 :end 23) (entity :text "Verdurin" :label "ORG" :start 32 :end 40) (entity :text "Brichot," :label "ORG" :start 93 :end 101) (entity :text "Sévigné" :label "ORG" :start 182 :end 189) (entity :text "Trémouaille," :label "ORG" :start 511 :end 523)
 )
 :sentences (list
  (sentence :text "--Ces de La Trémouaille que Mme Verdurin nous a montrés comme si peu
recommandables, demanda Brichot, en articulant avec force,
descendent-ils de ceux que cette bonne snob de Mme de Sévigné avouait
être heureuse de connaître parce que cela faisait bien pour ses
paysans? Il est vrai que la marquise avait une autre raison, et qui
pour elle devait primer celle-là, car gendelettre dans l’âme, elle
faisait passer la copie avant tout" :start 0 :end 431) (sentence :text "Or dans le journal qu’elle
envoyait régulièrement à sa fille, c’est Mme de la Trémouaille, bien
documentée par ses grandes alliances, qui faisait la politique
étrangère" :start 432 :end 601)
 ))