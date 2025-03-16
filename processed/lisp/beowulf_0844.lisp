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
 :text "--Mais... tu dois bien savoir que c’est vrai, répondit la princesse des
Laumes, puisque tu l’as invité cinquante fois et qu’il n’est jamais
venu."
 :tokens 24
 :processed-at "2025-03-16T02:18:14.682473"
 :entities (list
  (entity :text "--Mais..." :label "ORG" :start 0 :end 9) (entity :text "Laumes," :label "ORG" :start 72 :end 79)
 )
 :sentences (list
  (sentence :text "--Mais" :start 0 :end 6) (sentence :text "tu dois bien savoir que c’est vrai, répondit la princesse des
Laumes, puisque tu l’as invité cinquante fois et qu’il n’est jamais
venu" :start 9 :end 144)
 ))