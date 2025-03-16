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
 :text "Jamais dans la promenade du côté de Guermantes nous ne pûmes remonter
jusqu’aux sources de la Vivonne, auxquelles j’avais souvent pensé et
qui avaient pour moi une existence si abstraite, si idéale, que
j’avais été aussi surpris quand on m’avait dit qu’elles se trouvaient
dans le département, à une certaine distance kilométrique de Combray,
que le jour où j’avais appris qu’il y avait un autre point précis de
la terre où s’ouvrait, dans l’antiquité, l’entrée des Enfers. Jamais
non plus nous ne pûmes pousser jusqu’au terme que j’eusse tant
souhaité d’atteindre, jusqu’à Guermantes. Je savais que là résidaient
des châtelains, le duc et la duchesse de Guermantes, je savais qu’ils
étaient des personnages réels et actuellement existants, mais chaque
fois que je pensais à eux, je me les représentais tantôt en
tapisserie, comme était la comtesse de Guermantes, dans le
«Couronnement d’Esther» de notre église, tantôt de nuances changeantes
comme était Gilbert le Mauvais dans le vitrail où il passait du vert
chou au bleu prune selon que j’étais encore à prendre de l’eau bénite
ou que j’arrivais à nos chaises, tantôt tout à fait impalpables comme
l’image de Geneviève de Brabant, ancêtre de la famille de Guermantes,
que la lanterne magique promenait sur les rideaux de ma chambre ou
faisait monter au plafond,--enfin toujours enveloppés du mystère des
temps mérovingiens et baignant comme dans un coucher de soleil dans la
lumière orangée qui émane de cette syllabe: «antes». Mais si malgré
cela ils étaient pour moi, en tant que duc et duchesse, des êtres
réels, bien qu’étranges, en revanche leur personne ducale se
distendait démesurément, s’immatérialisait, pour pouvoir contenir en
elle ce Guermantes dont ils étaient duc et duchesse, tout ce «côté de
Guermantes» ensoleillé, le cours de la Vivonne, ses nymphéas et ses
grands arbres, et tant de beaux après-midi. Et je savais qu’ils ne
portaient pas seulement le titre de duc et de duchesse de Guermantes,
mais que depuis le XIVe siècle où, après avoir inutilement essayé de
vaincre leurs anciens seigneurs ils s’étaient alliés à eux par des
mariages, ils étaient comtes de Combray, les premiers des citoyens de
Combray par conséquent et pourtant les seuls qui n’y habitassent pas.
Comtes de Combray, possédant Combray au milieu de leur nom, de leur
personne, et sans doute ayant effectivement en eux cette étrange et
pieuse tristesse qui était spéciale à Combray; propriétaires de la
ville, mais non d’une maison particulière, demeurant sans doute
dehors, dans la rue, entre ciel et terre, comme ce Gilbert de
Guermantes, dont je ne voyais aux vitraux de l’abside de Saint-Hilaire
que l’envers de laque noire, si je levais la tête quand j’allais
chercher du sel chez Camus."
 :tokens 446
 :processed-at "2025-03-16T02:18:14.179080"
 :entities (list
  (entity :text "Jamais" :label "ORG" :start 0 :end 6) (entity :text "Guermantes" :label "ORG" :start 36 :end 46) (entity :text "Vivonne," :label "ORG" :start 94 :end 102) (entity :text "Combray," :label "ORG" :start 334 :end 342) (entity :text "Enfers." :label "ORG" :start 466 :end 473) (entity :text "Jamais" :label "ORG" :start 474 :end 480) (entity :text "Guermantes." :label "ORG" :start 574 :end 585) (entity :text "Guermantes," :label "ORG" :start 655 :end 666) (entity :text "Guermantes," :label "ORG" :start 852 :end 863) (entity :text "«Couronnement" :label "ORG" :start 872 :end 885) (entity :text "Gilbert" :label "ORG" :start 955 :end 962) (entity :text "Mauvais" :label "ORG" :start 966 :end 973) (entity :text "Geneviève" :label "ORG" :start 1163 :end 1172) (entity :text "Brabant," :label "ORG" :start 1176 :end 1184) (entity :text "Guermantes," :label "ORG" :start 1210 :end 1221) (entity :text "Mais" :label "ORG" :start 1482 :end 1486) (entity :text "Guermantes" :label "ORG" :start 1701 :end 1711) (entity :text "Guermantes»" :label "ORG" :start 1763 :end 1774) (entity :text "Vivonne," :label "ORG" :start 1802 :end 1810) (entity :text "Guermantes," :label "ORG" :start 1956 :end 1967) (entity :text "Combray," :label "ORG" :start 2136 :end 2144) (entity :text "Combray" :label "ORG" :start 2174 :end 2181) (entity :text "Comtes" :label "ORG" :start 2244 :end 2250) (entity :text "Combray," :label "ORG" :start 2254 :end 2262) (entity :text "Combray" :label "ORG" :start 2273 :end 2280) (entity :text "Combray;" :label "ORG" :start 2418 :end 2426) (entity :text "Gilbert" :label "ORG" :start 2562 :end 2569) (entity :text "Guermantes," :label "ORG" :start 2573 :end 2584) (entity :text "Saint-Hilaire" :label "ORG" :start 2630 :end 2643) (entity :text "Camus." :label "ORG" :start 2730 :end 2736)
 )
 :sentences (list
  (sentence :text "Jamais dans la promenade du côté de Guermantes nous ne pûmes remonter
jusqu’aux sources de la Vivonne, auxquelles j’avais souvent pensé et
qui avaient pour moi une existence si abstraite, si idéale, que
j’avais été aussi surpris quand on m’avait dit qu’elles se trouvaient
dans le département, à une certaine distance kilométrique de Combray,
que le jour où j’avais appris qu’il y avait un autre point précis de
la terre où s’ouvrait, dans l’antiquité, l’entrée des Enfers" :start 0 :end 472) (sentence :text "Jamais
non plus nous ne pûmes pousser jusqu’au terme que j’eusse tant
souhaité d’atteindre, jusqu’à Guermantes" :start 473 :end 584) (sentence :text "Je savais que là résidaient
des châtelains, le duc et la duchesse de Guermantes, je savais qu’ils
étaient des personnages réels et actuellement existants, mais chaque
fois que je pensais à eux, je me les représentais tantôt en
tapisserie, comme était la comtesse de Guermantes, dans le
«Couronnement d’Esther» de notre église, tantôt de nuances changeantes
comme était Gilbert le Mauvais dans le vitrail où il passait du vert
chou au bleu prune selon que j’étais encore à prendre de l’eau bénite
ou que j’arrivais à nos chaises, tantôt tout à fait impalpables comme
l’image de Geneviève de Brabant, ancêtre de la famille de Guermantes,
que la lanterne magique promenait sur les rideaux de ma chambre ou
faisait monter au plafond,--enfin toujours enveloppés du mystère des
temps mérovingiens et baignant comme dans un coucher de soleil dans la
lumière orangée qui émane de cette syllabe: «antes»" :start 585 :end 1480) (sentence :text "Mais si malgré
cela ils étaient pour moi, en tant que duc et duchesse, des êtres
réels, bien qu’étranges, en revanche leur personne ducale se
distendait démesurément, s’immatérialisait, pour pouvoir contenir en
elle ce Guermantes dont ils étaient duc et duchesse, tout ce «côté de
Guermantes» ensoleillé, le cours de la Vivonne, ses nymphéas et ses
grands arbres, et tant de beaux après-midi" :start 1481 :end 1873) (sentence :text "Et je savais qu’ils ne
portaient pas seulement le titre de duc et de duchesse de Guermantes,
mais que depuis le XIVe siècle où, après avoir inutilement essayé de
vaincre leurs anciens seigneurs ils s’étaient alliés à eux par des
mariages, ils étaient comtes de Combray, les premiers des citoyens de
Combray par conséquent et pourtant les seuls qui n’y habitassent pas" :start 1874 :end 2242) (sentence :text "Comtes de Combray, possédant Combray au milieu de leur nom, de leur
personne, et sans doute ayant effectivement en eux cette étrange et
pieuse tristesse qui était spéciale à Combray; propriétaires de la
ville, mais non d’une maison particulière, demeurant sans doute
dehors, dans la rue, entre ciel et terre, comme ce Gilbert de
Guermantes, dont je ne voyais aux vitraux de l’abside de Saint-Hilaire
que l’envers de laque noire, si je levais la tête quand j’allais
chercher du sel chez Camus" :start 2243 :end 2735)
 ))