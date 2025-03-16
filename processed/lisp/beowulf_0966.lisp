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
 :text "Mais ces paroles en pénétrant dans les ondes du sommeil où Swann était
plongé, n’étaient arrivées jusqu’à sa conscience qu’en subissant cette
déviation qui fait qu’au fond de l’eau un rayon paraît un soleil, de
même qu’un moment auparavant le bruit de la sonnette prenant au fond
de ces abîmes une sonorité de tocsin avait enfanté l’épisode de
l’incendie. Cependant le décor qu’il avait sous les yeux vola en
poussière, il ouvrit les yeux, entendit une dernière fois le bruit
d’une des vagues de la mer qui s’éloignait. Il toucha sa joue. Elle
était sèche. Et pourtant il se rappelait la sensation de l’eau froide
et le goût du sel. Il se leva, s’habilla. Il avait fait venir le
coiffeur de bonne heure parce qu’il avait écrit la veille à mon
grand-père qu’il irait dans l’après-midi à Combray, ayant appris que
Mme de Cambremer--Mlle Legrandin--devait y passer quelques jours.
Associant dans son souvenir au charme de ce jeune visage celui d’une
campagne où il n’était pas allé depuis si longtemps, ils lui offraient
ensemble un attrait qui l’avait décidé à quitter enfin Paris pour
quelques jours. Comme les différents hasards qui nous mettent en
présence de certaines personnes ne coïncident pas avec le temps où
nous les aimons, mais, le dépassant, peuvent se produire avant qu’il
commence et se répéter après qu’il a fini, les premières apparitions
que fait dans notre vie un être destiné plus tard à nous plaire,
prennent rétrospectivement à nos yeux une valeur d’avertissement, de
présage. C’est de cette façon que Swann s’était souvent reporté à
l’image d’Odette rencontrée au théâtre, ce premier soir où il ne
songeait pas à la revoir jamais,--et qu’il se rappelait maintenant la
soirée de Mme de Saint-Euverte où il avait présenté le général de
Froberville à Mme de Cambremer. Les intérêts de notre vie sont si
multiples qu’il n’est pas rare que dans une même circonstance les
jalons d’un bonheur qui n’existe pas encore soient posés à côté de
l’aggravation d’un chagrin dont nous souffrons. Et sans doute cela
aurait pu arriver à Swann ailleurs que chez Mme de Saint-Euverte. Qui
sait même, dans le cas où, ce soir-là, il se fût trouvé ailleurs, si
d’autres bonheurs, d’autres chagrins ne lui seraient pas arrivés, et
qui ensuite lui eussent paru avoir été inévitables? Mais ce qui lui
semblait l’avoir été, c’était ce qui avait eu lieu, et il n’était pas
loin de voir quelque chose de providentiel dans ce qu’il se fût décidé
à aller à la soirée de Mme de Saint-Euverte, parce que son esprit
désireux d’admirer la richesse d’invention de la vie et incapable de
se poser longtemps une question difficile, comme de savoir ce qui eût
été le plus à souhaiter, considérait dans les souffrances qu’il avait
éprouvées ce soir-là et les plaisirs encore insoupçonnés qui germaient
déjà,--et entre lesquels la balance était trop difficile à établir--,
une sorte d’enchaînement nécessaire."
 :tokens 484
 :processed-at "2025-03-16T02:18:14.818579"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 59 :end 64) (entity :text "Cependant" :label "ORG" :start 356 :end 365) (entity :text "Elle" :label "ORG" :start 539 :end 543) (entity :text "Combray," :label "ORG" :start 786 :end 794) (entity :text "Cambremer--Mlle" :label "ORG" :start 819 :end 834) (entity :text "Paris" :label "ORG" :start 1073 :end 1078) (entity :text "Comme" :label "ORG" :start 1100 :end 1105) (entity :text "Swann" :label "ORG" :start 1522 :end 1527) (entity :text "Saint-Euverte" :label "ORG" :start 1706 :end 1719) (entity :text "Froberville" :label "ORG" :start 1755 :end 1766) (entity :text "Cambremer." :label "ORG" :start 1776 :end 1786) (entity :text "Swann" :label "ORG" :start 2041 :end 2046) (entity :text "Saint-Euverte." :label "ORG" :start 2072 :end 2086) (entity :text "Mais" :label "ORG" :start 2281 :end 2285) (entity :text "Saint-Euverte," :label "ORG" :start 2468 :end 2482)
 )
 :sentences (list
  (sentence :text "Mais ces paroles en pénétrant dans les ondes du sommeil où Swann était
plongé, n’étaient arrivées jusqu’à sa conscience qu’en subissant cette
déviation qui fait qu’au fond de l’eau un rayon paraît un soleil, de
même qu’un moment auparavant le bruit de la sonnette prenant au fond
de ces abîmes une sonorité de tocsin avait enfanté l’épisode de
l’incendie" :start 0 :end 354) (sentence :text "Cependant le décor qu’il avait sous les yeux vola en
poussière, il ouvrit les yeux, entendit une dernière fois le bruit
d’une des vagues de la mer qui s’éloignait" :start 355 :end 518) (sentence :text "Il toucha sa joue" :start 519 :end 537) (sentence :text "Elle
était sèche" :start 538 :end 555) (sentence :text "Et pourtant il se rappelait la sensation de l’eau froide
et le goût du sel" :start 556 :end 631) (sentence :text "Il se leva, s’habilla" :start 632 :end 654) (sentence :text "Il avait fait venir le
coiffeur de bonne heure parce qu’il avait écrit la veille à mon
grand-père qu’il irait dans l’après-midi à Combray, ayant appris que
Mme de Cambremer--Mlle Legrandin--devait y passer quelques jours" :start 655 :end 876) (sentence :text "Associant dans son souvenir au charme de ce jeune visage celui d’une
campagne où il n’était pas allé depuis si longtemps, ils lui offraient
ensemble un attrait qui l’avait décidé à quitter enfin Paris pour
quelques jours" :start 877 :end 1098) (sentence :text "Comme les différents hasards qui nous mettent en
présence de certaines personnes ne coïncident pas avec le temps où
nous les aimons, mais, le dépassant, peuvent se produire avant qu’il
commence et se répéter après qu’il a fini, les premières apparitions
que fait dans notre vie un être destiné plus tard à nous plaire,
prennent rétrospectivement à nos yeux une valeur d’avertissement, de
présage" :start 1099 :end 1495) (sentence :text "C’est de cette façon que Swann s’était souvent reporté à
l’image d’Odette rencontrée au théâtre, ce premier soir où il ne
songeait pas à la revoir jamais,--et qu’il se rappelait maintenant la
soirée de Mme de Saint-Euverte où il avait présenté le général de
Froberville à Mme de Cambremer" :start 1496 :end 1785) (sentence :text "Les intérêts de notre vie sont si
multiples qu’il n’est pas rare que dans une même circonstance les
jalons d’un bonheur qui n’existe pas encore soient posés à côté de
l’aggravation d’un chagrin dont nous souffrons" :start 1786 :end 2000) (sentence :text "Et sans doute cela
aurait pu arriver à Swann ailleurs que chez Mme de Saint-Euverte" :start 2001 :end 2085) (sentence :text "Qui
sait même, dans le cas où, ce soir-là, il se fût trouvé ailleurs, si
d’autres bonheurs, d’autres chagrins ne lui seraient pas arrivés, et
qui ensuite lui eussent paru avoir été inévitables? Mais ce qui lui
semblait l’avoir été, c’était ce qui avait eu lieu, et il n’était pas
loin de voir quelque chose de providentiel dans ce qu’il se fût décidé
à aller à la soirée de Mme de Saint-Euverte, parce que son esprit
désireux d’admirer la richesse d’invention de la vie et incapable de
se poser longtemps une question difficile, comme de savoir ce qui eût
été le plus à souhaiter, considérait dans les souffrances qu’il avait
éprouvées ce soir-là et les plaisirs encore insoupçonnés qui germaient
déjà,--et entre lesquels la balance était trop difficile à établir--,
une sorte d’enchaînement nécessaire" :start 2086 :end 2889)
 ))