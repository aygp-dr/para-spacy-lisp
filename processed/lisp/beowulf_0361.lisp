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
 :text "Au sortir de ce parc, la Vivonne redevient courante. Que de fois j’ai
vu, j’ai désiré imiter quand je serais libre de vivre à ma guise, un
rameur, qui, ayant lâché l’aviron, s’était couché à plat sur le dos,
la tête en bas, au fond de sa barque, et la laissant flotter à la
dérive, ne pouvant voir que le ciel qui filait lentement au-dessus de
lui, portait sur son visage l’avant-goût du bonheur et de la paix."
 :tokens 78
 :processed-at "2025-03-16T02:18:14.175668"
 :entities (list
  (entity :text "Vivonne" :label "ORG" :start 25 :end 32)
 )
 :sentences (list
  (sentence :text "Au sortir de ce parc, la Vivonne redevient courante" :start 0 :end 51) (sentence :text "Que de fois j’ai
vu, j’ai désiré imiter quand je serais libre de vivre à ma guise, un
rameur, qui, ayant lâché l’aviron, s’était couché à plat sur le dos,
la tête en bas, au fond de sa barque, et la laissant flotter à la
dérive, ne pouvant voir que le ciel qui filait lentement au-dessus de
lui, portait sur son visage l’avant-goût du bonheur et de la paix" :start 52 :end 409)
 ))