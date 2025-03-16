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
 :text "--«Ce n’est pas cela que je voulais dire, interrompit mon père, aussi
obstiné que les arbres et aussi impitoyable que le ciel. Je demandais
pour le cas où il arriverait n’importe quoi à ma belle-mère et où elle
aurait besoin de ne pas se sentir là-bas en pays perdu, si vous y
connaissez du monde?»"
 :tokens 55
 :processed-at "2025-03-16T02:18:14.091793"
 :entities (list
  (entity :text "--«Ce" :label "ORG" :start 0 :end 5)
 )
 :sentences (list
  (sentence :text "--«Ce n’est pas cela que je voulais dire, interrompit mon père, aussi
obstiné que les arbres et aussi impitoyable que le ciel" :start 0 :end 125) (sentence :text "Je demandais
pour le cas où il arriverait n’importe quoi à ma belle-mère et où elle
aurait besoin de ne pas se sentir là-bas en pays perdu, si vous y
connaissez du monde?»" :start 126 :end 298)
 ))