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
 :text "Ce qui permit à Forcheville, quand il se retrouva, un moment après,
seul avec Mme Cottard, de compléter le jugement favorable qu’il avait
porté sur son mari:"
 :tokens 27
 :processed-at "2025-03-16T02:18:14.483006"
 :entities (list
  (entity :text "Forcheville," :label "ORG" :start 16 :end 28) (entity :text "Cottard," :label "ORG" :start 82 :end 90)
 )
 :sentences (list
  (sentence :text "Ce qui permit à Forcheville, quand il se retrouva, un moment après,
seul avec Mme Cottard, de compléter le jugement favorable qu’il avait
porté sur son mari:" :start 0 :end 157)
 ))