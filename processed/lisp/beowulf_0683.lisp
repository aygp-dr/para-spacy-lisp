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
 :text "--Mais je te l’ai dit, répondit M. Verdurin, c’est le raté, le petit
individu envieux de tout ce qui est un peu grand."
 :tokens 23
 :processed-at "2025-03-16T02:18:14.507546"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Verdurin," :label "ORG" :start 35 :end 44)
 )
 :sentences (list
  (sentence :text "--Mais je te l’ai dit, répondit M" :start 0 :end 33) (sentence :text "Verdurin, c’est le raté, le petit
individu envieux de tout ce qui est un peu grand" :start 34 :end 117)
 ))