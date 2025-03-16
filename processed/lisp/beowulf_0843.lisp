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
 :text "--Oriane, ne te fâche pas, reprit Mme de Gallardon qui ne pouvait
jamais s’empêcher de sacrifier ses plus grandes espérances sociales et
d’éblouir un jour le monde, au plaisir obscur, immédiat et privé, de
dire quelque chose de désagréable, il y a des gens qui prétendent que
ce M. Swann, c’est quelqu’un qu’on ne peut pas recevoir chez soi,
est-ce vrai?"
 :tokens 61
 :processed-at "2025-03-16T02:18:14.681539"
 :entities (list
  (entity :text "--Oriane," :label "ORG" :start 0 :end 9) (entity :text "Gallardon" :label "ORG" :start 41 :end 50) (entity :text "Swann," :label "ORG" :start 282 :end 288)
 )
 :sentences (list
  (sentence :text "--Oriane, ne te fâche pas, reprit Mme de Gallardon qui ne pouvait
jamais s’empêcher de sacrifier ses plus grandes espérances sociales et
d’éblouir un jour le monde, au plaisir obscur, immédiat et privé, de
dire quelque chose de désagréable, il y a des gens qui prétendent que
ce M" :start 0 :end 280) (sentence :text "Swann, c’est quelqu’un qu’on ne peut pas recevoir chez soi,
est-ce vrai?" :start 281 :end 354)
 ))