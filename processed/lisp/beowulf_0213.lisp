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
 :text "Tandis que je lisais au jardin, ce que ma grand’tante n’aurait pas
compris que je fisse en dehors du dimanche, jour où il est défendu de
s’occuper à rien de sérieux et où elle ne cousait pas (un jour de
semaine, elle m’aurait dit «Comment tu t’amuses encore à lire, ce
n’est pourtant pas dimanche» en donnant au mot amusement le sens
d’enfantillage et de perte de temps), ma tante Léonie devisait avec
Françoise en attendant l’heure d’Eulalie. Elle lui annonçait qu’elle
venait de voir passer Mme Goupil «sans parapluie, avec la robe de soie
qu’elle s’est fait faire à Châteaudun. Si elle a loin à aller avant
vêpres elle pourrait bien la faire saucer»."
 :tokens 115
 :processed-at "2025-03-16T02:18:14.002245"
 :entities (list
  (entity :text "Tandis" :label "ORG" :start 0 :end 6) (entity :text "«Comment" :label "ORG" :start 230 :end 238) (entity :text "Léonie" :label "ORG" :start 381 :end 387) (entity :text "Françoise" :label "ORG" :start 402 :end 411) (entity :text "Elle" :label "ORG" :start 444 :end 448) (entity :text "Goupil" :label "ORG" :start 497 :end 503) (entity :text "Châteaudun." :label "ORG" :start 569 :end 580)
 )
 :sentences (list
  (sentence :text "Tandis que je lisais au jardin, ce que ma grand’tante n’aurait pas
compris que je fisse en dehors du dimanche, jour où il est défendu de
s’occuper à rien de sérieux et où elle ne cousait pas (un jour de
semaine, elle m’aurait dit «Comment tu t’amuses encore à lire, ce
n’est pourtant pas dimanche» en donnant au mot amusement le sens
d’enfantillage et de perte de temps), ma tante Léonie devisait avec
Françoise en attendant l’heure d’Eulalie" :start 0 :end 442) (sentence :text "Elle lui annonçait qu’elle
venait de voir passer Mme Goupil «sans parapluie, avec la robe de soie
qu’elle s’est fait faire à Châteaudun" :start 443 :end 579) (sentence :text "Si elle a loin à aller avant
vêpres elle pourrait bien la faire saucer»" :start 580 :end 652)
 ))