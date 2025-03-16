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
 :text "--«En effet, alors, cela ne doit pas beaucoup vous amuser d’y aller»,
dit le docteur avec une nuance de commisération; et, se rappelant le
chiffre de huit convives: «Sont-ce des déjeuners intimes?»
demanda-t-il vivement avec un zèle de linguiste plus encore qu’une
curiosité de badaud."
 :tokens 45
 :processed-at "2025-03-16T02:18:14.322588"
 :entities (list
  (entity :text "--«En" :label "ORG" :start 0 :end 5)
 )
 :sentences (list
  (sentence :text "--«En effet, alors, cela ne doit pas beaucoup vous amuser d’y aller»,
dit le docteur avec une nuance de commisération; et, se rappelant le
chiffre de huit convives: «Sont-ce des déjeuners intimes?»
demanda-t-il vivement avec un zèle de linguiste plus encore qu’une
curiosité de badaud" :start 0 :end 284)
 ))