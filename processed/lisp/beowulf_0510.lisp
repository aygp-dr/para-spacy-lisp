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
 :text "--«Oh! ce serait bien simple. Je n’aurais qu’à dire que ma robe n’a pas
été prête, que mon cab est venu en retard. Il y a toujours moyen de
s’arranger."
 :tokens 30
 :processed-at "2025-03-16T02:18:14.328121"
 :entities (list
  (entity :text "--«Oh!" :label "ORG" :start 0 :end 6)
 )
 :sentences (list
  (sentence :text "--«Oh! ce serait bien simple" :start 0 :end 28) (sentence :text "Je n’aurais qu’à dire que ma robe n’a pas
été prête, que mon cab est venu en retard" :start 29 :end 113) (sentence :text "Il y a toujours moyen de
s’arranger" :start 114 :end 150)
 ))