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
 :text "--«Monsieur le Curé, qu’est-ce que l’on me disait, qu’il y a un artiste
qui a installé son chevalet dans votre église pour copier un vitrail.
Je peux dire que je suis arrivée à mon âge sans avoir jamais entendu
parler d’une chose pareille! Qu’est-ce que le monde aujourd’hui va
donc chercher! Et ce qu’il y a de plus vilain dans l’église!»"
 :tokens 61
 :processed-at "2025-03-16T02:18:14.026137"
 :entities (list
  (entity :text "--«Monsieur" :label "ORG" :start 0 :end 11) (entity :text "Curé," :label "ORG" :start 15 :end 20)
 )
 :sentences (list
  (sentence :text "--«Monsieur le Curé, qu’est-ce que l’on me disait, qu’il y a un artiste
qui a installé son chevalet dans votre église pour copier un vitrail" :start 0 :end 140) (sentence :text "Je peux dire que je suis arrivée à mon âge sans avoir jamais entendu
parler d’une chose pareille! Qu’est-ce que le monde aujourd’hui va
donc chercher! Et ce qu’il y a de plus vilain dans l’église!»" :start 141 :end 339)
 ))