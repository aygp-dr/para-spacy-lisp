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
 :text "Elle ne comprenait pas que Swann habitât l’hôtel du quai d’Orléans
que, sans oser le lui avouer, elle trouvait indigne de lui."
 :tokens 22
 :processed-at "2025-03-16T02:18:14.401909"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 27 :end 32)
 )
 :sentences (list
  (sentence :text "Elle ne comprenait pas que Swann habitât l’hôtel du quai d’Orléans
que, sans oser le lui avouer, elle trouvait indigne de lui" :start 0 :end 125)
 ))