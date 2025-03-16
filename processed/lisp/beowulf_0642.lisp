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
 :text "--Ecoutez! dit à Forcheville et au docteur Mme Verdurin, il va nous
dire la définition de l’intelligence par Fénelon, c’est intéressant,
on n’a pas toujours l’occasion d’apprendre cela."
 :tokens 28
 :processed-at "2025-03-16T02:18:14.467624"
 :entities (list
  (entity :text "--Ecoutez!" :label "ORG" :start 0 :end 10) (entity :text "Forcheville" :label "ORG" :start 17 :end 28) (entity :text "Verdurin," :label "ORG" :start 47 :end 56) (entity :text "Fénelon," :label "ORG" :start 109 :end 117)
 )
 :sentences (list
  (sentence :text "--Ecoutez! dit à Forcheville et au docteur Mme Verdurin, il va nous
dire la définition de l’intelligence par Fénelon, c’est intéressant,
on n’a pas toujours l’occasion d’apprendre cela" :start 0 :end 184)
 ))