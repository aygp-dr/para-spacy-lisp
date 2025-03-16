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
 :text "--«Quel homme charmant que votre mari, il a de l’esprit comme quatre,
déclara Forcheville à Mme Cottard. Merci madame. Un vieux troupier
comme moi, ça ne refuse jamais la goutte.»"
 :tokens 30
 :processed-at "2025-03-16T02:18:14.477700"
 :entities (list
  (entity :text "--«Quel" :label "ORG" :start 0 :end 7) (entity :text "Forcheville" :label "ORG" :start 78 :end 89) (entity :text "Cottard." :label "ORG" :start 96 :end 104) (entity :text "Merci" :label "ORG" :start 105 :end 110)
 )
 :sentences (list
  (sentence :text "--«Quel homme charmant que votre mari, il a de l’esprit comme quatre,
déclara Forcheville à Mme Cottard" :start 0 :end 103) (sentence :text "Merci madame" :start 104 :end 117) (sentence :text "Un vieux troupier
comme moi, ça ne refuse jamais la goutte" :start 118 :end 177) (sentence :text "»" :start 178 :end 179)
 ))