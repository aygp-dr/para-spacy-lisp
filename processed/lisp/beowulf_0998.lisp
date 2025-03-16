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
 :text "Je revins avec Françoise par les rues qui étaient encore pavoisées de
soleil, comme au soir d’une fête qui est finie. Je ne pouvais pas
traîner mes jambes."
 :tokens 28
 :processed-at "2025-03-16T02:18:14.865434"
 :entities (list
  (entity :text "Françoise" :label "ORG" :start 15 :end 24)
 )
 :sentences (list
  (sentence :text "Je revins avec Françoise par les rues qui étaient encore pavoisées de
soleil, comme au soir d’une fête qui est finie" :start 0 :end 116) (sentence :text "Je ne pouvais pas
traîner mes jambes" :start 117 :end 154)
 ))