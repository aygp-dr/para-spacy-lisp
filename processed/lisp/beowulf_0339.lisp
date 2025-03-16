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
 :text "--«Quand je dis nous voir, je veux dire nous voir lire, c’est
assommant, quelque chose insignifiante qu’on fasse, de penser que des
yeux vous voient.»"
 :tokens 25
 :processed-at "2025-03-16T02:18:14.153486"
 :entities (list
  (entity :text "--«Quand" :label "ORG" :start 0 :end 8)
 )
 :sentences (list
  (sentence :text "--«Quand je dis nous voir, je veux dire nous voir lire, c’est
assommant, quelque chose insignifiante qu’on fasse, de penser que des
yeux vous voient" :start 0 :end 148) (sentence :text "»" :start 149 :end 150)
 ))