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
 :text "Sauf ces jours-là, je pouvais d’habitude, au contraire, lire
tranquille. Mais l’interruption et le commentaire qui furent apportés
une fois par une visite de Swann à la lecture que j’étais en train de
faire du livre d’un auteur tout nouveau pour moi, Bergotte, eut cette
conséquence que, pour longtemps, ce ne fut plus sur un mur décoré de
fleurs violettes en quenouille, mais sur un fond tout autre, devant le
portail d’une cathédrale gothique, que se détacha désormais l’image
d’une des femmes dont je rêvais."
 :tokens 85
 :processed-at "2025-03-16T02:18:13.963463"
 :entities (list
  (entity :text "Sauf" :label "ORG" :start 0 :end 4) (entity :text "Mais" :label "ORG" :start 73 :end 77) (entity :text "Swann" :label "ORG" :start 158 :end 163) (entity :text "Bergotte," :label "ORG" :start 251 :end 260)
 )
 :sentences (list
  (sentence :text "Sauf ces jours-là, je pouvais d’habitude, au contraire, lire
tranquille" :start 0 :end 71) (sentence :text "Mais l’interruption et le commentaire qui furent apportés
une fois par une visite de Swann à la lecture que j’étais en train de
faire du livre d’un auteur tout nouveau pour moi, Bergotte, eut cette
conséquence que, pour longtemps, ce ne fut plus sur un mur décoré de
fleurs violettes en quenouille, mais sur un fond tout autre, devant le
portail d’une cathédrale gothique, que se détacha désormais l’image
d’une des femmes dont je rêvais" :start 72 :end 510)
 ))