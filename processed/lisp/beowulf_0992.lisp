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
 :text "J’emmenais Françoise au-devant de Gilberte jusqu’à l’Arc-de-Triomphe,
nous ne la rencontrions pas, et je revenais vers la pelouse persuadé
qu’elle ne viendrait plus, quand, devant les chevaux de bois, la
fillette à la voix brève se jetait sur moi: «Vite, vite, il y a déjà
un quart d’heure que Gilberte est arrivée. Elle va repartir bientôt.
On vous attend pour faire une partie de barres.» Pendant que je
montais l’avenue des Champs-Élysées, Gilberte était venue par la rue
Boissy-d’Anglas, Mademoiselle ayant profité du beau temps pour faire
des courses pour elle; et M. Swann allait venir chercher sa fille.
Aussi c’était ma faute; je n’aurais pas dû m’éloigner de la pelouse;
car on ne savait jamais sûrement par quel côté Gilberte viendrait, si
ce serait plus ou moins tard, et cette attente finissait par me rendre
plus émouvants, non seulement les Champs-Élysées entiers et toute la
durée de l’après-midi, comme une immense étendue d’espace et de temps
sur chacun des points et à chacun des moments de laquelle il était
possible qu’apparût l’image de Gilberte, mais encore cette image,
elle-même, parce que derrière cette image je sentais se cacher la
raison pour laquelle elle m’était décochée en plein cœur, à quatre
heures au lieu de deux heures et demie, surmontée d’un chapeau de
visite à la place d’un béret de jeu, devant les «Ambassadeurs» et non
entre les deux guignols, je devinais quelqu’une de ces occupations où
je ne pouvais suivre Gilberte et qui la forçaient à sortir ou à rester
à la maison, j’étais en contact avec le mystère de sa vie inconnue.
C’était ce mystère aussi qui me troublait quand, courant sur l’ordre
de la fillette à la voix brève pour commencer tout de suite notre
partie de barres, j’apercevais Gilberte, si vive et brusque avec nous,
faisant une révérence à la dame aux Débats (qui lui disait: «Quel beau
soleil, on dirait du feu»), lui parlant avec un sourire timide, d’un
air compassé qui m’évoquait la jeune fille différente que Gilberte
devait être chez ses parents, avec les amis de ses parents, en visite,
dans toute son autre existence qui m’échappait. Mais de cette
existence personne ne me donnait l’impression comme M. Swann qui
venait un peu après pour retrouver sa fille. C’est que lui et Mme
Swann,--parce que leur fille habitait chez eux, parce que ses études,
ses jeux, ses amitiés dépendaient d’eux--contenaient pour moi, comme
Gilberte, peut-être même plus que Gilberte, comme il convenait à des
lieux tout-puissants sur elle en qui il aurait eu sa source, un
inconnu inaccessible, un charme douloureux. Tout ce qui les concernait
était de ma part l’objet d’une préoccupation si constante que les
jours où, comme ceux-là, M. Swann (que j’avais vu si souvent autrefois
sans qu’il excitât ma curiosité, quand il était lié avec mes parents)
venait chercher Gilberte aux Champs-Élysées, une fois calmés les
battements de cœur qu’avait excités en moi l’apparition de son chapeau
gris et de son manteau à pèlerine, son aspect m’impressionnait encore
comme celui d’un personnage historique sur lequel nous venons de lire
une série d’ouvrages et dont les moindres particularités nous
passionnent. Ses relations avec le comte de Paris qui, quand j’en
entendais parler à Combray, me semblaient indifférentes, prenaient
maintenant pour moi quelque chose de merveilleux, comme si personne
d’autre n’eût jamais connu les Orléans; elles le faisaient se détacher
vivement sur le fond vulgaire des promeneurs de différentes classes
qui encombraient cette allée des Champs-Élysées, et au milieu desquels
j’admirais qu’il consentît à figurer sans réclamer d’eux d’égards
spéciaux, qu’aucun d’ailleurs ne songeait à lui rendre, tant était
profond l’incognito dont il était enveloppé."
 :tokens 604
 :processed-at "2025-03-16T02:18:14.859329"
 :entities (list
  (entity :text "Françoise" :label "ORG" :start 11 :end 20) (entity :text "Gilberte" :label "ORG" :start 34 :end 42) (entity :text "«Vite," :label "ORG" :start 248 :end 254) (entity :text "Gilberte" :label "ORG" :start 294 :end 302) (entity :text "Elle" :label "ORG" :start 316 :end 320) (entity :text "Pendant" :label "ORG" :start 391 :end 398) (entity :text "Champs-Élysées," :label "ORG" :start 427 :end 442) (entity :text "Gilberte" :label "ORG" :start 443 :end 451) (entity :text "Mademoiselle" :label "ORG" :start 492 :end 504) (entity :text "Swann" :label "ORG" :start 573 :end 578) (entity :text "Gilberte" :label "ORG" :start 727 :end 735) (entity :text "Champs-Élysées" :label "ORG" :start 855 :end 869) (entity :text "Gilberte," :label "ORG" :start 1058 :end 1067) (entity :text "«Ambassadeurs»" :label "ORG" :start 1340 :end 1354) (entity :text "Gilberte" :label "ORG" :start 1453 :end 1461) (entity :text "Gilberte," :label "ORG" :start 1737 :end 1746) (entity :text "Débats" :label "ORG" :start 1813 :end 1819) (entity :text "«Quel" :label "ORG" :start 1837 :end 1842) (entity :text "Gilberte" :label "ORG" :start 1975 :end 1983) (entity :text "Mais" :label "ORG" :start 2103 :end 2107) (entity :text "Swann" :label "ORG" :start 2172 :end 2177) (entity :text "Gilberte," :label "ORG" :start 2387 :end 2396) (entity :text "Gilberte," :label "ORG" :start 2421 :end 2430) (entity :text "Tout" :label "ORG" :start 2564 :end 2568) (entity :text "Swann" :label "ORG" :start 2685 :end 2690) (entity :text "Gilberte" :label "ORG" :start 2814 :end 2822) (entity :text "Champs-Élysées," :label "ORG" :start 2827 :end 2842) (entity :text "Paris" :label "ORG" :start 3180 :end 3185) (entity :text "Combray," :label "ORG" :start 3221 :end 3229) (entity :text "Orléans;" :label "ORG" :start 3368 :end 3376) (entity :text "Champs-Élysées," :label "ORG" :start 3509 :end 3524)
 )
 :sentences (list
  (sentence :text "J’emmenais Françoise au-devant de Gilberte jusqu’à l’Arc-de-Triomphe,
nous ne la rencontrions pas, et je revenais vers la pelouse persuadé
qu’elle ne viendrait plus, quand, devant les chevaux de bois, la
fillette à la voix brève se jetait sur moi: «Vite, vite, il y a déjà
un quart d’heure que Gilberte est arrivée" :start 0 :end 314) (sentence :text "Elle va repartir bientôt" :start 315 :end 340) (sentence :text "On vous attend pour faire une partie de barres" :start 341 :end 388) (sentence :text "» Pendant que je
montais l’avenue des Champs-Élysées, Gilberte était venue par la rue
Boissy-d’Anglas, Mademoiselle ayant profité du beau temps pour faire
des courses pour elle; et M" :start 389 :end 571) (sentence :text "Swann allait venir chercher sa fille" :start 572 :end 609) (sentence :text "Aussi c’était ma faute; je n’aurais pas dû m’éloigner de la pelouse;
car on ne savait jamais sûrement par quel côté Gilberte viendrait, si
ce serait plus ou moins tard, et cette attente finissait par me rendre
plus émouvants, non seulement les Champs-Élysées entiers et toute la
durée de l’après-midi, comme une immense étendue d’espace et de temps
sur chacun des points et à chacun des moments de laquelle il était
possible qu’apparût l’image de Gilberte, mais encore cette image,
elle-même, parce que derrière cette image je sentais se cacher la
raison pour laquelle elle m’était décochée en plein cœur, à quatre
heures au lieu de deux heures et demie, surmontée d’un chapeau de
visite à la place d’un béret de jeu, devant les «Ambassadeurs» et non
entre les deux guignols, je devinais quelqu’une de ces occupations où
je ne pouvais suivre Gilberte et qui la forçaient à sortir ou à rester
à la maison, j’étais en contact avec le mystère de sa vie inconnue" :start 610 :end 1569) (sentence :text "C’était ce mystère aussi qui me troublait quand, courant sur l’ordre
de la fillette à la voix brève pour commencer tout de suite notre
partie de barres, j’apercevais Gilberte, si vive et brusque avec nous,
faisant une révérence à la dame aux Débats (qui lui disait: «Quel beau
soleil, on dirait du feu»), lui parlant avec un sourire timide, d’un
air compassé qui m’évoquait la jeune fille différente que Gilberte
devait être chez ses parents, avec les amis de ses parents, en visite,
dans toute son autre existence qui m’échappait" :start 1570 :end 2101) (sentence :text "Mais de cette
existence personne ne me donnait l’impression comme M" :start 2102 :end 2170) (sentence :text "Swann qui
venait un peu après pour retrouver sa fille" :start 2171 :end 2225) (sentence :text "C’est que lui et Mme
Swann,--parce que leur fille habitait chez eux, parce que ses études,
ses jeux, ses amitiés dépendaient d’eux--contenaient pour moi, comme
Gilberte, peut-être même plus que Gilberte, comme il convenait à des
lieux tout-puissants sur elle en qui il aurait eu sa source, un
inconnu inaccessible, un charme douloureux" :start 2226 :end 2562) (sentence :text "Tout ce qui les concernait
était de ma part l’objet d’une préoccupation si constante que les
jours où, comme ceux-là, M" :start 2563 :end 2683) (sentence :text "Swann (que j’avais vu si souvent autrefois
sans qu’il excitât ma curiosité, quand il était lié avec mes parents)
venait chercher Gilberte aux Champs-Élysées, une fois calmés les
battements de cœur qu’avait excités en moi l’apparition de son chapeau
gris et de son manteau à pèlerine, son aspect m’impressionnait encore
comme celui d’un personnage historique sur lequel nous venons de lire
une série d’ouvrages et dont les moindres particularités nous
passionnent" :start 2684 :end 3147) (sentence :text "Ses relations avec le comte de Paris qui, quand j’en
entendais parler à Combray, me semblaient indifférentes, prenaient
maintenant pour moi quelque chose de merveilleux, comme si personne
d’autre n’eût jamais connu les Orléans; elles le faisaient se détacher
vivement sur le fond vulgaire des promeneurs de différentes classes
qui encombraient cette allée des Champs-Élysées, et au milieu desquels
j’admirais qu’il consentît à figurer sans réclamer d’eux d’égards
spéciaux, qu’aucun d’ailleurs ne songeait à lui rendre, tant était
profond l’incognito dont il était enveloppé" :start 3148 :end 3723)
 ))