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
 :text "Et elle rit encore. Cependant tout en redressant sa taille et
refroidissant sa mine, inquiète encore pourtant de l’état du prince,
Mme de Gallardon dit à sa cousine:"
 :tokens 28
 :processed-at "2025-03-16T02:18:14.669838"
 :entities (list
  (entity :text "Cependant" :label "ORG" :start 20 :end 29) (entity :text "Gallardon" :label "ORG" :start 138 :end 147)
 )
 :sentences (list
  (sentence :text "Et elle rit encore" :start 0 :end 18) (sentence :text "Cependant tout en redressant sa taille et
refroidissant sa mine, inquiète encore pourtant de l’état du prince,
Mme de Gallardon dit à sa cousine:" :start 19 :end 165)
 ))