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
 :text "J’assignais la première place à la simplicité, dans l’ordre des
mérites esthétiques et des grandeurs mondaines quand j’apercevais Mme
Swann à pied, dans une polonaise de drap, sur la tête un petit toquet
agrémenté d’une aile de lophophore, un bouquet de violettes au
corsage, pressée, traversant l’allée des Acacias comme si ç’avait été
seulement le chemin le plus court pour rentrer chez elle et répondant
d’un clin d’œil aux messieurs en voiture qui, reconnaissant de loin
sa silhouette, la saluaient et se disaient que personne n’avait autant
de chic. Mais au lieu de la simplicité, c’est le faste que je mettais
au plus haut rang, si, après que j’avais forcé Françoise, qui n’en
pouvait plus et disait que les jambes «lui rentraient», à faire les
cent pas pendant une heure, je voyais enfin, débouchant de l’allée qui
vient de la Porte Dauphine--image pour moi d’un prestige royal, d’une
arrivée souveraine telle qu’aucune reine véritable n’a pu m’en donner
l’impression dans la suite, parce que j’avais de leur pouvoir une
notion moins vague et plus expérimentale,--emportée par le vol de deux
chevaux ardents, minces et contournés comme on en voit dans les
dessins de Constantin Guys, portant établi sur son siège un énorme
cocher fourré comme un cosaque, à côté d’un petit groom rappelant le
«tigre» de «feu Baudenord», je voyais--ou plutôt je sentais imprimer sa
forme dans mon cœur par une nette et épuisante blessure--une
incomparable victoria, à dessein un peu haute et laissant passer à
travers son luxe «dernier cri» des allusions aux formes anciennes, au
fond de laquelle reposait avec abandon Mme Swann, ses cheveux
maintenant blonds avec une seule mèche grise ceints d’un mince bandeau
de fleurs, le plus souvent des violettes, d’où descendaient de longs
voiles, à la main une ombrelle mauve, aux lèvres un sourire ambigu où
je ne voyais que la bienveillance d’une Majesté et où il y avait
surtout la provocation de la cocotte, et qu’elle inclinait avec
douceur sur les personnes qui la saluaient. Ce sourire en réalité
disait aux uns: «Je me rappelle très bien, c’était exquis!»; à
d’autres: «Comme j’aurais aimé! ç’a été la mauvaise chance!»; à
d’autres: «Mais si vous voulez! Je vais suivre encore un moment la
file et dès que je pourrai, je couperai.» Quand passaient des
inconnus, elle laissait cependant autour de ses lèvres un sourire
oisif, comme tourné vers l’attente ou le souvenir d’un ami et qui
faisait dire: «Comme elle est belle!» Et pour certains hommes
seulement elle avait un sourire aigre, contraint, timide et froid et
qui signifiait: «Oui, rosse, je sais que vous avez une langue de
vipère, que vous ne pouvez pas vous tenir de parler! Est-ce que je
m’occupe de vous, moi!» Coquelin passait en discourant au milieu
d’amis qui l’écoutaient et faisait avec la main à des personnes en
voiture, un large bonjour de théâtre. Mais je ne pensais qu’à Mme
Swann et je faisais semblant de ne pas l’avoir vue, car je savais
qu’arrivée à la hauteur du Tir aux pigeons elle dirait à son cocher de
couper la file et de l’arrêter pour qu’elle pût descendre l’allée à
pied. Et les jours où je me sentais le courage de passer à côté
d’elle, j’entraînais Françoise dans cette direction. A un moment en
effet, c’est dans l’allée des piétons, marchant vers nous que
j’apercevais Mme Swann laissant s’étaler derrière elle la longue
traîne de sa robe mauve, vêtue, comme le peuple imagine les reines,
d’étoffes et de riches atours que les autres femmes ne portaient pas,
abaissant parfois son regard sur le manche de son ombrelle, faisant
peu attention aux personnes qui passaient, comme si sa grande affaire
et son but avaient été de prendre de l’exercice, sans penser qu’elle
était vue et que toutes les têtes étaient tournées vers elle. Parfois
pourtant quand elle s’était retournée pour appeler son lévrier, elle
jetait imperceptiblement un regard circulaire autour d’elle."
 :tokens 651
 :processed-at "2025-03-16T02:18:14.896960"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 134 :end 139) (entity :text "Mais" :label "ORG" :start 555 :end 559) (entity :text "Françoise," :label "ORG" :start 663 :end 673) (entity :text "Porte" :label "ORG" :start 834 :end 839) (entity :text "Constantin" :label "ORG" :start 1174 :end 1184) (entity :text "Guys," :label "ORG" :start 1185 :end 1190) (entity :text "Baudenord»," :label "ORG" :start 1315 :end 1326) (entity :text "Swann," :label "ORG" :start 1612 :end 1618) (entity :text "Majesté" :label "ORG" :start 1881 :end 1888) (entity :text "«Comme" :label "ORG" :start 2109 :end 2115) (entity :text "«Mais" :label "ORG" :start 2173 :end 2178) (entity :text "Quand" :label "ORG" :start 2272 :end 2277) (entity :text "«Comme" :label "ORG" :start 2438 :end 2444) (entity :text "«Oui," :label "ORG" :start 2571 :end 2576) (entity :text "Coquelin" :label "ORG" :start 2711 :end 2719) (entity :text "Mais" :label "ORG" :start 2857 :end 2861) (entity :text "Swann" :label "ORG" :start 2885 :end 2890) (entity :text "Françoise" :label "ORG" :start 3175 :end 3184) (entity :text "Swann" :label "ORG" :start 3301 :end 3306) (entity :text "Parfois" :label "ORG" :start 3756 :end 3763)
 )
 :sentences (list
  (sentence :text "J’assignais la première place à la simplicité, dans l’ordre des
mérites esthétiques et des grandeurs mondaines quand j’apercevais Mme
Swann à pied, dans une polonaise de drap, sur la tête un petit toquet
agrémenté d’une aile de lophophore, un bouquet de violettes au
corsage, pressée, traversant l’allée des Acacias comme si ç’avait été
seulement le chemin le plus court pour rentrer chez elle et répondant
d’un clin d’œil aux messieurs en voiture qui, reconnaissant de loin
sa silhouette, la saluaient et se disaient que personne n’avait autant
de chic" :start 0 :end 553) (sentence :text "Mais au lieu de la simplicité, c’est le faste que je mettais
au plus haut rang, si, après que j’avais forcé Françoise, qui n’en
pouvait plus et disait que les jambes «lui rentraient», à faire les
cent pas pendant une heure, je voyais enfin, débouchant de l’allée qui
vient de la Porte Dauphine--image pour moi d’un prestige royal, d’une
arrivée souveraine telle qu’aucune reine véritable n’a pu m’en donner
l’impression dans la suite, parce que j’avais de leur pouvoir une
notion moins vague et plus expérimentale,--emportée par le vol de deux
chevaux ardents, minces et contournés comme on en voit dans les
dessins de Constantin Guys, portant établi sur son siège un énorme
cocher fourré comme un cosaque, à côté d’un petit groom rappelant le
«tigre» de «feu Baudenord», je voyais--ou plutôt je sentais imprimer sa
forme dans mon cœur par une nette et épuisante blessure--une
incomparable victoria, à dessein un peu haute et laissant passer à
travers son luxe «dernier cri» des allusions aux formes anciennes, au
fond de laquelle reposait avec abandon Mme Swann, ses cheveux
maintenant blonds avec une seule mèche grise ceints d’un mince bandeau
de fleurs, le plus souvent des violettes, d’où descendaient de longs
voiles, à la main une ombrelle mauve, aux lèvres un sourire ambigu où
je ne voyais que la bienveillance d’une Majesté et où il y avait
surtout la provocation de la cocotte, et qu’elle inclinait avec
douceur sur les personnes qui la saluaient" :start 554 :end 2012) (sentence :text "Ce sourire en réalité
disait aux uns: «Je me rappelle très bien, c’était exquis!»; à
d’autres: «Comme j’aurais aimé! ç’a été la mauvaise chance!»; à
d’autres: «Mais si vous voulez! Je vais suivre encore un moment la
file et dès que je pourrai, je couperai" :start 2013 :end 2269) (sentence :text "» Quand passaient des
inconnus, elle laissait cependant autour de ses lèvres un sourire
oisif, comme tourné vers l’attente ou le souvenir d’un ami et qui
faisait dire: «Comme elle est belle!» Et pour certains hommes
seulement elle avait un sourire aigre, contraint, timide et froid et
qui signifiait: «Oui, rosse, je sais que vous avez une langue de
vipère, que vous ne pouvez pas vous tenir de parler! Est-ce que je
m’occupe de vous, moi!» Coquelin passait en discourant au milieu
d’amis qui l’écoutaient et faisait avec la main à des personnes en
voiture, un large bonjour de théâtre" :start 2270 :end 2855) (sentence :text "Mais je ne pensais qu’à Mme
Swann et je faisais semblant de ne pas l’avoir vue, car je savais
qu’arrivée à la hauteur du Tir aux pigeons elle dirait à son cocher de
couper la file et de l’arrêter pour qu’elle pût descendre l’allée à
pied" :start 2856 :end 3094) (sentence :text "Et les jours où je me sentais le courage de passer à côté
d’elle, j’entraînais Françoise dans cette direction" :start 3095 :end 3205) (sentence :text "A un moment en
effet, c’est dans l’allée des piétons, marchant vers nous que
j’apercevais Mme Swann laissant s’étaler derrière elle la longue
traîne de sa robe mauve, vêtue, comme le peuple imagine les reines,
d’étoffes et de riches atours que les autres femmes ne portaient pas,
abaissant parfois son regard sur le manche de son ombrelle, faisant
peu attention aux personnes qui passaient, comme si sa grande affaire
et son but avaient été de prendre de l’exercice, sans penser qu’elle
était vue et que toutes les têtes étaient tournées vers elle" :start 3206 :end 3754) (sentence :text "Parfois
pourtant quand elle s’était retournée pour appeler son lévrier, elle
jetait imperceptiblement un regard circulaire autour d’elle" :start 3755 :end 3892)
 ))