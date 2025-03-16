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
 :text "--M. de Forcheville était en train de me dire du mal de toi, dit Mme
Cottard à son mari quand il rentra au salon."
 :tokens 24
 :processed-at "2025-03-16T02:18:14.480416"
 :entities (list
  (entity :text "--M." :label "ORG" :start 0 :end 4) (entity :text "Forcheville" :label "ORG" :start 8 :end 19) (entity :text "Cottard" :label "ORG" :start 69 :end 76)
 )
 :sentences (list
  (sentence :text "--M" :start 0 :end 3) (sentence :text "de Forcheville était en train de me dire du mal de toi, dit Mme
Cottard à son mari quand il rentra au salon" :start 4 :end 112)
 ))