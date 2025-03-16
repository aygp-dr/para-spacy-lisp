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
 :text "--«Ça sent bon, ça vous prend à la tête, ça vous coupe la respiration,
ça vous fait des chatouilles, et pas mèche de savoir avec quoi c’est
fait, c’en est sorcier, c’est de la rouerie, c’est du miracle
(éclatant tout à fait de rire): c’en est malhonnête!» En s’arrêtant,
redressant gravement la tête, prenant une note de basse profonde qu’il
tâcha de rendre harmonieuse, il ajouta: «et c’est si loyal!»"
 :tokens 70
 :processed-at "2025-03-16T02:18:14.437045"
 :entities (list
  (entity :text "--«Ça" :label "ORG" :start 0 :end 5)
 )
 :sentences (list
  (sentence :text "--«Ça sent bon, ça vous prend à la tête, ça vous coupe la respiration,
ça vous fait des chatouilles, et pas mèche de savoir avec quoi c’est
fait, c’en est sorcier, c’est de la rouerie, c’est du miracle
(éclatant tout à fait de rire): c’en est malhonnête!» En s’arrêtant,
redressant gravement la tête, prenant une note de basse profonde qu’il
tâcha de rendre harmonieuse, il ajouta: «et c’est si loyal!»" :start 0 :end 402)
 ))