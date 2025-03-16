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
 :text "--«Voyons, ne dites pas du mal d’Odette, dit Mme Verdurin en faisant
l’enfant. Elle est charmante.»"
 :tokens 16
 :processed-at "2025-03-16T02:18:14.355977"
 :entities (list
  (entity :text "--«Voyons," :label "ORG" :start 0 :end 10) (entity :text "Verdurin" :label "ORG" :start 49 :end 57) (entity :text "Elle" :label "ORG" :start 79 :end 83)
 )
 :sentences (list
  (sentence :text "--«Voyons, ne dites pas du mal d’Odette, dit Mme Verdurin en faisant
l’enfant" :start 0 :end 77) (sentence :text "Elle est charmante" :start 78 :end 97) (sentence :text "»" :start 98 :end 99)
 ))