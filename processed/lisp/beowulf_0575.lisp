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
 :text "--Mais elle a l’air d’une ouvreuse, d’une vieille concierge, darling!
Ça, une marquise! Je ne suis pas marquise, mais il faudrait me payer
bien cher pour me faire sortir nippée comme ça!"
 :tokens 32
 :processed-at "2025-03-16T02:18:14.401097"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6)
 )
 :sentences (list
  (sentence :text "--Mais elle a l’air d’une ouvreuse, d’une vieille concierge, darling!
Ça, une marquise! Je ne suis pas marquise, mais il faudrait me payer
bien cher pour me faire sortir nippée comme ça!" :start 0 :end 186)
 ))