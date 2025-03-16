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
 :text "--Et puis il est intéressant, on voit qu’il connaît du monde. Dame, ça
sait tant de choses, les médecins."
 :tokens 19
 :processed-at "2025-03-16T02:18:14.484214"
 :entities (list
  (entity :text "--Et" :label "ORG" :start 0 :end 4) (entity :text "Dame," :label "ORG" :start 62 :end 67)
 )
 :sentences (list
  (sentence :text "--Et puis il est intéressant, on voit qu’il connaît du monde" :start 0 :end 60) (sentence :text "Dame, ça
sait tant de choses, les médecins" :start 61 :end 104)
 ))