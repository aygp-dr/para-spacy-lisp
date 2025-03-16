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
 :text "--«Tenez, ma pauvre Eulalie, disait-elle d’une voix faible, en tirant
une pièce d’une petite bourse qu’elle avait à portée de sa main, voilà
pour que vous ne m’oubliez pas dans vos prières.»"
 :tokens 32
 :processed-at "2025-03-16T02:18:14.036562"
 :entities (list
  (entity :text "--«Tenez," :label "ORG" :start 0 :end 9) (entity :text "Eulalie," :label "ORG" :start 20 :end 28)
 )
 :sentences (list
  (sentence :text "--«Tenez, ma pauvre Eulalie, disait-elle d’une voix faible, en tirant
une pièce d’une petite bourse qu’elle avait à portée de sa main, voilà
pour que vous ne m’oubliez pas dans vos prières" :start 0 :end 188) (sentence :text "»" :start 189 :end 190)
 ))