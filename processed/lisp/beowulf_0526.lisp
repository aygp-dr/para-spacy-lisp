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
 :text "--«La tête qu’il a fait?» demanda avec violence le docteur Cottard qui,
étant allé un instant voir un malade, revenait chercher sa femme et ne
savait pas de qui on parlait."
 :tokens 31
 :processed-at "2025-03-16T02:18:14.347051"
 :entities (list
  (entity :text "--«La" :label "ORG" :start 0 :end 5) (entity :text "Cottard" :label "ORG" :start 59 :end 66)
 )
 :sentences (list
  (sentence :text "--«La tête qu’il a fait?» demanda avec violence le docteur Cottard qui,
étant allé un instant voir un malade, revenait chercher sa femme et ne
savait pas de qui on parlait" :start 0 :end 171)
 ))