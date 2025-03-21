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
 :text "Pendant que ma tante devisait ainsi avec Françoise, j’accompagnais mes
parents à la messe. Que je l’aimais, que je la revois bien, notre
Église! Son vieux porche par lequel nous entrions, noir, grêlé comme
une écumoire, était dévié et profondément creusé aux angles (de même
que le bénitier où il nous conduisait) comme si le doux effleurement
des mantes des paysannes entrant à l’église et de leurs doigts timides
prenant de l’eau bénite, pouvait, répété pendant des siècles, acquérir
une force destructive, infléchir la pierre et l’entailler de sillons
comme en trace la roue des carrioles dans la borne contre laquelle
elle bute tous les jours. Ses pierres tombales, sous lesquelles la
noble poussière des abbés de Combray, enterrés là, faisait au chœur
comme un pavage spirituel, n’étaient plus elles-mêmes de la matière
inerte et dure, car le temps les avait rendues douces et fait couler
comme du miel hors des limites de leur propre équarrissure qu’ici
elles avaient dépassées d’un flot blond, entraînant à la dérive une
majuscule gothique en fleurs, noyant les violettes blanches du marbre;
et en deçà desquelles, ailleurs, elles s’étaient résorbées,
contractant encore l’elliptique inscription latine, introduisant un
caprice de plus dans la disposition de ces caractères abrégés,
rapprochant deux lettres d’un mot dont les autres avaient été
démesurément distendues. Ses vitraux ne chatoyaient jamais tant que
les jours où le soleil se montrait peu, de sorte que fît-il gris
dehors, on était sûr qu’il ferait beau dans l’église; l’un était
rempli dans toute sa grandeur par un seul personnage pareil à un Roi
de jeu de cartes, qui vivait là-haut, sous un dais architectural,
entre ciel et terre; (et dans le reflet oblique et bleu duquel,
parfois les jours de semaine, à midi, quand il n’y a pas d’office,--à
l’un de ces rares moments où l’église aérée, vacante, plus humaine,
luxueuse, avec du soleil sur son riche mobilier, avait l’air presque
habitable comme le hall de pierre sculptée et de verre peint, d’un
hôtel de style moyen âge,--on voyait s’agenouiller un instant Mme
Sazerat, posant sur le prie-Dieu voisin un paquet tout ficelé de
petits fours qu’elle venait de prendre chez le pâtissier d’en face et
qu’elle allait rapporter pour le déjeuner); dans un autre une montagne
de neige rose, au pied de laquelle se livrait un combat, semblait
avoir givré à même la verrière qu’elle boursouflait de son trouble
grésil comme une vitre à laquelle il serait resté des flocons, mais
des flocons éclairés par quelque aurore (par la même sans doute qui
empourprait le retable de l’autel de tons si frais qu’ils semblaient
plutôt posés là momentanément par une lueur du dehors prête à
s’évanouir que par des couleurs attachées à jamais à la pierre); et
tous étaient si anciens qu’on voyait çà et là leur vieillesse argentée
étinceler de la poussière des siècles et monter brillante et usée
jusqu’à la corde la trame de leur douce tapisserie de verre. Il y en
avait un qui était un haut compartiment divisé en une centaine de
petits vitraux rectangulaires où dominait le bleu, comme un grand jeu
de cartes pareil à ceux qui devaient distraire le roi Charles VI; mais
soit qu’un rayon eût brillé, soit que mon regard en bougeant eût
promené à travers la verrière tour à tour éteinte et rallumée, un
mouvant et précieux incendie, l’instant d’après elle avait pris
l’éclat changeant d’une traîne de paon, puis elle tremblait et
ondulait en une pluie flamboyante et fantastique qui dégouttait du
haut de la voûte sombre et rocheuse, le long des parois humides, comme
si c’était dans la nef de quelque grotte irisée de sinueux stalactites
que je suivais mes parents, qui portaient leur paroissien; un instant
après les petits vitraux en losange avaient pris la transparence
profonde, l’infrangible dureté de saphirs qui eussent été juxtaposés
sur quelque immense pectoral, mais derrière lesquels on sentait, plus
aimé que toutes ces richesses, un sourire momentané de soleil; il
était aussi reconnaissable dans le flot bleu et doux dont il baignait
les pierreries que sur le pavé de la place ou la paille du marché; et,
même à nos premiers dimanches quand nous étions arrivés avant Pâques,
il me consolait que la terre fût encore nue et noire, en faisant
épanouir, comme en un printemps historique et qui datait des
successeurs de saint Louis, ce tapis éblouissant et doré de myosotis
en verre."
 :tokens 730
 :processed-at "2025-03-16T02:18:13.893103"
 :entities (list
  (entity :text "Pendant" :label "ORG" :start 0 :end 7) (entity :text "Françoise," :label "ORG" :start 41 :end 51) (entity :text "Église!" :label "ORG" :start 137 :end 144) (entity :text "Combray," :label "ORG" :start 718 :end 726) (entity :text "Sazerat," :label "ORG" :start 2089 :end 2097) (entity :text "Charles" :label "ORG" :start 3159 :end 3166) (entity :text "Pâques," :label "ORG" :start 4186 :end 4193) (entity :text "Louis," :label "ORG" :start 4341 :end 4347)
 )
 :sentences (list
  (sentence :text "Pendant que ma tante devisait ainsi avec Françoise, j’accompagnais mes
parents à la messe" :start 0 :end 89) (sentence :text "Que je l’aimais, que je la revois bien, notre
Église! Son vieux porche par lequel nous entrions, noir, grêlé comme
une écumoire, était dévié et profondément creusé aux angles (de même
que le bénitier où il nous conduisait) comme si le doux effleurement
des mantes des paysannes entrant à l’église et de leurs doigts timides
prenant de l’eau bénite, pouvait, répété pendant des siècles, acquérir
une force destructive, infléchir la pierre et l’entailler de sillons
comme en trace la roue des carrioles dans la borne contre laquelle
elle bute tous les jours" :start 90 :end 646) (sentence :text "Ses pierres tombales, sous lesquelles la
noble poussière des abbés de Combray, enterrés là, faisait au chœur
comme un pavage spirituel, n’étaient plus elles-mêmes de la matière
inerte et dure, car le temps les avait rendues douces et fait couler
comme du miel hors des limites de leur propre équarrissure qu’ici
elles avaient dépassées d’un flot blond, entraînant à la dérive une
majuscule gothique en fleurs, noyant les violettes blanches du marbre;
et en deçà desquelles, ailleurs, elles s’étaient résorbées,
contractant encore l’elliptique inscription latine, introduisant un
caprice de plus dans la disposition de ces caractères abrégés,
rapprochant deux lettres d’un mot dont les autres avaient été
démesurément distendues" :start 647 :end 1375) (sentence :text "Ses vitraux ne chatoyaient jamais tant que
les jours où le soleil se montrait peu, de sorte que fît-il gris
dehors, on était sûr qu’il ferait beau dans l’église; l’un était
rempli dans toute sa grandeur par un seul personnage pareil à un Roi
de jeu de cartes, qui vivait là-haut, sous un dais architectural,
entre ciel et terre; (et dans le reflet oblique et bleu duquel,
parfois les jours de semaine, à midi, quand il n’y a pas d’office,--à
l’un de ces rares moments où l’église aérée, vacante, plus humaine,
luxueuse, avec du soleil sur son riche mobilier, avait l’air presque
habitable comme le hall de pierre sculptée et de verre peint, d’un
hôtel de style moyen âge,--on voyait s’agenouiller un instant Mme
Sazerat, posant sur le prie-Dieu voisin un paquet tout ficelé de
petits fours qu’elle venait de prendre chez le pâtissier d’en face et
qu’elle allait rapporter pour le déjeuner); dans un autre une montagne
de neige rose, au pied de laquelle se livrait un combat, semblait
avoir givré à même la verrière qu’elle boursouflait de son trouble
grésil comme une vitre à laquelle il serait resté des flocons, mais
des flocons éclairés par quelque aurore (par la même sans doute qui
empourprait le retable de l’autel de tons si frais qu’ils semblaient
plutôt posés là momentanément par une lueur du dehors prête à
s’évanouir que par des couleurs attachées à jamais à la pierre); et
tous étaient si anciens qu’on voyait çà et là leur vieillesse argentée
étinceler de la poussière des siècles et monter brillante et usée
jusqu’à la corde la trame de leur douce tapisserie de verre" :start 1376 :end 2959) (sentence :text "Il y en
avait un qui était un haut compartiment divisé en une centaine de
petits vitraux rectangulaires où dominait le bleu, comme un grand jeu
de cartes pareil à ceux qui devaient distraire le roi Charles VI; mais
soit qu’un rayon eût brillé, soit que mon regard en bougeant eût
promené à travers la verrière tour à tour éteinte et rallumée, un
mouvant et précieux incendie, l’instant d’après elle avait pris
l’éclat changeant d’une traîne de paon, puis elle tremblait et
ondulait en une pluie flamboyante et fantastique qui dégouttait du
haut de la voûte sombre et rocheuse, le long des parois humides, comme
si c’était dans la nef de quelque grotte irisée de sinueux stalactites
que je suivais mes parents, qui portaient leur paroissien; un instant
après les petits vitraux en losange avaient pris la transparence
profonde, l’infrangible dureté de saphirs qui eussent été juxtaposés
sur quelque immense pectoral, mais derrière lesquels on sentait, plus
aimé que toutes ces richesses, un sourire momentané de soleil; il
était aussi reconnaissable dans le flot bleu et doux dont il baignait
les pierreries que sur le pavé de la place ou la paille du marché; et,
même à nos premiers dimanches quand nous étions arrivés avant Pâques,
il me consolait que la terre fût encore nue et noire, en faisant
épanouir, comme en un printemps historique et qui datait des
successeurs de saint Louis, ce tapis éblouissant et doré de myosotis
en verre" :start 2960 :end 4397)
 ))