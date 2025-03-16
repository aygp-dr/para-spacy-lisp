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
 :text "Quelle horreur! me disais-je: peut-on trouver ces automobiles
élégantes comme étaient les anciens attelages? je suis sans doute déjà
trop vieux--mais je ne suis pas fait pour un monde où les femmes
s’entravent dans des robes qui ne sont pas même en étoffe. A quoi bon
venir sous ces arbres, si rien n’est plus de ce qui s’assemblait sous
ces délicats feuillages rougissants, si la vulgarité et la folie ont
remplacé ce qu’ils encadraient d’exquis. Quelle horreur! Ma
consolation c’est de penser aux femmes que j’ai connues, aujourd’hui
qu’il n’y a plus d’élégance. Mais comment des gens qui contemplent ces
horribles créatures sous leurs chapeaux couverts d’une volière ou d’un
potager, pourraient-ils même sentir ce qu’il y avait de charmant à
voir Mme Swann coiffée d’une simple capote mauve ou d’un petit chapeau
que dépassait une seule fleur d’iris toute droite. Aurais-je même pu
leur faire comprendre l’émotion que j’éprouvais par les matins d’hiver
à rencontrer Mme Swann à pied, en paletot de loutre, coiffée d’un
simple béret que dépassaient deux couteaux de plumes de perdrix, mais
autour de laquelle la tiédeur factice de son appartement était
évoquée, rien que par le bouquet de violettes qui s’écrasait à son
corsage et dont le fleurissement vivant et bleu en face du ciel gris,
de l’air glacé, des arbres aux branches nues, avait le même charme de
ne prendre la saison et le temps que comme un cadre, et de vivre dans
une atmosphère humaine, dans l’atmosphère de cette femme, qu’avaient
dans les vases et les jardinières de son salon, près du feu allumé,
devant le canapé de soie, les fleurs qui regardaient par la fenêtre
close la neige tomber? D’ailleurs il ne m’eût pas suffi que les
toilettes fussent les mêmes qu’en ces années-là. A cause de la
solidarité qu’ont entre elles les différentes parties d’un souvenir et
que notre mémoire maintient équilibrées dans un assemblage où il ne
nous est pas permis de rien distraire, ni refuser, j’aurais voulu
pouvoir aller finir la journée chez une de ces femmes, devant une
tasse de thé, dans un appartement aux murs peints de couleurs sombres,
comme était encore celui de Mme Swann (l’année d’après celle où se
termine la première partie de ce récit) et où luiraient les feux
orangés, la rouge combustion, la flamme rose et blanche des
chrysanthèmes dans le crépuscule de novembre pendant des instants
pareils à ceux où (comme on le verra plus tard) je n’avais pas su
découvrir les plaisirs que je désirais. Mais maintenant, même ne me
conduisant à rien, ces instants me semblaient avoir eu eux-mêmes assez
de charme. Je voudrais les retrouver tels que je me les rappelais.
Hélas! il n’y avait plus que des appartements Louis XVI tout blancs,
émaillés d’hortensias bleus. D’ailleurs, on ne revenait plus à Paris
que très tard. Mme Swann m’eût répondu d’un château qu’elle ne
rentrerait qu’en février, bien après le temps des chrysanthèmes, si je
lui avais demandé de reconstituer pour moi les éléments de ce souvenir
que je sentais attaché à une année lointaine, à un millésime vers
lequel il ne m’était pas permis de remonter, les éléments de ce désir
devenu lui-même inaccessible comme le plaisir qu’il avait jadis
vainement poursuivi. Et il m’eût fallu aussi que ce fussent les mêmes
femmes, celles dont la toilette m’intéressait parce que, au temps où
je croyais encore, mon imagination les avait individualisées et les
avait pourvues d’une légende. Hélas! dans l’avenue des Acacias--l’allée
de Myrtes--j’en revis quelques-unes, vieilles, et qui n’étaient plus
que les ombres terribles de ce qu’elles avaient été, errant, cherchant
désespérément on ne sait quoi dans les bosquets virgiliens. Elles
avaient fui depuis longtemps que j’étais encore à interroger vainement
les chemins désertés. Le soleil s’était caché. La nature recommençait
à régner sur le Bois d’où s’était envolée l’idée qu’il était le Jardin
élyséen de la Femme; au-dessus du moulin factice le vrai ciel était
gris; le vent ridait le Grand Lac de petites vaguelettes, comme un
lac; de gros oiseaux parcouraient rapidement le Bois, comme un bois,
et poussant des cris aigus se posaient l’un après l’autre sur les
grands chênes qui sous leur couronne druidique et avec une majesté
dodonéenne semblaient proclamer le vide inhumain de la forêt
désaffectée, et m’aidaient à mieux comprendre la contradiction que
c’est de chercher dans la réalité les tableaux de la mémoire, auxquels
manquerait toujours le charme qui leur vient de la mémoire même et de
n’être pas perçus par les sens. La réalité que j’avais connue
n’existait plus. Il suffisait que Mme Swann n’arrivât pas toute
pareille au même moment, pour que l’Avenue fût autre. Les lieux que
nous avons connus n’appartiennent pas qu’au monde de l’espace où nous
les situons pour plus de facilité. Ils n’étaient qu’une mince tranche
au milieu d’impressions contiguës qui formaient notre vie d’alors; le
souvenir d’une certaine image n’est que le regret d’un certain
instant; et les maisons, les routes, les avenues, sont fugitives,
hélas, comme les années."
 :tokens 829
 :processed-at "2025-03-16T02:18:14.912972"
 :entities (list
  (entity :text "Quelle" :label "ORG" :start 0 :end 6) (entity :text "Quelle" :label "ORG" :start 448 :end 454) (entity :text "Mais" :label "ORG" :start 565 :end 569) (entity :text "Swann" :label "ORG" :start 754 :end 759) (entity :text "Swann" :label "ORG" :start 973 :end 978) (entity :text "Swann" :label "ORG" :start 2138 :end 2143) (entity :text "Mais" :label "ORG" :start 2470 :end 2474) (entity :text "Hélas!" :label "ORG" :start 2636 :end 2642) (entity :text "Louis" :label "ORG" :start 2682 :end 2687) (entity :text "Paris" :label "ORG" :start 2768 :end 2773) (entity :text "Swann" :label "ORG" :start 2793 :end 2798) (entity :text "Hélas!" :label "ORG" :start 3416 :end 3422) (entity :text "Elles" :label "ORG" :start 3658 :end 3663) (entity :text "Bois" :label "ORG" :start 3821 :end 3825) (entity :text "Jardin" :label "ORG" :start 3869 :end 3875) (entity :text "Femme;" :label "ORG" :start 3890 :end 3896) (entity :text "Grand" :label "ORG" :start 3968 :end 3973) (entity :text "Bois," :label "ORG" :start 4059 :end 4064) (entity :text "Swann" :label "ORG" :start 4582 :end 4587)
 )
 :sentences (list
  (sentence :text "Quelle horreur! me disais-je: peut-on trouver ces automobiles
élégantes comme étaient les anciens attelages? je suis sans doute déjà
trop vieux--mais je ne suis pas fait pour un monde où les femmes
s’entravent dans des robes qui ne sont pas même en étoffe" :start 0 :end 255) (sentence :text "A quoi bon
venir sous ces arbres, si rien n’est plus de ce qui s’assemblait sous
ces délicats feuillages rougissants, si la vulgarité et la folie ont
remplacé ce qu’ils encadraient d’exquis" :start 256 :end 446) (sentence :text "Quelle horreur! Ma
consolation c’est de penser aux femmes que j’ai connues, aujourd’hui
qu’il n’y a plus d’élégance" :start 447 :end 563) (sentence :text "Mais comment des gens qui contemplent ces
horribles créatures sous leurs chapeaux couverts d’une volière ou d’un
potager, pourraient-ils même sentir ce qu’il y avait de charmant à
voir Mme Swann coiffée d’une simple capote mauve ou d’un petit chapeau
que dépassait une seule fleur d’iris toute droite" :start 564 :end 865) (sentence :text "Aurais-je même pu
leur faire comprendre l’émotion que j’éprouvais par les matins d’hiver
à rencontrer Mme Swann à pied, en paletot de loutre, coiffée d’un
simple béret que dépassaient deux couteaux de plumes de perdrix, mais
autour de laquelle la tiédeur factice de son appartement était
évoquée, rien que par le bouquet de violettes qui s’écrasait à son
corsage et dont le fleurissement vivant et bleu en face du ciel gris,
de l’air glacé, des arbres aux branches nues, avait le même charme de
ne prendre la saison et le temps que comme un cadre, et de vivre dans
une atmosphère humaine, dans l’atmosphère de cette femme, qu’avaient
dans les vases et les jardinières de son salon, près du feu allumé,
devant le canapé de soie, les fleurs qui regardaient par la fenêtre
close la neige tomber? D’ailleurs il ne m’eût pas suffi que les
toilettes fussent les mêmes qu’en ces années-là" :start 866 :end 1748) (sentence :text "A cause de la
solidarité qu’ont entre elles les différentes parties d’un souvenir et
que notre mémoire maintient équilibrées dans un assemblage où il ne
nous est pas permis de rien distraire, ni refuser, j’aurais voulu
pouvoir aller finir la journée chez une de ces femmes, devant une
tasse de thé, dans un appartement aux murs peints de couleurs sombres,
comme était encore celui de Mme Swann (l’année d’après celle où se
termine la première partie de ce récit) et où luiraient les feux
orangés, la rouge combustion, la flamme rose et blanche des
chrysanthèmes dans le crépuscule de novembre pendant des instants
pareils à ceux où (comme on le verra plus tard) je n’avais pas su
découvrir les plaisirs que je désirais" :start 1749 :end 2468) (sentence :text "Mais maintenant, même ne me
conduisant à rien, ces instants me semblaient avoir eu eux-mêmes assez
de charme" :start 2469 :end 2578) (sentence :text "Je voudrais les retrouver tels que je me les rappelais" :start 2579 :end 2634) (sentence :text "Hélas! il n’y avait plus que des appartements Louis XVI tout blancs,
émaillés d’hortensias bleus" :start 2635 :end 2732) (sentence :text "D’ailleurs, on ne revenait plus à Paris
que très tard" :start 2733 :end 2787) (sentence :text "Mme Swann m’eût répondu d’un château qu’elle ne
rentrerait qu’en février, bien après le temps des chrysanthèmes, si je
lui avais demandé de reconstituer pour moi les éléments de ce souvenir
que je sentais attaché à une année lointaine, à un millésime vers
lequel il ne m’était pas permis de remonter, les éléments de ce désir
devenu lui-même inaccessible comme le plaisir qu’il avait jadis
vainement poursuivi" :start 2788 :end 3198) (sentence :text "Et il m’eût fallu aussi que ce fussent les mêmes
femmes, celles dont la toilette m’intéressait parce que, au temps où
je croyais encore, mon imagination les avait individualisées et les
avait pourvues d’une légende" :start 3199 :end 3414) (sentence :text "Hélas! dans l’avenue des Acacias--l’allée
de Myrtes--j’en revis quelques-unes, vieilles, et qui n’étaient plus
que les ombres terribles de ce qu’elles avaient été, errant, cherchant
désespérément on ne sait quoi dans les bosquets virgiliens" :start 3415 :end 3656) (sentence :text "Elles
avaient fui depuis longtemps que j’étais encore à interroger vainement
les chemins désertés" :start 3657 :end 3755) (sentence :text "Le soleil s’était caché" :start 3756 :end 3780) (sentence :text "La nature recommençait
à régner sur le Bois d’où s’était envolée l’idée qu’il était le Jardin
élyséen de la Femme; au-dessus du moulin factice le vrai ciel était
gris; le vent ridait le Grand Lac de petites vaguelettes, comme un
lac; de gros oiseaux parcouraient rapidement le Bois, comme un bois,
et poussant des cris aigus se posaient l’un après l’autre sur les
grands chênes qui sous leur couronne druidique et avec une majesté
dodonéenne semblaient proclamer le vide inhumain de la forêt
désaffectée, et m’aidaient à mieux comprendre la contradiction que
c’est de chercher dans la réalité les tableaux de la mémoire, auxquels
manquerait toujours le charme qui leur vient de la mémoire même et de
n’être pas perçus par les sens" :start 3781 :end 4512) (sentence :text "La réalité que j’avais connue
n’existait plus" :start 4513 :end 4559) (sentence :text "Il suffisait que Mme Swann n’arrivât pas toute
pareille au même moment, pour que l’Avenue fût autre" :start 4560 :end 4660) (sentence :text "Les lieux que
nous avons connus n’appartiennent pas qu’au monde de l’espace où nous
les situons pour plus de facilité" :start 4661 :end 4779) (sentence :text "Ils n’étaient qu’une mince tranche
au milieu d’impressions contiguës qui formaient notre vie d’alors; le
souvenir d’une certaine image n’est que le regret d’un certain
instant; et les maisons, les routes, les avenues, sont fugitives,
hélas, comme les années" :start 4780 :end 5038)
 ))