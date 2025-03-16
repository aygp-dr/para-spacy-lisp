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
 :text "Quand, à notre retour, ma tante nous faisait demander si Mme Goupil
était arrivée en retard à la messe, nous étions incapables de la
renseigner. En revanche nous ajoutions à son trouble en lui disant
qu’un peintre travaillait dans l’église à copier le vitrail de Gilbert
le Mauvais. Françoise, envoyée aussitôt chez l’épicier, était revenue
bredouille par la faute de l’absence de Théodore à qui sa double
profession de chantre ayant une part de l’entretien de l’église, et de
garçon épicier donnait, avec des relations dans tous les mondes, un
savoir universel."
 :tokens 92
 :processed-at "2025-03-16T02:18:13.908418"
 :entities (list
  (entity :text "Quand," :label "ORG" :start 0 :end 6) (entity :text "Goupil" :label "ORG" :start 61 :end 67) (entity :text "Gilbert" :label "ORG" :start 263 :end 270) (entity :text "Mauvais." :label "ORG" :start 274 :end 282) (entity :text "Françoise," :label "ORG" :start 283 :end 293) (entity :text "Théodore" :label "ORG" :start 381 :end 389)
 )
 :sentences (list
  (sentence :text "Quand, à notre retour, ma tante nous faisait demander si Mme Goupil
était arrivée en retard à la messe, nous étions incapables de la
renseigner" :start 0 :end 143) (sentence :text "En revanche nous ajoutions à son trouble en lui disant
qu’un peintre travaillait dans l’église à copier le vitrail de Gilbert
le Mauvais" :start 144 :end 281) (sentence :text "Françoise, envoyée aussitôt chez l’épicier, était revenue
bredouille par la faute de l’absence de Théodore à qui sa double
profession de chantre ayant une part de l’entretien de l’église, et de
garçon épicier donnait, avec des relations dans tous les mondes, un
savoir universel" :start 282 :end 561)
 ))