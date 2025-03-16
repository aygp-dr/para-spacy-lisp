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
 :text "Si l’on n’avait pas arrangé une partie au dehors, c’est chez les
Verdurin que Swann retrouvait le petit noyau, mais il ne venait que le
soir et n’acceptait presque jamais à dîner malgré les instances
d’Odette."
 :tokens 36
 :processed-at "2025-03-16T02:18:14.325994"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 65 :end 73) (entity :text "Swann" :label "ORG" :start 78 :end 83)
 )
 :sentences (list
  (sentence :text "Si l’on n’avait pas arrangé une partie au dehors, c’est chez les
Verdurin que Swann retrouvait le petit noyau, mais il ne venait que le
soir et n’acceptait presque jamais à dîner malgré les instances
d’Odette" :start 0 :end 208)
 ))