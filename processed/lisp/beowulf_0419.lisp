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
 :text "Les Verdurin avaient eu à dîner, le jour où Swann y fit ses débuts, le
docteur et Mme Cottard, le jeune pianiste et sa tante, et le peintre
qui avait alors leur faveur, auxquels s’étaient joints dans la soirée
quelques autres fidèles."
 :tokens 42
 :processed-at "2025-03-16T02:18:14.237379"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 4 :end 12) (entity :text "Swann" :label "ORG" :start 44 :end 49) (entity :text "Cottard," :label "ORG" :start 86 :end 94)
 )
 :sentences (list
  (sentence :text "Les Verdurin avaient eu à dîner, le jour où Swann y fit ses débuts, le
docteur et Mme Cottard, le jeune pianiste et sa tante, et le peintre
qui avait alors leur faveur, auxquels s’étaient joints dans la soirée
quelques autres fidèles" :start 0 :end 233)
 ))