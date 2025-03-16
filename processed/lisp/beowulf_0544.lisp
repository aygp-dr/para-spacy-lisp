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
 :text "Mais l’indifférence que Swann jouait facilement quand Rémi ne pouvait
plus rien changer à la réponse qu’il apportait tomba, quand il le vit
essayer de le faire renoncer à son espoir et à sa recherche:"
 :tokens 35
 :processed-at "2025-03-16T02:18:14.362974"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 24 :end 29) (entity :text "Rémi" :label "ORG" :start 54 :end 58)
 )
 :sentences (list
  (sentence :text "Mais l’indifférence que Swann jouait facilement quand Rémi ne pouvait
plus rien changer à la réponse qu’il apportait tomba, quand il le vit
essayer de le faire renoncer à son espoir et à sa recherche:" :start 0 :end 200)
 ))