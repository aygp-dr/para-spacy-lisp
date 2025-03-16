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
 :text "--«Comment, mais je croyais que je vous reconduisais», s’écria Swann,
disant sans dissimulation, les mots nécessaires, car la portière était
ouverte, les secondes étaient comptées, et il ne pouvait rentrer sans
elle dans l’état où il était."
 :tokens 37
 :processed-at "2025-03-16T02:18:14.557689"
 :entities (list
  (entity :text "--«Comment," :label "ORG" :start 0 :end 11) (entity :text "Swann," :label "ORG" :start 63 :end 69)
 )
 :sentences (list
  (sentence :text "--«Comment, mais je croyais que je vous reconduisais», s’écria Swann,
disant sans dissimulation, les mots nécessaires, car la portière était
ouverte, les secondes étaient comptées, et il ne pouvait rentrer sans
elle dans l’état où il était" :start 0 :end 239)
 ))