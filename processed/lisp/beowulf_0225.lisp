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
 :text "--Mme Amédée, c’est toujours tout l’extrême des autres, disait
Françoise avec douceur, réservant pour le moment où elle serait seule
avec les autres domestiques, de dire qu’elle croyait ma grand’mère un
peu «piquée»."
 :tokens 33
 :processed-at "2025-03-16T02:18:14.019068"
 :entities (list
  (entity :text "--Mme" :label "ORG" :start 0 :end 5) (entity :text "Françoise" :label "ORG" :start 63 :end 72)
 )
 :sentences (list
  (sentence :text "--Mme Amédée, c’est toujours tout l’extrême des autres, disait
Françoise avec douceur, réservant pour le moment où elle serait seule
avec les autres domestiques, de dire qu’elle croyait ma grand’mère un
peu «piquée»" :start 0 :end 215)
 ))