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
 :text "Et sans avoir pris le temps d’enlever nos affaires, nous montions vite
chez ma tante Léonie pour la rassurer et lui montrer que,
contrairement à ce qu’elle imaginait déjà, il ne nous était rien
arrivé, mais que nous étions allés «du côté de Guermantes» et, dame,
quand on faisait cette promenade-là, ma tante savait pourtant bien
qu’on ne pouvait jamais être sûr de l’heure à laquelle on serait
rentré."
 :tokens 69
 :processed-at "2025-03-16T02:18:14.097450"
 :entities (list
  (entity :text "Léonie" :label "ORG" :start 85 :end 91) (entity :text "Guermantes»" :label "ORG" :start 241 :end 252)
 )
 :sentences (list
  (sentence :text "Et sans avoir pris le temps d’enlever nos affaires, nous montions vite
chez ma tante Léonie pour la rassurer et lui montrer que,
contrairement à ce qu’elle imaginait déjà, il ne nous était rien
arrivé, mais que nous étions allés «du côté de Guermantes» et, dame,
quand on faisait cette promenade-là, ma tante savait pourtant bien
qu’on ne pouvait jamais être sûr de l’heure à laquelle on serait
rentré" :start 0 :end 401)
 ))