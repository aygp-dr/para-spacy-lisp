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
 :text "Il arriva chez elle après onze heures, et, comme il s’excusait de
n’avoir pu venir plus tôt, elle se plaignit que ce fût en effet bien
tard, l’orage l’avait rendue souffrante, elle se sentait mal à la tête
et le prévint qu’elle ne le garderait pas plus d’une demi-heure, qu’à
minuit, elle le renverrait; et, peu après, elle se sentit fatiguée et
désira s’endormir."
 :tokens 64
 :processed-at "2025-03-16T02:18:14.523567"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Il arriva chez elle après onze heures, et, comme il s’excusait de
n’avoir pu venir plus tôt, elle se plaignit que ce fût en effet bien
tard, l’orage l’avait rendue souffrante, elle se sentait mal à la tête
et le prévint qu’elle ne le garderait pas plus d’une demi-heure, qu’à
minuit, elle le renverrait; et, peu après, elle se sentit fatiguée et
désira s’endormir" :start 0 :end 363)
 ))