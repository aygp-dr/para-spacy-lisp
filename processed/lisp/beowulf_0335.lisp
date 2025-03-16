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
 :text "Au fond du salon de Mlle Vinteuil, sur la cheminée était posé un petit
portrait de son père que vivement elle alla chercher au moment où
retentit le roulement d’une voiture qui venait de la route, puis elle
se jeta sur un canapé, et tira près d’elle une petite table sur
laquelle elle plaça le portrait, comme M. Vinteuil autrefois avait mis
à côté de lui le morceau qu’il avait le désir de jouer à mes parents.
Bientôt son amie entra. Mlle Vinteuil l’accueillit sans se lever, ses
deux mains derrière la tête et se recula sur le bord opposé du sofa
comme pour lui faire une place. Mais aussitôt elle sentit qu’elle
semblait ainsi lui imposer une attitude qui lui était peut-être
importune. Elle pensa que son amie aimerait peut-être mieux être loin
d’elle sur une chaise, elle se trouva indiscrète, la délicatesse de
son cœur s’en alarma; reprenant toute la place sur le sofa elle ferma
les yeux et se mit à bâiller pour indiquer que l’envie de dormir était
la seule raison pour laquelle elle s’était ainsi étendue. Malgré la
familiarité rude et dominatrice qu’elle avait avec sa camarade, je
reconnaissais les gestes obséquieux et réticents, les brusques
scrupules de son père. Bientôt elle se leva, feignit de vouloir fermer
les volets et de n’y pas réussir."
 :tokens 220
 :processed-at "2025-03-16T02:18:14.150202"
 :entities (list
  (entity :text "Mlle" :label "ORG" :start 20 :end 24) (entity :text "Vinteuil," :label "ORG" :start 25 :end 34) (entity :text "Vinteuil" :label "ORG" :start 313 :end 321) (entity :text "Bientôt" :label "ORG" :start 412 :end 419) (entity :text "Mlle" :label "ORG" :start 436 :end 440) (entity :text "Vinteuil" :label "ORG" :start 441 :end 449) (entity :text "Mais" :label "ORG" :start 582 :end 586) (entity :text "Elle" :label "ORG" :start 691 :end 695) (entity :text "Malgré" :label "ORG" :start 1017 :end 1023) (entity :text "Bientôt" :label "ORG" :start 1180 :end 1187)
 )
 :sentences (list
  (sentence :text "Au fond du salon de Mlle Vinteuil, sur la cheminée était posé un petit
portrait de son père que vivement elle alla chercher au moment où
retentit le roulement d’une voiture qui venait de la route, puis elle
se jeta sur un canapé, et tira près d’elle une petite table sur
laquelle elle plaça le portrait, comme M" :start 0 :end 311) (sentence :text "Vinteuil autrefois avait mis
à côté de lui le morceau qu’il avait le désir de jouer à mes parents" :start 312 :end 410) (sentence :text "Bientôt son amie entra" :start 411 :end 434) (sentence :text "Mlle Vinteuil l’accueillit sans se lever, ses
deux mains derrière la tête et se recula sur le bord opposé du sofa
comme pour lui faire une place" :start 435 :end 580) (sentence :text "Mais aussitôt elle sentit qu’elle
semblait ainsi lui imposer une attitude qui lui était peut-être
importune" :start 581 :end 689) (sentence :text "Elle pensa que son amie aimerait peut-être mieux être loin
d’elle sur une chaise, elle se trouva indiscrète, la délicatesse de
son cœur s’en alarma; reprenant toute la place sur le sofa elle ferma
les yeux et se mit à bâiller pour indiquer que l’envie de dormir était
la seule raison pour laquelle elle s’était ainsi étendue" :start 690 :end 1015) (sentence :text "Malgré la
familiarité rude et dominatrice qu’elle avait avec sa camarade, je
reconnaissais les gestes obséquieux et réticents, les brusques
scrupules de son père" :start 1016 :end 1178) (sentence :text "Bientôt elle se leva, feignit de vouloir fermer
les volets et de n’y pas réussir" :start 1179 :end 1260)
 ))