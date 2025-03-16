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
 :text "--Elle se met trop en avant, je trouve que chez une si jeune femme, ce
n’est pas agréable, car je ne crois pas qu’elle soit ma contemporaine,
répondit Mme des Laumes (cette expression étant commune aux Gallardon
et aux Guermantes)."
 :tokens 40
 :processed-at "2025-03-16T02:18:14.695370"
 :entities (list
  (entity :text "--Elle" :label "ORG" :start 0 :end 6) (entity :text "Laumes" :label "ORG" :start 159 :end 165) (entity :text "Gallardon" :label "ORG" :start 202 :end 211) (entity :text "Guermantes)." :label "ORG" :start 219 :end 231)
 )
 :sentences (list
  (sentence :text "--Elle se met trop en avant, je trouve que chez une si jeune femme, ce
n’est pas agréable, car je ne crois pas qu’elle soit ma contemporaine,
répondit Mme des Laumes (cette expression étant commune aux Gallardon
et aux Guermantes)" :start 0 :end 230)
 ))