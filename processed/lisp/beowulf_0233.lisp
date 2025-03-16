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
 :text "--«Je n’irai pas jusqu’à dire que c’est ce qu’il y a de plus vilain,
car s’il y a à Saint-Hilaire des parties qui méritent d’être visitées,
il y en a d’autres qui sont bien vieilles, dans ma pauvre basilique,
la seule de tout le diocèse qu’on n’ait même pas restaurée! Mon Dieu,
le porche est sale et antique, mais enfin d’un caractère majestueux;
passe même pour les tapisseries d’Esther dont personnellement je ne
donnerais pas deux sous, mais qui sont placées par les connaisseurs
tout de suite après celles de Sens. Je reconnais d’ailleurs, qu’à côté
de certains détails un peu réalistes, elles en présentent d’autres qui
témoignent d’un véritable esprit d’observation. Mais qu’on ne vienne
pas me parler des vitraux. Cela a-t-il du bon sens de laisser des
fenêtres qui ne donnent pas de jour et trompent même la vue par ces
reflets d’une couleur que je ne saurais définir, dans une église où il
n’y a pas deux dalles qui soient au même niveau et qu’on se refuse à
me remplacer sous prétexte que ce sont les tombes des abbés de Combray
et des seigneurs de Guermantes, les anciens comtes de Brabant. Les
ancêtres directs du duc de Guermantes d’aujourd’hui et aussi de la
Duchesse puisqu’elle est une demoiselle de Guermantes qui a épousé son
cousin.» (Ma grand’mère qui à force de se désintéresser des personnes
finissait par confondre tous les noms, chaque fois qu’on prononçait
celui de la Duchesse de Guermantes prétendait que ce devait être une
parente de Mme de Villeparisis. Tout le monde éclatait de rire; elle
tâchait de se défendre en alléguant une certaine lettre de faire part:
«Il me semblait me rappeler qu’il y avait du Guermantes là-dedans.» Et
pour une fois j’étais avec les autres contre elle, ne pouvant admettre
qu’il y eût un lien entre son amie de pension et la descendante de
Geneviève de Brabant.)--«Voyez Roussainville, ce n’est plus aujourd’hui
qu’une paroisse de fermiers, quoique dans l’antiquité cette localité
ait dû un grand essor au commerce de chapeaux de feutre et des
pendules. (Je ne suis pas certain de l’étymologie de Roussainville. Je
croirais volontiers que le nom primitif était Rouville (Radulfi villa)
comme Châteauroux (Castrum Radulfi) mais je vous parlerai de cela une
autre fois. Hé bien! l’église a des vitraux superbes, presque tous
modernes, et cette imposante Entrée de Louis-Philippe à Combray qui
serait mieux à sa place à Combray même, et qui vaut, dit-on, la
fameuse verrière de Chartres. Je voyais même hier le frère du docteur
Percepied qui est amateur et qui la regarde comme d’un plus beau
travail."
 :tokens 433
 :processed-at "2025-03-16T02:18:14.027542"
 :entities (list
  (entity :text "--«Je" :label "ORG" :start 0 :end 5) (entity :text "Saint-Hilaire" :label "ORG" :start 84 :end 97) (entity :text "Dieu," :label "ORG" :start 273 :end 278) (entity :text "Sens." :label "ORG" :start 514 :end 519) (entity :text "Mais" :label "ORG" :start 674 :end 678) (entity :text "Cela" :label "ORG" :start 722 :end 726) (entity :text "Combray" :label "ORG" :start 1032 :end 1039) (entity :text "Guermantes," :label "ORG" :start 1060 :end 1071) (entity :text "Brabant." :label "ORG" :start 1094 :end 1102) (entity :text "Guermantes" :label "ORG" :start 1134 :end 1144) (entity :text "Duchesse" :label "ORG" :start 1174 :end 1182) (entity :text "Guermantes" :label "ORG" :start 1217 :end 1227) (entity :text "Duchesse" :label "ORG" :start 1395 :end 1403) (entity :text "Guermantes" :label "ORG" :start 1407 :end 1417) (entity :text "Villeparisis." :label "ORG" :start 1470 :end 1483) (entity :text "Tout" :label "ORG" :start 1484 :end 1488) (entity :text "Guermantes" :label "ORG" :start 1637 :end 1647) (entity :text "Geneviève" :label "ORG" :start 1801 :end 1810) (entity :text "Brabant.)--«Voyez" :label "ORG" :start 1814 :end 1831) (entity :text "Roussainville," :label "ORG" :start 1832 :end 1846) (entity :text "Roussainville." :label "ORG" :start 2058 :end 2072) (entity :text "Rouville" :label "ORG" :start 2122 :end 2130) (entity :text "(Radulfi" :label "ORG" :start 2131 :end 2139) (entity :text "Châteauroux" :label "ORG" :start 2153 :end 2164) (entity :text "(Castrum" :label "ORG" :start 2165 :end 2173) (entity :text "Radulfi)" :label "ORG" :start 2174 :end 2182) (entity :text "Entrée" :label "ORG" :start 2313 :end 2319) (entity :text "Louis-Philippe" :label "ORG" :start 2323 :end 2337) (entity :text "Combray" :label "ORG" :start 2340 :end 2347) (entity :text "Combray" :label "ORG" :start 2378 :end 2385) (entity :text "Chartres." :label "ORG" :start 2436 :end 2445) (entity :text "Percepied" :label "PERSON" :start 2486 :end 2495)
 )
 :sentences (list
  (sentence :text "--«Je n’irai pas jusqu’à dire que c’est ce qu’il y a de plus vilain,
car s’il y a à Saint-Hilaire des parties qui méritent d’être visitées,
il y en a d’autres qui sont bien vieilles, dans ma pauvre basilique,
la seule de tout le diocèse qu’on n’ait même pas restaurée! Mon Dieu,
le porche est sale et antique, mais enfin d’un caractère majestueux;
passe même pour les tapisseries d’Esther dont personnellement je ne
donnerais pas deux sous, mais qui sont placées par les connaisseurs
tout de suite après celles de Sens" :start 0 :end 518) (sentence :text "Je reconnais d’ailleurs, qu’à côté
de certains détails un peu réalistes, elles en présentent d’autres qui
témoignent d’un véritable esprit d’observation" :start 519 :end 672) (sentence :text "Mais qu’on ne vienne
pas me parler des vitraux" :start 673 :end 720) (sentence :text "Cela a-t-il du bon sens de laisser des
fenêtres qui ne donnent pas de jour et trompent même la vue par ces
reflets d’une couleur que je ne saurais définir, dans une église où il
n’y a pas deux dalles qui soient au même niveau et qu’on se refuse à
me remplacer sous prétexte que ce sont les tombes des abbés de Combray
et des seigneurs de Guermantes, les anciens comtes de Brabant" :start 721 :end 1101) (sentence :text "Les
ancêtres directs du duc de Guermantes d’aujourd’hui et aussi de la
Duchesse puisqu’elle est une demoiselle de Guermantes qui a épousé son
cousin" :start 1102 :end 1251) (sentence :text "» (Ma grand’mère qui à force de se désintéresser des personnes
finissait par confondre tous les noms, chaque fois qu’on prononçait
celui de la Duchesse de Guermantes prétendait que ce devait être une
parente de Mme de Villeparisis" :start 1252 :end 1482) (sentence :text "Tout le monde éclatait de rire; elle
tâchait de se défendre en alléguant une certaine lettre de faire part:
«Il me semblait me rappeler qu’il y avait du Guermantes là-dedans" :start 1483 :end 1657) (sentence :text "» Et
pour une fois j’étais avec les autres contre elle, ne pouvant admettre
qu’il y eût un lien entre son amie de pension et la descendante de
Geneviève de Brabant" :start 1658 :end 1821) (sentence :text ")--«Voyez Roussainville, ce n’est plus aujourd’hui
qu’une paroisse de fermiers, quoique dans l’antiquité cette localité
ait dû un grand essor au commerce de chapeaux de feutre et des
pendules" :start 1822 :end 2013) (sentence :text "(Je ne suis pas certain de l’étymologie de Roussainville" :start 2014 :end 2071) (sentence :text "Je
croirais volontiers que le nom primitif était Rouville (Radulfi villa)
comme Châteauroux (Castrum Radulfi) mais je vous parlerai de cela une
autre fois" :start 2072 :end 2227) (sentence :text "Hé bien! l’église a des vitraux superbes, presque tous
modernes, et cette imposante Entrée de Louis-Philippe à Combray qui
serait mieux à sa place à Combray même, et qui vaut, dit-on, la
fameuse verrière de Chartres" :start 2228 :end 2444) (sentence :text "Je voyais même hier le frère du docteur
Percepied qui est amateur et qui la regarde comme d’un plus beau
travail" :start 2445 :end 2558)
 ))