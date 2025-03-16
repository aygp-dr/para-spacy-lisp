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
 :text "Pour les locutions, il était insatiable de renseignements, car, leur
supposant parfois un sens plus précis qu’elles n’ont, il eût désiré
savoir ce qu’on voulait dire exactement par celles qu’il entendait le
plus souvent employer: la beauté du diable, du sang bleu, une vie de
bâtons de chaise, le quart d’heure de Rabelais, être le prince des
élégances, donner carte blanche, être réduit à quia, etc., et dans
quels cas déterminés il pouvait à son tour les faire figurer dans ses
propos. A leur défaut il plaçait des jeux de mots qu’il avait appris.
Quant aux noms de personnes nouveaux qu’on prononçait devant lui il se
contentait seulement de les répéter sur un ton interrogatif qu’il
pensait suffisant pour lui valoir des explications qu’il n’aurait pas
l’air de demander."
 :tokens 129
 :processed-at "2025-03-16T02:18:14.240776"
 :entities (list
  (entity :text "Pour" :label "ORG" :start 0 :end 4) (entity :text "Rabelais," :label "ORG" :start 314 :end 323) (entity :text "Quant" :label "ORG" :start 550 :end 555)
 )
 :sentences (list
  (sentence :text "Pour les locutions, il était insatiable de renseignements, car, leur
supposant parfois un sens plus précis qu’elles n’ont, il eût désiré
savoir ce qu’on voulait dire exactement par celles qu’il entendait le
plus souvent employer: la beauté du diable, du sang bleu, une vie de
bâtons de chaise, le quart d’heure de Rabelais, être le prince des
élégances, donner carte blanche, être réduit à quia, etc" :start 0 :end 399) (sentence :text ", et dans
quels cas déterminés il pouvait à son tour les faire figurer dans ses
propos" :start 400 :end 486) (sentence :text "A leur défaut il plaçait des jeux de mots qu’il avait appris" :start 487 :end 548) (sentence :text "Quant aux noms de personnes nouveaux qu’on prononçait devant lui il se
contentait seulement de les répéter sur un ton interrogatif qu’il
pensait suffisant pour lui valoir des explications qu’il n’aurait pas
l’air de demander" :start 549 :end 774)
 ))