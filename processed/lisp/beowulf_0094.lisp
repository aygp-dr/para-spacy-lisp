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
 :text "--«Ce sera le chien de Mme Sazerat», disait Françoise, sans grande
conviction, mais dans un but d’apaisement et pour que ma tante ne se
«fende pas la tête.»"
 :tokens 28
 :processed-at "2025-03-16T02:18:13.882937"
 :entities (list
  (entity :text "--«Ce" :label "ORG" :start 0 :end 5) (entity :text "Sazerat»," :label "ORG" :start 27 :end 36) (entity :text "Françoise," :label "ORG" :start 44 :end 54)
 )
 :sentences (list
  (sentence :text "--«Ce sera le chien de Mme Sazerat», disait Françoise, sans grande
conviction, mais dans un but d’apaisement et pour que ma tante ne se
«fende pas la tête" :start 0 :end 154) (sentence :text "»" :start 34 :end 35)
 ))