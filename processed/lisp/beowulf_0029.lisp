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
 :text "Un jour qu’il était venu nous voir à Paris après dîner en s’excusant
d’être en habit, Françoise ayant, après son départ, dit tenir du
cocher qu’il avait dîné «chez une princesse»,--«Oui, chez une princesse
du demi-monde!» avait répondu ma tante en haussant les épaules sans
lever les yeux de sur son tricot, avec une ironie sereine."
 :tokens 56
 :processed-at "2025-03-16T02:18:13.801435"
 :entities (list
  (entity :text "Paris" :label "ORG" :start 37 :end 42) (entity :text "Françoise" :label "ORG" :start 86 :end 95)
 )
 :sentences (list
  (sentence :text "Un jour qu’il était venu nous voir à Paris après dîner en s’excusant
d’être en habit, Françoise ayant, après son départ, dit tenir du
cocher qu’il avait dîné «chez une princesse»,--«Oui, chez une princesse
du demi-monde!» avait répondu ma tante en haussant les épaules sans
lever les yeux de sur son tricot, avec une ironie sereine" :start 0 :end 331)
 ))