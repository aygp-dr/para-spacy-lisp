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
 :text "--«Ah! est-ce que vous connaissez quelqu’un à Balbec? dit mon père.
Justement ce petit-là doit y aller passer deux mois avec sa grand’mère
et peut-être avec ma femme.»"
 :tokens 28
 :processed-at "2025-03-16T02:18:14.087362"
 :entities (list
  (entity :text "--«Ah!" :label "ORG" :start 0 :end 6) (entity :text "Balbec?" :label "ORG" :start 46 :end 53) (entity :text "Justement" :label "ORG" :start 68 :end 77)
 )
 :sentences (list
  (sentence :text "--«Ah! est-ce que vous connaissez quelqu’un à Balbec? dit mon père" :start 0 :end 66) (sentence :text "Justement ce petit-là doit y aller passer deux mois avec sa grand’mère
et peut-être avec ma femme" :start 67 :end 165) (sentence :text "»" :start 166 :end 167)
 ))