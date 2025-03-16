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
 :text "--«Je ne vois pas comment cette dame pourrait être froissée, répondit
Rémi, puisque c’est elle qui est partie sans attendre Monsieur,
qu’elle a dit qu’elle allait chez Prévost et qu’elle n’y était pas,»"
 :tokens 33
 :processed-at "2025-03-16T02:18:14.365443"
 :entities (list
  (entity :text "--«Je" :label "ORG" :start 0 :end 5) (entity :text "Rémi," :label "ORG" :start 70 :end 75) (entity :text "Monsieur," :label "ORG" :start 124 :end 133) (entity :text "Prévost" :label "ORG" :start 168 :end 175)
 )
 :sentences (list
  (sentence :text "--«Je ne vois pas comment cette dame pourrait être froissée, répondit
Rémi, puisque c’est elle qui est partie sans attendre Monsieur,
qu’elle a dit qu’elle allait chez Prévost et qu’elle n’y était pas,»" :start 0 :end 202)
 ))