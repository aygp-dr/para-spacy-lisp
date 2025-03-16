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
 :text "D’autres encore, colossaux aussi, se tenaient sur les degrés d’un
escalier monumental que leur présence décorative et leur immobilité
marmoréenne auraient pu faire nommer comme celui du Palais Ducal:
«l’Escalier des Géants» et dans lequel Swann s’engagea avec la
tristesse de penser qu’Odette ne l’avait jamais gravi. Ah! avec quelle
joie au contraire il eût grimpé les étages noirs, mal odorants et
casse-cou de la petite couturière retirée, dans le «cinquième» de
laquelle il aurait été si heureux de payer plus cher qu’une
avant-scène hebdomadaire à l’Opéra le droit de passer la soirée quand
Odette y venait et même les autres jours pour pouvoir parler d’elle,
vivre avec les gens qu’elle avait l’habitude de voir quand il n’était
pas là et qui à cause de cela lui paraissaient recéler, de la vie de
sa maîtresse, quelque chose de plus réel, de plus inaccessible et de
plus mystérieux. Tandis que dans cet escalier pestilentiel et désiré
de l’ancienne couturière, comme il n’y en avait pas un second pour le
service, on voyait le soir devant chaque porte une boîte au lait vide
et sale préparée sur le paillasson, dans l’escalier magnifique et
dédaigné que Swann montait à ce moment, d’un côté et de l’autre, à des
hauteurs différentes, devant chaque anfractuosité que faisait dans le
mur la fenêtre de la loge, ou la porte d’un appartement, représentant
le service intérieur qu’ils dirigeaient et en faisant hommage aux
invités, un concierge, un majordome, un argentier (braves gens qui
vivaient le reste de la semaine un peu indépendants dans leur domaine,
y dînaient chez eux comme de petits boutiquiers et seraient peut-être
demain au service bourgeois d’un médecin ou d’un industriel) attentifs
à ne pas manquer aux recommandations qu’on leur avait faites avant de
leur laisser endosser la livrée éclatante qu’ils ne revêtaient qu’à de
rares intervalles et dans laquelle ils ne se sentaient pas très à leur
aise, se tenaient sous l’arcature de leur portail avec un éclat
pompeux tempéré de bonhomie populaire, comme des saints dans leur
niche; et un énorme suisse, habillé comme à l’église, frappait les
dalles de sa canne au passage de chaque arrivant. Parvenu en haut de
l’escalier le long duquel l’avait suivi un domestique à face blême,
avec une petite queue de cheveux, noués d’un catogan, derrière la
tête, comme un sacristain de Goya ou un tabellion du répertoire, Swann
passa devant un bureau où des valets, assis comme des notaires devant
de grands registres, se levèrent et inscrivirent son nom. Il traversa
alors un petit vestibule qui,--tel que certaines pièces aménagées par
leur propriétaire pour servir de cadre à une seule œuvre d’art, dont
elles tirent leur nom, et d’une nudité voulue, ne contiennent rien
d’autre--, exhibait à son entrée, comme quelque précieuse effigie de
Benvenuto Cellini représentant un homme de guet, un jeune valet de
pied, le corps légèrement fléchi en avant, dressant sur son hausse-col
rouge une figure plus rouge encore d’où s’échappaient des torrents de
feu, de timidité et de zèle, et qui, perçant les tapisseries
d’Aubusson tendues devant le salon où on écoutait la musique, de son
regard impétueux, vigilant, éperdu, avait l’air, avec une
impassibilité militaire ou une foi surnaturelle,--allégorie de
l’alarme, incarnation de l’attente, commémoration du
branle-bas,--d’épier, ange ou vigie, d’une tour de donjon ou de
cathédrale, l’apparition de l’ennemi ou l’heure du Jugement. Il ne
restait plus à Swann qu’à pénétrer dans la salle du concert dont un
huissier chargé de chaînes lui ouvrit les portes, en s’inclinant,
comme il lui aurait remis les clefs d’une ville. Mais il pensait à la
maison où il aurait pu se trouver en ce moment même, si Odette l’avait
permis, et le souvenir entrevu d’une boîte au lait vide sur un
paillasson lui serra le cœur."
 :tokens 625
 :processed-at "2025-03-16T02:18:14.656679"
 :entities (list
  (entity :text "Palais" :label "ORG" :start 186 :end 192) (entity :text "Ducal:" :label "ORG" :start 193 :end 199) (entity :text "Géants»" :label "ORG" :start 216 :end 223) (entity :text "Swann" :label "ORG" :start 239 :end 244) (entity :text "Odette" :label "ORG" :start 286 :end 292) (entity :text "Tandis" :label "ORG" :start 890 :end 896) (entity :text "Swann" :label "ORG" :start 1161 :end 1166) (entity :text "Parvenu" :label "ORG" :start 2163 :end 2170) (entity :text "Goya" :label "ORG" :start 2345 :end 2349) (entity :text "Swann" :label "ORG" :start 2381 :end 2386) (entity :text "Benvenuto" :label "ORG" :start 2802 :end 2811) (entity :text "Cellini" :label "ORG" :start 2812 :end 2819) (entity :text "Jugement." :label "ORG" :start 3429 :end 3438) (entity :text "Swann" :label "ORG" :start 3460 :end 3465) (entity :text "Mais" :label "ORG" :start 3628 :end 3632) (entity :text "Odette" :label "ORG" :start 3705 :end 3711)
 )
 :sentences (list
  (sentence :text "D’autres encore, colossaux aussi, se tenaient sur les degrés d’un
escalier monumental que leur présence décorative et leur immobilité
marmoréenne auraient pu faire nommer comme celui du Palais Ducal:
«l’Escalier des Géants» et dans lequel Swann s’engagea avec la
tristesse de penser qu’Odette ne l’avait jamais gravi" :start 0 :end 316) (sentence :text "Ah! avec quelle
joie au contraire il eût grimpé les étages noirs, mal odorants et
casse-cou de la petite couturière retirée, dans le «cinquième» de
laquelle il aurait été si heureux de payer plus cher qu’une
avant-scène hebdomadaire à l’Opéra le droit de passer la soirée quand
Odette y venait et même les autres jours pour pouvoir parler d’elle,
vivre avec les gens qu’elle avait l’habitude de voir quand il n’était
pas là et qui à cause de cela lui paraissaient recéler, de la vie de
sa maîtresse, quelque chose de plus réel, de plus inaccessible et de
plus mystérieux" :start 317 :end 888) (sentence :text "Tandis que dans cet escalier pestilentiel et désiré
de l’ancienne couturière, comme il n’y en avait pas un second pour le
service, on voyait le soir devant chaque porte une boîte au lait vide
et sale préparée sur le paillasson, dans l’escalier magnifique et
dédaigné que Swann montait à ce moment, d’un côté et de l’autre, à des
hauteurs différentes, devant chaque anfractuosité que faisait dans le
mur la fenêtre de la loge, ou la porte d’un appartement, représentant
le service intérieur qu’ils dirigeaient et en faisant hommage aux
invités, un concierge, un majordome, un argentier (braves gens qui
vivaient le reste de la semaine un peu indépendants dans leur domaine,
y dînaient chez eux comme de petits boutiquiers et seraient peut-être
demain au service bourgeois d’un médecin ou d’un industriel) attentifs
à ne pas manquer aux recommandations qu’on leur avait faites avant de
leur laisser endosser la livrée éclatante qu’ils ne revêtaient qu’à de
rares intervalles et dans laquelle ils ne se sentaient pas très à leur
aise, se tenaient sous l’arcature de leur portail avec un éclat
pompeux tempéré de bonhomie populaire, comme des saints dans leur
niche; et un énorme suisse, habillé comme à l’église, frappait les
dalles de sa canne au passage de chaque arrivant" :start 889 :end 2161) (sentence :text "Parvenu en haut de
l’escalier le long duquel l’avait suivi un domestique à face blême,
avec une petite queue de cheveux, noués d’un catogan, derrière la
tête, comme un sacristain de Goya ou un tabellion du répertoire, Swann
passa devant un bureau où des valets, assis comme des notaires devant
de grands registres, se levèrent et inscrivirent son nom" :start 2162 :end 2513) (sentence :text "Il traversa
alors un petit vestibule qui,--tel que certaines pièces aménagées par
leur propriétaire pour servir de cadre à une seule œuvre d’art, dont
elles tirent leur nom, et d’une nudité voulue, ne contiennent rien
d’autre--, exhibait à son entrée, comme quelque précieuse effigie de
Benvenuto Cellini représentant un homme de guet, un jeune valet de
pied, le corps légèrement fléchi en avant, dressant sur son hausse-col
rouge une figure plus rouge encore d’où s’échappaient des torrents de
feu, de timidité et de zèle, et qui, perçant les tapisseries
d’Aubusson tendues devant le salon où on écoutait la musique, de son
regard impétueux, vigilant, éperdu, avait l’air, avec une
impassibilité militaire ou une foi surnaturelle,--allégorie de
l’alarme, incarnation de l’attente, commémoration du
branle-bas,--d’épier, ange ou vigie, d’une tour de donjon ou de
cathédrale, l’apparition de l’ennemi ou l’heure du Jugement" :start 2514 :end 3437) (sentence :text "Il ne
restait plus à Swann qu’à pénétrer dans la salle du concert dont un
huissier chargé de chaînes lui ouvrit les portes, en s’inclinant,
comme il lui aurait remis les clefs d’une ville" :start 3438 :end 3626) (sentence :text "Mais il pensait à la
maison où il aurait pu se trouver en ce moment même, si Odette l’avait
permis, et le souvenir entrevu d’une boîte au lait vide sur un
paillasson lui serra le cœur" :start 3627 :end 3811)
 ))