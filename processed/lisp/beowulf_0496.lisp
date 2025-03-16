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
 :text "Généralement, une fois l’explication donnée, Cottard disait: «Ah! bon,
bon, ça va bien» et ne montrait plus trace d’émotion."
 :tokens 19
 :processed-at "2025-03-16T02:18:14.316307"
 :entities (list
  (entity :text "Généralement," :label "ORG" :start 0 :end 13) (entity :text "Cottard" :label "ORG" :start 45 :end 52) (entity :text "«Ah!" :label "ORG" :start 61 :end 65)
 )
 :sentences (list
  (sentence :text "Généralement, une fois l’explication donnée, Cottard disait: «Ah! bon,
bon, ça va bien» et ne montrait plus trace d’émotion" :start 0 :end 123)
 ))