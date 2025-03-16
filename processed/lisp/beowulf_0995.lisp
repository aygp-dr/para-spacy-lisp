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
 :text "--J’avais justement beaucoup de choses à vous demander, lui dis-je. Je
croyais que ce jour compterait beaucoup dans notre amitié. Et aussitôt
arrivée, vous allez partir! Tâchez de venir demain de bonne heure, que
je puisse enfin vous parler."
 :tokens 39
 :processed-at "2025-03-16T02:18:14.862891"
 :entities (list
  (entity :text "Tâchez" :label "ORG" :start 170 :end 176)
 )
 :sentences (list
  (sentence :text "--J’avais justement beaucoup de choses à vous demander, lui dis-je" :start 0 :end 66) (sentence :text "Je
croyais que ce jour compterait beaucoup dans notre amitié" :start 67 :end 128) (sentence :text "Et aussitôt
arrivée, vous allez partir! Tâchez de venir demain de bonne heure, que
je puisse enfin vous parler" :start 129 :end 240)
 ))