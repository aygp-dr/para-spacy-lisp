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
 :text "--«Mais non, ce n’est plus la peine, c’est sûrement Mlle Pupin. Ma
pauvre Françoise, je regrette de vous avoir fait monter pour rien.»"
 :tokens 23
 :processed-at "2025-03-16T02:18:13.880389"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Mlle" :label "ORG" :start 52 :end 56) (entity :text "Pupin." :label "ORG" :start 57 :end 63) (entity :text "Françoise," :label "ORG" :start 74 :end 84)
 )
 :sentences (list
  (sentence :text "--«Mais non, ce n’est plus la peine, c’est sûrement Mlle Pupin" :start 0 :end 62) (sentence :text "Ma
pauvre Françoise, je regrette de vous avoir fait monter pour rien" :start 63 :end 132) (sentence :text "»" :start 133 :end 134)
 ))