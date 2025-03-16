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
 :text "On passait, rue de l’Oiseau, devant la vieille hôtellerie de l’Oiseau
flesché dans la grande cour de laquelle entrèrent quelquefois au XVIIe
siècle les carrosses des duchesses de Montpensier, de Guermantes et de
Montmorency quand elles avaient à venir à Combray pour quelque
contestation avec leurs fermiers, pour une question d’hommage. On
gagnait le mail entre les arbres duquel apparaissait le clocher de
Saint-Hilaire. Et j’aurais voulu pouvoir m’asseoir là et rester toute
la journée à lire en écoutant les cloches; car il faisait si beau et
si tranquille que, quand sonnait l’heure, on aurait dit non qu’elle
rompait le calme du jour mais qu’elle le débarrassait de ce qu’il
contenait et que le clocher avec l’exactitude indolente et soigneuse
d’une personne qui n’a rien d’autre à faire, venait seulement--pour
exprimer et laisser tomber les quelques gouttes d’or que la chaleur y
avait lentement et naturellement amassées--de presser, au moment voulu,
la plénitude du silence."
 :tokens 155
 :processed-at "2025-03-16T02:18:14.169788"
 :entities (list
  (entity :text "Montpensier," :label "ORG" :start 179 :end 191) (entity :text "Guermantes" :label "ORG" :start 195 :end 205) (entity :text "Montmorency" :label "ORG" :start 212 :end 223) (entity :text "Combray" :label "ORG" :start 254 :end 261) (entity :text "Saint-Hilaire." :label "ORG" :start 408 :end 422)
 )
 :sentences (list
  (sentence :text "On passait, rue de l’Oiseau, devant la vieille hôtellerie de l’Oiseau
flesché dans la grande cour de laquelle entrèrent quelquefois au XVIIe
siècle les carrosses des duchesses de Montpensier, de Guermantes et de
Montmorency quand elles avaient à venir à Combray pour quelque
contestation avec leurs fermiers, pour une question d’hommage" :start 0 :end 336) (sentence :text "On
gagnait le mail entre les arbres duquel apparaissait le clocher de
Saint-Hilaire" :start 337 :end 421) (sentence :text "Et j’aurais voulu pouvoir m’asseoir là et rester toute
la journée à lire en écoutant les cloches; car il faisait si beau et
si tranquille que, quand sonnait l’heure, on aurait dit non qu’elle
rompait le calme du jour mais qu’elle le débarrassait de ce qu’il
contenait et que le clocher avec l’exactitude indolente et soigneuse
d’une personne qui n’a rien d’autre à faire, venait seulement--pour
exprimer et laisser tomber les quelques gouttes d’or que la chaleur y
avait lentement et naturellement amassées--de presser, au moment voulu,
la plénitude du silence" :start 422 :end 983)
 ))