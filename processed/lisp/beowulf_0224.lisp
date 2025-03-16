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
 :text "--Cela ne me surprend point, disait ma tante en levant les yeux au
ciel. J’ai toujours dit qu’elle n’avait point l’esprit fait comme tout
le monde. J’aime mieux que ce soit elle que moi qui soit dehors en ce
moment."
 :tokens 40
 :processed-at "2025-03-16T02:18:14.016219"
 :entities (list
  (entity :text "--Cela" :label "ORG" :start 0 :end 6)
 )
 :sentences (list
  (sentence :text "--Cela ne me surprend point, disait ma tante en levant les yeux au
ciel" :start 0 :end 71) (sentence :text "J’ai toujours dit qu’elle n’avait point l’esprit fait comme tout
le monde" :start 72 :end 146) (sentence :text "J’aime mieux que ce soit elle que moi qui soit dehors en ce
moment" :start 147 :end 214)
 ))