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
 :text "--Je vais jouer la phrase de la Sonate pour M. Swann? dit le pianiste."
 :tokens 14
 :processed-at "2025-03-16T02:18:14.485453"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Sonate" :label "ORG" :start 32 :end 38) (entity :text "Swann?" :label "ORG" :start 47 :end 53)
 )
 :sentences (list
  (sentence :text "--Je vais jouer la phrase de la Sonate pour M" :start 0 :end 45) (sentence :text "Swann? dit le pianiste" :start 46 :end 69)
 ))