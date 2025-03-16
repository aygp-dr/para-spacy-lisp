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
 :text "--«Mais je croyais que vous le saviez, Léonie, disait maman. Je pensais
que Françoise nous avait vus sortir par la petite porte du potager.»"
 :tokens 24
 :processed-at "2025-03-16T02:18:14.099099"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Léonie," :label "ORG" :start 39 :end 46) (entity :text "Françoise" :label "ORG" :start 76 :end 85)
 )
 :sentences (list
  (sentence :text "--«Mais je croyais que vous le saviez, Léonie, disait maman" :start 0 :end 59) (sentence :text "Je pensais
que Françoise nous avait vus sortir par la petite porte du potager" :start 60 :end 138) (sentence :text "»" :start 139 :end 140)
 ))