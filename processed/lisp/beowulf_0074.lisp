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
 :text "--«Il n’y aurait rien d’étonnant qu’elles viennent de chez M. le Curé»,
disait Françoise."
 :tokens 14
 :processed-at "2025-03-16T02:18:13.865437"
 :entities (list
  (entity :text "--«Il" :label "ORG" :start 0 :end 5) (entity :text "Curé»," :label "ORG" :start 65 :end 71) (entity :text "Françoise." :label "ORG" :start 79 :end 89)
 )
 :sentences (list
  (sentence :text "--«Il n’y aurait rien d’étonnant qu’elles viennent de chez M" :start 0 :end 60) (sentence :text "le Curé»,
disait Françoise" :start 61 :end 88)
 ))