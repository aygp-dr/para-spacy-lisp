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
 :text "--Vous avez remarqué ce qu’a fait cette personne, princesse, dit le
général de Froberville à la princesse des Laumes qu’il était venu
saluer et que Mme de Saint-Euverte quitta un instant. C’est curieux.
Est-ce donc une artiste?"
 :tokens 37
 :processed-at "2025-03-16T02:18:14.691167"
 :entities (list
  (entity :text "--Vous" :label "ORG" :start 0 :end 6) (entity :text "Froberville" :label "ORG" :start 79 :end 90) (entity :text "Laumes" :label "ORG" :start 110 :end 116) (entity :text "Saint-Euverte" :label "ORG" :start 155 :end 168)
 )
 :sentences (list
  (sentence :text "--Vous avez remarqué ce qu’a fait cette personne, princesse, dit le
général de Froberville à la princesse des Laumes qu’il était venu
saluer et que Mme de Saint-Euverte quitta un instant" :start 0 :end 186) (sentence :text "C’est curieux" :start 187 :end 201) (sentence :text "Est-ce donc une artiste?" :start 202 :end 227)
 ))