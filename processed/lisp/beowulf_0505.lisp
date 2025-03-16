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
 :text "--«Vous serez admis avec les personnes qui seront avec vous, mais on ne
laisse pas entrer les chiens. Vous comprenez je vous dis cela parce
que j’ai eu des amis qui ne le savaient pas et qui s’en sont mordu les
doigts.»"
 :tokens 42
 :processed-at "2025-03-16T02:18:14.324330"
 :entities (list
  (entity :text "--«Vous" :label "ORG" :start 0 :end 7) (entity :text "Vous" :label "ORG" :start 102 :end 106)
 )
 :sentences (list
  (sentence :text "--«Vous serez admis avec les personnes qui seront avec vous, mais on ne
laisse pas entrer les chiens" :start 0 :end 100) (sentence :text "Vous comprenez je vous dis cela parce
que j’ai eu des amis qui ne le savaient pas et qui s’en sont mordu les
doigts" :start 101 :end 217) (sentence :text "»" :start 218 :end 219)
 ))