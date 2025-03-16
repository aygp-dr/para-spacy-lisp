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
 :text "--«Mais laisse-le donc où il est, il n’est plus là pour nous embêter.
Crois-tu qu’il pleurnicherait, qu’il voudrait te mettre ton manteau,
s’il te voyait là, la fenêtre ouverte, le vilain singe.»"
 :tokens 32
 :processed-at "2025-03-16T02:18:14.160400"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7)
 )
 :sentences (list
  (sentence :text "--«Mais laisse-le donc où il est, il n’est plus là pour nous embêter" :start 0 :end 68) (sentence :text "Crois-tu qu’il pleurnicherait, qu’il voudrait te mettre ton manteau,
s’il te voyait là, la fenêtre ouverte, le vilain singe" :start 69 :end 193) (sentence :text "»" :start 194 :end 195)
 ))