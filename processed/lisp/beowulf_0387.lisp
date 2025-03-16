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
 :text "--«Vous croyez qu’elle en mourrait, votre mère, s’écria durement Mme
Verdurin, si vous ne dîniez pas avec elle le jour de l’an, comme en
province!»"
 :tokens 25
 :processed-at "2025-03-16T02:18:14.207431"
 :entities (list
  (entity :text "--«Vous" :label "ORG" :start 0 :end 7) (entity :text "Verdurin," :label "ORG" :start 69 :end 78)
 )
 :sentences (list
  (sentence :text "--«Vous croyez qu’elle en mourrait, votre mère, s’écria durement Mme
Verdurin, si vous ne dîniez pas avec elle le jour de l’an, comme en
province!»" :start 0 :end 147)
 ))