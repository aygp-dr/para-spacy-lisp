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
 :text "--Ah! bigre! ce n’est pas au moins le «Serpent à Sonates»? demanda M.
de Forcheville pour faire de l’effet."
 :tokens 19
 :processed-at "2025-03-16T02:18:14.486694"
 :entities (list
  (entity :text "--Ah!" :label "ORG" :start 0 :end 5) (entity :text "«Serpent" :label "ORG" :start 38 :end 46) (entity :text "Sonates»?" :label "ORG" :start 49 :end 58) (entity :text "Forcheville" :label "ORG" :start 73 :end 84)
 )
 :sentences (list
  (sentence :text "--Ah! bigre! ce n’est pas au moins le «Serpent à Sonates»? demanda M" :start 0 :end 68) (sentence :text "de Forcheville pour faire de l’effet" :start 69 :end 106)
 ))