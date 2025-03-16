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
 :text "Nous nous asseyions entre les iris au bord de l’eau. Dans le ciel
férié, flânait longuement un nuage oisif. Par moments oppressée par
l’ennui, une carpe se dressait hors de l’eau dans une aspiration
anxieuse. C’était l’heure du goûter. Avant de repartir nous restions
longtemps à manger des fruits, du pain et du chocolat, sur l’herbe où
parvenaient jusqu’à nous, horizontaux, affaiblis, mais denses et
métalliques encore, des sons de la cloche de Saint-Hilaire qui ne
s’étaient pas mélangés à l’air qu’ils traversaient depuis si
longtemps, et côtelés par la palpitation successive de toutes leurs
lignes sonores, vibraient en rasant les fleurs, à nos pieds."
 :tokens 105
 :processed-at "2025-03-16T02:18:14.176537"
 :entities (list
  (entity :text "Nous" :label "ORG" :start 0 :end 4) (entity :text "Dans" :label "ORG" :start 53 :end 57) (entity :text "Saint-Hilaire" :label "ORG" :start 448 :end 461)
 )
 :sentences (list
  (sentence :text "Nous nous asseyions entre les iris au bord de l’eau" :start 0 :end 51) (sentence :text "Dans le ciel
férié, flânait longuement un nuage oisif" :start 52 :end 106) (sentence :text "Par moments oppressée par
l’ennui, une carpe se dressait hors de l’eau dans une aspiration
anxieuse" :start 107 :end 207) (sentence :text "C’était l’heure du goûter" :start 208 :end 234) (sentence :text "Avant de repartir nous restions
longtemps à manger des fruits, du pain et du chocolat, sur l’herbe où
parvenaient jusqu’à nous, horizontaux, affaiblis, mais denses et
métalliques encore, des sons de la cloche de Saint-Hilaire qui ne
s’étaient pas mélangés à l’air qu’ils traversaient depuis si
longtemps, et côtelés par la palpitation successive de toutes leurs
lignes sonores, vibraient en rasant les fleurs, à nos pieds" :start 235 :end 657)
 ))