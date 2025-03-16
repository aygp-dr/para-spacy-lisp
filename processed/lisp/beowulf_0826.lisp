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
 :text "Or, la princesse des Laumes qu’on ne se serait pas attendu à voir chez
Mme de Saint-Euverte, venait précisément d’arriver. Pour montrer
qu’elle ne cherchait pas à faire sentir dans un salon où elle ne
venait que par condescendance, la supériorité de son rang, elle était
entrée en effaçant les épaules là même où il n’y avait aucune foule à
fendre et personne à laisser passer, restant exprès dans le fond, de
l’air d’y être à sa place, comme un roi qui fait la queue à la porte
d’un théâtre tant que les autorités n’ont pas été prévenues qu’il est
là; et, bornant simplement son regard--pour ne pas avoir l’air de
signaler sa présence et de réclamer des égards--à la considération d’un
dessin du tapis ou de sa propre jupe, elle se tenait debout à
l’endroit qui lui avait paru le plus modeste (et d’où elle savait bien
qu’une exclamation ravie de Mme de Saint-Euverte allait la tirer dès
que celle-ci l’aurait aperçue), à côté de Mme de Cambremer qui lui
était inconnue. Elle observait la mimique de sa voisine mélomane, mais
ne l’imitait pas. Ce n’est pas que, pour une fois qu’elle venait
passer cinq minutes chez Mme de Saint-Euverte, la princesse des Laumes
n’eût souhaité, pour que la politesse qu’elle lui faisait comptât
double, se montrer le plus aimable possible. Mais par nature, elle
avait horreur de ce qu’elle appelait «les exagérations» et tenait à
montrer qu’elle «n’avait pas à» se livrer à des manifestations qui
n’allaient pas avec le «genre» de la coterie où elle vivait, mais qui
pourtant d’autre part ne laissaient pas de l’impressionner, à la
faveur de cet esprit d’imitation voisin de la timidité que développe
chez les gens les plus sûrs d’eux-mêmes l’ambiance d’un milieu
nouveau, fût-il inférieur. Elle commençait à se demander si cette
gesticulation n’était pas rendue nécessaire par le morceau qu’on
jouait et qui ne rentrait peut-être pas dans le cadre de la musique
qu’elle avait entendue jusqu’à ce jour, si s’abstenir n’était pas
faire preuve d’incompréhension à l’égard de l’œuvre et d’inconvenance
vis-à-vis de la maîtresse de la maison: de sorte que pour exprimer par
une «cote mal taillée» ses sentiments contradictoires, tantôt elle se
contentait de remonter la bride de ses épaulettes ou d’assurer dans
ses cheveux blonds les petites boules de corail ou d’émail rose,
givrées de diamant, qui lui faisaient une coiffure simple et
charmante, en examinant avec une froide curiosité sa fougueuse
voisine, tantôt de son éventail elle battait pendant un instant la
mesure, mais, pour ne pas abdiquer son indépendance, à contretemps. Le
pianiste ayant terminé le morceau de Liszt et ayant commencé un
prélude de Chopin, Mme de Cambremer lança à Mme de Franquetot un
sourire attendri de satisfaction compétente et d’allusion au passé.
Elle avait appris dans sa jeunesse à caresser les phrases, au long col
sinueux et démesuré, de Chopin, si libres, si flexibles, si tactiles,
qui commencent par chercher et essayer leur place en dehors et bien
loin de la direction de leur départ, bien loin du point où on avait pu
espérer qu’atteindrait leur attouchement, et qui ne se jouent dans cet
écart de fantaisie que pour revenir plus délibérément,--d’un retour
plus prémédité, avec plus de précision, comme sur un cristal qui
résonnerait jusqu’à faire crier,--vous frapper au cœur."
 :tokens 550
 :processed-at "2025-03-16T02:18:14.665820"
 :entities (list
  (entity :text "Laumes" :label "ORG" :start 21 :end 27) (entity :text "Saint-Euverte," :label "ORG" :start 78 :end 92) (entity :text "Pour" :label "ORG" :start 123 :end 127) (entity :text "Saint-Euverte" :label "ORG" :start 855 :end 868) (entity :text "Cambremer" :label "ORG" :start 938 :end 947) (entity :text "Elle" :label "ORG" :start 972 :end 976) (entity :text "Saint-Euverte," :label "ORG" :start 1124 :end 1138) (entity :text "Laumes" :label "ORG" :start 1156 :end 1162) (entity :text "Mais" :label "ORG" :start 1274 :end 1278) (entity :text "Elle" :label "ORG" :start 1725 :end 1729) (entity :text "Liszt" :label "ORG" :start 2606 :end 2611) (entity :text "Chopin," :label "ORG" :start 2644 :end 2651) (entity :text "Cambremer" :label "ORG" :start 2659 :end 2668) (entity :text "Franquetot" :label "ORG" :start 2684 :end 2694) (entity :text "Elle" :label "ORG" :start 2766 :end 2770) (entity :text "Chopin," :label "ORG" :start 2861 :end 2868)
 )
 :sentences (list
  (sentence :text "Or, la princesse des Laumes qu’on ne se serait pas attendu à voir chez
Mme de Saint-Euverte, venait précisément d’arriver" :start 0 :end 121) (sentence :text "Pour montrer
qu’elle ne cherchait pas à faire sentir dans un salon où elle ne
venait que par condescendance, la supériorité de son rang, elle était
entrée en effaçant les épaules là même où il n’y avait aucune foule à
fendre et personne à laisser passer, restant exprès dans le fond, de
l’air d’y être à sa place, comme un roi qui fait la queue à la porte
d’un théâtre tant que les autorités n’ont pas été prévenues qu’il est
là; et, bornant simplement son regard--pour ne pas avoir l’air de
signaler sa présence et de réclamer des égards--à la considération d’un
dessin du tapis ou de sa propre jupe, elle se tenait debout à
l’endroit qui lui avait paru le plus modeste (et d’où elle savait bien
qu’une exclamation ravie de Mme de Saint-Euverte allait la tirer dès
que celle-ci l’aurait aperçue), à côté de Mme de Cambremer qui lui
était inconnue" :start 122 :end 970) (sentence :text "Elle observait la mimique de sa voisine mélomane, mais
ne l’imitait pas" :start 971 :end 1043) (sentence :text "Ce n’est pas que, pour une fois qu’elle venait
passer cinq minutes chez Mme de Saint-Euverte, la princesse des Laumes
n’eût souhaité, pour que la politesse qu’elle lui faisait comptât
double, se montrer le plus aimable possible" :start 1044 :end 1272) (sentence :text "Mais par nature, elle
avait horreur de ce qu’elle appelait «les exagérations» et tenait à
montrer qu’elle «n’avait pas à» se livrer à des manifestations qui
n’allaient pas avec le «genre» de la coterie où elle vivait, mais qui
pourtant d’autre part ne laissaient pas de l’impressionner, à la
faveur de cet esprit d’imitation voisin de la timidité que développe
chez les gens les plus sûrs d’eux-mêmes l’ambiance d’un milieu
nouveau, fût-il inférieur" :start 1273 :end 1723) (sentence :text "Elle commençait à se demander si cette
gesticulation n’était pas rendue nécessaire par le morceau qu’on
jouait et qui ne rentrait peut-être pas dans le cadre de la musique
qu’elle avait entendue jusqu’à ce jour, si s’abstenir n’était pas
faire preuve d’incompréhension à l’égard de l’œuvre et d’inconvenance
vis-à-vis de la maîtresse de la maison: de sorte que pour exprimer par
une «cote mal taillée» ses sentiments contradictoires, tantôt elle se
contentait de remonter la bride de ses épaulettes ou d’assurer dans
ses cheveux blonds les petites boules de corail ou d’émail rose,
givrées de diamant, qui lui faisaient une coiffure simple et
charmante, en examinant avec une froide curiosité sa fougueuse
voisine, tantôt de son éventail elle battait pendant un instant la
mesure, mais, pour ne pas abdiquer son indépendance, à contretemps" :start 1724 :end 2564) (sentence :text "Le
pianiste ayant terminé le morceau de Liszt et ayant commencé un
prélude de Chopin, Mme de Cambremer lança à Mme de Franquetot un
sourire attendri de satisfaction compétente et d’allusion au passé" :start 2565 :end 2764) (sentence :text "Elle avait appris dans sa jeunesse à caresser les phrases, au long col
sinueux et démesuré, de Chopin, si libres, si flexibles, si tactiles,
qui commencent par chercher et essayer leur place en dehors et bien
loin de la direction de leur départ, bien loin du point où on avait pu
espérer qu’atteindrait leur attouchement, et qui ne se jouent dans cet
écart de fantaisie que pour revenir plus délibérément,--d’un retour
plus prémédité, avec plus de précision, comme sur un cristal qui
résonnerait jusqu’à faire crier,--vous frapper au cœur" :start 2765 :end 3304)
 ))