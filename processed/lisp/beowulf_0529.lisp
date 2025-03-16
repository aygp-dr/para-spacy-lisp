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
 :text "--Oh! un instant seulement. Nous avons eu un Swann très agité, très
nerveux. Vous comprenez, Odette était partie."
 :tokens 18
 :processed-at "2025-03-16T02:18:14.349342"
 :entities (list
  (entity :text "--Oh!" :label "ORG" :start 0 :end 5) (entity :text "Nous" :label "ORG" :start 28 :end 32) (entity :text "Swann" :label "ORG" :start 45 :end 50) (entity :text "Vous" :label "ORG" :start 77 :end 81) (entity :text "Odette" :label "ORG" :start 93 :end 99)
 )
 :sentences (list
  (sentence :text "--Oh! un instant seulement" :start 0 :end 26) (sentence :text "Nous avons eu un Swann très agité, très
nerveux" :start 27 :end 75) (sentence :text "Vous comprenez, Odette était partie" :start 76 :end 112)
 ))