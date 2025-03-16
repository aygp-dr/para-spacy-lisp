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
 :text "--«Odette, nous vous ramenons, dit Mme Verdurin, nous avons une petite
place pour vous à côté de M. de Forcheville."
 :tokens 20
 :processed-at "2025-03-16T02:18:14.556095"
 :entities (list
  (entity :text "--«Odette," :label "ORG" :start 0 :end 10) (entity :text "Verdurin," :label "ORG" :start 39 :end 48) (entity :text "Forcheville." :label "ORG" :start 103 :end 115)
 )
 :sentences (list
  (sentence :text "--«Odette, nous vous ramenons, dit Mme Verdurin, nous avons une petite
place pour vous à côté de M" :start 0 :end 98) (sentence :text "de Forcheville" :start 99 :end 114)
 ))