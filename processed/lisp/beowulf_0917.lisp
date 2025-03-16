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
 :text "Ne pouvant se séparer d’elle sans retour, du moins, s’il l’avait vue
sans séparations, sa douleur aurait fini par s’apaiser et peut-être
son amour par s’éteindre. Et du moment qu’elle ne voulait pas quitter
Paris à jamais, il eût souhaité qu’elle ne le quittât jamais. Du moins
comme il savait que la seule grande absence qu’elle faisait était tous
les ans celle d’août et septembre, il avait le loisir plusieurs mois
d’avance d’en dissoudre l’idée amère dans tout le Temps à venir qu’il
portait en lui par anticipation et qui, composé de jours homogènes aux
jours actuels, circulait transparent et froid en son esprit où il
entretenait la tristesse, mais sans lui causer de trop vives
souffrances. Mais cet avenir intérieur, ce fleuve, incolore, et libre,
voici qu’une seule parole d’Odette venait l’atteindre jusqu’en Swann
et, comme un morceau de glace, l’immobilisait, durcissait sa fluidité,
le faisait geler tout entier; et Swann s’était senti soudain rempli
d’une masse énorme et infrangible qui pesait sur les parois
intérieures de son être jusqu’à le faire éclater: c’est qu’Odette lui
avait dit, avec un regard souriant et sournois qui l’observait:
«Forcheville va faire un beau voyage, à la Pentecôte. Il va en
Égypte», et Swann avait aussitôt compris que cela signifiait: «Je vais
aller en Égypte à la Pentecôte avec Forcheville.» Et en effet, si
quelques jours après, Swann lui disait: «Voyons, à propos de ce voyage
que tu m’as dit que tu ferais avec Forcheville», elle répondait
étourdiment: «Oui, mon petit, nous partons le 19, on t’enverra une vue
des Pyramides.» Alors il voulait apprendre si elle était la maîtresse
de Forcheville, le lui demander à elle-même. Il savait que,
superstitieuse comme elle était, il y avait certains parjures qu’elle
ne ferait pas et puis la crainte, qui l’avait retenu jusqu’ici,
d’irriter Odette en l’interrogeant, de se faire détester d’elle,
n’existait plus maintenant qu’il avait perdu tout espoir d’en être
jamais aimé."
 :tokens 320
 :processed-at "2025-03-16T02:18:14.759064"
 :entities (list
  (entity :text "Paris" :label "ORG" :start 207 :end 212) (entity :text "Temps" :label "ORG" :start 468 :end 473) (entity :text "Mais" :label "ORG" :start 699 :end 703) (entity :text "Swann" :label "ORG" :start 820 :end 825) (entity :text "Swann" :label "ORG" :start 930 :end 935) (entity :text "«Forcheville" :label "ORG" :start 1159 :end 1171) (entity :text "Pentecôte." :label "ORG" :start 1202 :end 1212) (entity :text "Égypte»," :label "ORG" :start 1222 :end 1230) (entity :text "Swann" :label "ORG" :start 1234 :end 1239) (entity :text "Égypte" :label "ORG" :start 1302 :end 1308) (entity :text "Pentecôte" :label "ORG" :start 1314 :end 1323) (entity :text "Forcheville.»" :label "ORG" :start 1329 :end 1342) (entity :text "Swann" :label "ORG" :start 1381 :end 1386) (entity :text "«Voyons," :label "ORG" :start 1399 :end 1407) (entity :text "Forcheville»," :label "ORG" :start 1465 :end 1478) (entity :text "«Oui," :label "ORG" :start 1507 :end 1512) (entity :text "Pyramides.»" :label "ORG" :start 1569 :end 1580) (entity :text "Forcheville," :label "ORG" :start 1638 :end 1650) (entity :text "Odette" :label "ORG" :start 1839 :end 1845)
 )
 :sentences (list
  (sentence :text "Ne pouvant se séparer d’elle sans retour, du moins, s’il l’avait vue
sans séparations, sa douleur aurait fini par s’apaiser et peut-être
son amour par s’éteindre" :start 0 :end 161) (sentence :text "Et du moment qu’elle ne voulait pas quitter
Paris à jamais, il eût souhaité qu’elle ne le quittât jamais" :start 162 :end 267) (sentence :text "Du moins
comme il savait que la seule grande absence qu’elle faisait était tous
les ans celle d’août et septembre, il avait le loisir plusieurs mois
d’avance d’en dissoudre l’idée amère dans tout le Temps à venir qu’il
portait en lui par anticipation et qui, composé de jours homogènes aux
jours actuels, circulait transparent et froid en son esprit où il
entretenait la tristesse, mais sans lui causer de trop vives
souffrances" :start 268 :end 697) (sentence :text "Mais cet avenir intérieur, ce fleuve, incolore, et libre,
voici qu’une seule parole d’Odette venait l’atteindre jusqu’en Swann
et, comme un morceau de glace, l’immobilisait, durcissait sa fluidité,
le faisait geler tout entier; et Swann s’était senti soudain rempli
d’une masse énorme et infrangible qui pesait sur les parois
intérieures de son être jusqu’à le faire éclater: c’est qu’Odette lui
avait dit, avec un regard souriant et sournois qui l’observait:
«Forcheville va faire un beau voyage, à la Pentecôte" :start 698 :end 1211) (sentence :text "Il va en
Égypte», et Swann avait aussitôt compris que cela signifiait: «Je vais
aller en Égypte à la Pentecôte avec Forcheville" :start 1212 :end 1340) (sentence :text "» Et en effet, si
quelques jours après, Swann lui disait: «Voyons, à propos de ce voyage
que tu m’as dit que tu ferais avec Forcheville», elle répondait
étourdiment: «Oui, mon petit, nous partons le 19, on t’enverra une vue
des Pyramides" :start 1341 :end 1578) (sentence :text "» Alors il voulait apprendre si elle était la maîtresse
de Forcheville, le lui demander à elle-même" :start 1579 :end 1678) (sentence :text "Il savait que,
superstitieuse comme elle était, il y avait certains parjures qu’elle
ne ferait pas et puis la crainte, qui l’avait retenu jusqu’ici,
d’irriter Odette en l’interrogeant, de se faire détester d’elle,
n’existait plus maintenant qu’il avait perdu tout espoir d’en être
jamais aimé" :start 1679 :end 1972)
 ))