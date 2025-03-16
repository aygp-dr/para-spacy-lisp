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
 :text "Le plus grand charme du côté de Guermantes, c’est qu’on y avait
presque tout le temps à côté de soi le cours de la Vivonne. On la
traversait une première fois, dix minutes après avoir quitté la
maison, sur une passerelle dite le Pont-Vieux. Dès le lendemain de
notre arrivée, le jour de Pâques, après le sermon s’il faisait beau
temps, je courais jusque-là, voir dans ce désordre d’un matin de
grande fête où quelques préparatifs somptueux font paraître plus
sordides les ustensiles de ménage qui traînent encore, la rivière qui
se promenait déjà en bleu-ciel entre les terres encore noires et nues,
accompagnée seulement d’une bande de coucous arrivés trop tôt et de
primevères en avance, cependant que çà et là une violette au bec bleu
laissait fléchir sa tige sous le poids de la goutte d’odeur qu’elle
tenait dans son cornet. Le Pont-Vieux débouchait dans un sentier de
halage qui à cet endroit se tapissait l’été du feuillage bleu d’un
noisetier sous lequel un pêcheur en chapeau de paille avait pris
racine. A Combray où je savais quelle individualité de maréchal
ferrant ou de garçon épicier était dissimulée sous l’uniforme du
suisse ou le surplis de l’enfant de chœur, ce pêcheur est la seule
personne dont je n’aie jamais découvert l’identité. Il devait
connaître mes parents, car il soulevait son chapeau quand nous
passions; je voulais alors demander son nom, mais on me faisait signe
de me taire pour ne pas effrayer le poisson. Nous nous engagions dans
le sentier de halage qui dominait le courant d’un talus de plusieurs
pieds; de l’autre côté la rive était basse, étendue en vastes prés
jusqu’au village et jusqu’à la gare qui en était distante. Ils étaient
semés des restes, à demi enfouis dans l’herbe, du château des anciens
comtes de Combray qui au moyen âge avait de ce côté le cours de la
Vivonne comme défense contre les attaques des sires de Guermantes et
des abbés de Martinville. Ce n’étaient plus que quelques fragments de
tours bossuant la prairie, à peine apparents, quelques créneaux d’où
jadis l’arbalétrier lançait des pierres, d’où le guetteur surveillait
Novepont, Clairefontaine, Martinville-le-Sec, Bailleau-l’Exempt,
toutes terres vassales de Guermantes entre lesquelles Combray était
enclavé, aujourd’hui au ras de l’herbe, dominés par les enfants de
l’école des frères qui venaient là apprendre leurs leçons ou jouer aux
récréations;--passé presque descendu dans la terre, couché au bord de
l’eau comme un promeneur qui prend le frais, mais me donnant fort à
songer, me faisant ajouter dans le nom de Combray à la petite ville
d’aujourd’hui une cité très différente, retenant mes pensées par son
visage incompréhensible et d’autrefois qu’il cachait à demi sous les
boutons d’or. Ils étaient fort nombreux à cet endroit qu’ils avaient
choisi pour leurs jeux sur l’herbe, isolés, par couples, par troupes,
jaunes comme un jaune d’œuf, brillants d’autant plus, me semblait-il,
que ne pouvant dériver vers aucune velléité de dégustation le plaisir
que leur vue me causait, je l’accumulais dans leur surface dorée,
jusqu’à ce qu’il devînt assez puissant pour produire de l’inutile
beauté; et cela dès ma plus petite enfance, quand du sentier de halage
je tendais les bras vers eux sans pouvoir épeler complètement leur
joli nom de Princes de contes de fées français, venus peut-être il y a
bien des siècles d’Asie mais apatriés pour toujours au village,
contents du modeste horizon, aimant le soleil et le bord de l’eau,
fidèles à la petite vue de la gare, gardant encore pourtant comme
certaines de nos vieilles toiles peintes, dans leur simplicité
populaire, un poétique éclat d’orient."
 :tokens 596
 :processed-at "2025-03-16T02:18:14.171142"
 :entities (list
  (entity :text "Guermantes," :label "ORG" :start 32 :end 43) (entity :text "Vivonne." :label "ORG" :start 115 :end 123) (entity :text "Pont-Vieux." :label "ORG" :start 229 :end 240) (entity :text "Pâques," :label "ORG" :start 287 :end 294) (entity :text "Pont-Vieux" :label "ORG" :start 833 :end 843) (entity :text "Combray" :label "ORG" :start 1016 :end 1023) (entity :text "Nous" :label "ORG" :start 1442 :end 1446) (entity :text "Combray" :label "ORG" :start 1754 :end 1761) (entity :text "Vivonne" :label "ORG" :start 1811 :end 1818) (entity :text "Guermantes" :label "ORG" :start 1866 :end 1876) (entity :text "Martinville." :label "ORG" :start 1893 :end 1905) (entity :text "Novepont," :label "ORG" :start 2089 :end 2098) (entity :text "Clairefontaine," :label "ORG" :start 2099 :end 2114) (entity :text "Guermantes" :label "ORG" :start 2180 :end 2190) (entity :text "Combray" :label "ORG" :start 2208 :end 2215) (entity :text "Combray" :label "ORG" :start 2540 :end 2547) (entity :text "Princes" :label "ORG" :start 3265 :end 3272)
 )
 :sentences (list
  (sentence :text "Le plus grand charme du côté de Guermantes, c’est qu’on y avait
presque tout le temps à côté de soi le cours de la Vivonne" :start 0 :end 122) (sentence :text "On la
traversait une première fois, dix minutes après avoir quitté la
maison, sur une passerelle dite le Pont-Vieux" :start 123 :end 239) (sentence :text "Dès le lendemain de
notre arrivée, le jour de Pâques, après le sermon s’il faisait beau
temps, je courais jusque-là, voir dans ce désordre d’un matin de
grande fête où quelques préparatifs somptueux font paraître plus
sordides les ustensiles de ménage qui traînent encore, la rivière qui
se promenait déjà en bleu-ciel entre les terres encore noires et nues,
accompagnée seulement d’une bande de coucous arrivés trop tôt et de
primevères en avance, cependant que çà et là une violette au bec bleu
laissait fléchir sa tige sous le poids de la goutte d’odeur qu’elle
tenait dans son cornet" :start 240 :end 828) (sentence :text "Le Pont-Vieux débouchait dans un sentier de
halage qui à cet endroit se tapissait l’été du feuillage bleu d’un
noisetier sous lequel un pêcheur en chapeau de paille avait pris
racine" :start 829 :end 1012) (sentence :text "A Combray où je savais quelle individualité de maréchal
ferrant ou de garçon épicier était dissimulée sous l’uniforme du
suisse ou le surplis de l’enfant de chœur, ce pêcheur est la seule
personne dont je n’aie jamais découvert l’identité" :start 1013 :end 1252) (sentence :text "Il devait
connaître mes parents, car il soulevait son chapeau quand nous
passions; je voulais alors demander son nom, mais on me faisait signe
de me taire pour ne pas effrayer le poisson" :start 1253 :end 1440) (sentence :text "Nous nous engagions dans
le sentier de halage qui dominait le courant d’un talus de plusieurs
pieds; de l’autre côté la rive était basse, étendue en vastes prés
jusqu’au village et jusqu’à la gare qui en était distante" :start 1441 :end 1660) (sentence :text "Ils étaient
semés des restes, à demi enfouis dans l’herbe, du château des anciens
comtes de Combray qui au moyen âge avait de ce côté le cours de la
Vivonne comme défense contre les attaques des sires de Guermantes et
des abbés de Martinville" :start 1661 :end 1904) (sentence :text "Ce n’étaient plus que quelques fragments de
tours bossuant la prairie, à peine apparents, quelques créneaux d’où
jadis l’arbalétrier lançait des pierres, d’où le guetteur surveillait
Novepont, Clairefontaine, Martinville-le-Sec, Bailleau-l’Exempt,
toutes terres vassales de Guermantes entre lesquelles Combray était
enclavé, aujourd’hui au ras de l’herbe, dominés par les enfants de
l’école des frères qui venaient là apprendre leurs leçons ou jouer aux
récréations;--passé presque descendu dans la terre, couché au bord de
l’eau comme un promeneur qui prend le frais, mais me donnant fort à
songer, me faisant ajouter dans le nom de Combray à la petite ville
d’aujourd’hui une cité très différente, retenant mes pensées par son
visage incompréhensible et d’autrefois qu’il cachait à demi sous les
boutons d’or" :start 1905 :end 2716) (sentence :text "Ils étaient fort nombreux à cet endroit qu’ils avaient
choisi pour leurs jeux sur l’herbe, isolés, par couples, par troupes,
jaunes comme un jaune d’œuf, brillants d’autant plus, me semblait-il,
que ne pouvant dériver vers aucune velléité de dégustation le plaisir
que leur vue me causait, je l’accumulais dans leur surface dorée,
jusqu’à ce qu’il devînt assez puissant pour produire de l’inutile
beauté; et cela dès ma plus petite enfance, quand du sentier de halage
je tendais les bras vers eux sans pouvoir épeler complètement leur
joli nom de Princes de contes de fées français, venus peut-être il y a
bien des siècles d’Asie mais apatriés pour toujours au village,
contents du modeste horizon, aimant le soleil et le bord de l’eau,
fidèles à la petite vue de la gare, gardant encore pourtant comme
certaines de nos vieilles toiles peintes, dans leur simplicité
populaire, un poétique éclat d’orient" :start 2717 :end 3621)
 ))