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
 :text "--«M. de Forcheville trouve Odette charmante», dit M. Verdurin à sa
femme."
 :tokens 12
 :processed-at "2025-03-16T02:18:14.478509"
 :entities (list
  (entity :text "--«M." :label "ORG" :start 0 :end 5) (entity :text "Forcheville" :label "ORG" :start 9 :end 20) (entity :text "Odette" :label "ORG" :start 28 :end 34) (entity :text "Verdurin" :label "ORG" :start 54 :end 62)
 )
 :sentences (list
  (sentence :text "--«M" :start 0 :end 4) (sentence :text "de Forcheville trouve Odette charmante», dit M" :start 5 :end 52) (sentence :text "Verdurin à sa
femme" :start 53 :end 73)
 ))