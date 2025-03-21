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
 :text "La cousine de mon grand-père,--ma grand’tante,--chez qui nous habitions,
était la mère de cette tante Léonie qui, depuis la mort de son mari,
mon oncle Octave, n’avait plus voulu quitter, d’abord Combray, puis à
Combray sa maison, puis sa chambre, puis son lit et ne «descendait»
plus, toujours couchée dans un état incertain de chagrin, de débilité
physique, de maladie, d’idée fixe et de dévotion. Son appartement
particulier donnait sur la rue Saint-Jacques qui aboutissait beaucoup
plus loin au Grand-Pré (par opposition au Petit-Pré, verdoyant au
milieu de la ville, entre trois rues), et qui, unie, grisâtre, avec
les trois hautes marches de grès presque devant chaque porte, semblait
comme un défilé pratiqué par un tailleur d’images gothiques à même la
pierre où il eût sculpté une crèche ou un calvaire. Ma tante
n’habitait plus effectivement que deux chambres contiguës, restant
l’après-midi dans l’une pendant qu’on aérait l’autre. C’étaient de ces
chambres de province qui,--de même qu’en certains pays des parties
entières de l’air ou de la mer sont illuminées ou parfumées par des
myriades de protozoaires que nous ne voyons pas,--nous enchantent des
mille odeurs qu’y dégagent les vertus, la sagesse, les habitudes,
toute une vie secrète, invisible, surabondante et morale que
l’atmosphère y tient en suspens; odeurs naturelles encore, certes, et
couleur du temps comme celles de la campagne voisine, mais déjà
casanières, humaines et renfermées, gelée exquise industrieuse et
limpide de tous les fruits de l’année qui ont quitté le verger pour
l’armoire; saisonnières, mais mobilières et domestiques, corrigeant le
piquant de la gelée blanche par la douceur du pain chaud, oisives et
ponctuelles comme une horloge de village, flâneuses et rangées,
insoucieuses et prévoyantes, lingères, matinales, dévotes, heureuses
d’une paix qui n’apporte qu’un surcroît d’anxiété et d’un prosaïsme
qui sert de grand réservoir de poésie à celui qui la traverse sans y
avoir vécu. L’air y était saturé de la fine fleur d’un silence si
nourricier, si succulent que je ne m’y avançais qu’avec une sorte de
gourmandise, surtout par ces premiers matins encore froids de la
semaine de Pâques où je le goûtais mieux parce que je venais seulement
d’arriver à Combray: avant que j’entrasse souhaiter le bonjour à ma
tante on me faisait attendre un instant, dans la première pièce où le
soleil, d’hiver encore, était venu se mettre au chaud devant le feu,
déjà allumé entre les deux briques et qui badigeonnait toute la
chambre d’une odeur de suie, en faisait comme un de ces grands
«devants de four» de campagne, ou de ces manteaux de cheminée de
châteaux, sous lesquels on souhaite que se déclarent dehors la pluie,
la neige, même quelque catastrophe diluvienne pour ajouter au confort
de la réclusion la poésie de l’hivernage; je faisais quelques pas du
prie-Dieu aux fauteuils en velours frappé, toujours revêtus d’un
appui-tête au crochet; et le feu cuisant comme une pâte les
appétissantes odeurs dont l’air de la chambre était tout grumeleux et
qu’avait déjà fait travailler et «lever» la fraîcheur humide et
ensoleillée du matin, il les feuilletait, les dorait, les godait, les
boursouflait, en faisant un invisible et palpable gâteau provincial,
un immense «chausson» où, à peine goûtés les arômes plus
croustillants, plus fins, plus réputés, mais plus secs aussi du
placard, de la commode, du papier à ramages, je revenais toujours avec
une convoitise inavouée m’engluer dans l’odeur médiane, poisseuse,
fade, indigeste et fruitée de couvre-lit à fleurs."
 :tokens 567
 :processed-at "2025-03-16T02:18:13.853200"
 :entities (list
  (entity :text "Léonie" :label "ORG" :start 102 :end 108) (entity :text "Octave," :label "ORG" :start 152 :end 159) (entity :text "Combray," :label "ORG" :start 196 :end 204) (entity :text "Combray" :label "ORG" :start 212 :end 219) (entity :text "Saint-Jacques" :label "ORG" :start 447 :end 460) (entity :text "Grand-Pré" :label "ORG" :start 499 :end 508) (entity :text "Petit-Pré," :label "ORG" :start 528 :end 538) (entity :text "Pâques" :label "ORG" :start 2181 :end 2187) (entity :text "Combray:" :label "ORG" :start 2253 :end 2261)
 )
 :sentences (list
  (sentence :text "La cousine de mon grand-père,--ma grand’tante,--chez qui nous habitions,
était la mère de cette tante Léonie qui, depuis la mort de son mari,
mon oncle Octave, n’avait plus voulu quitter, d’abord Combray, puis à
Combray sa maison, puis sa chambre, puis son lit et ne «descendait»
plus, toujours couchée dans un état incertain de chagrin, de débilité
physique, de maladie, d’idée fixe et de dévotion" :start 0 :end 398) (sentence :text "Son appartement
particulier donnait sur la rue Saint-Jacques qui aboutissait beaucoup
plus loin au Grand-Pré (par opposition au Petit-Pré, verdoyant au
milieu de la ville, entre trois rues), et qui, unie, grisâtre, avec
les trois hautes marches de grès presque devant chaque porte, semblait
comme un défilé pratiqué par un tailleur d’images gothiques à même la
pierre où il eût sculpté une crèche ou un calvaire" :start 399 :end 811) (sentence :text "Ma tante
n’habitait plus effectivement que deux chambres contiguës, restant
l’après-midi dans l’une pendant qu’on aérait l’autre" :start 812 :end 941) (sentence :text "C’étaient de ces
chambres de province qui,--de même qu’en certains pays des parties
entières de l’air ou de la mer sont illuminées ou parfumées par des
myriades de protozoaires que nous ne voyons pas,--nous enchantent des
mille odeurs qu’y dégagent les vertus, la sagesse, les habitudes,
toute une vie secrète, invisible, surabondante et morale que
l’atmosphère y tient en suspens; odeurs naturelles encore, certes, et
couleur du temps comme celles de la campagne voisine, mais déjà
casanières, humaines et renfermées, gelée exquise industrieuse et
limpide de tous les fruits de l’année qui ont quitté le verger pour
l’armoire; saisonnières, mais mobilières et domestiques, corrigeant le
piquant de la gelée blanche par la douceur du pain chaud, oisives et
ponctuelles comme une horloge de village, flâneuses et rangées,
insoucieuses et prévoyantes, lingères, matinales, dévotes, heureuses
d’une paix qui n’apporte qu’un surcroît d’anxiété et d’un prosaïsme
qui sert de grand réservoir de poésie à celui qui la traverse sans y
avoir vécu" :start 942 :end 1980) (sentence :text "L’air y était saturé de la fine fleur d’un silence si
nourricier, si succulent que je ne m’y avançais qu’avec une sorte de
gourmandise, surtout par ces premiers matins encore froids de la
semaine de Pâques où je le goûtais mieux parce que je venais seulement
d’arriver à Combray: avant que j’entrasse souhaiter le bonjour à ma
tante on me faisait attendre un instant, dans la première pièce où le
soleil, d’hiver encore, était venu se mettre au chaud devant le feu,
déjà allumé entre les deux briques et qui badigeonnait toute la
chambre d’une odeur de suie, en faisait comme un de ces grands
«devants de four» de campagne, ou de ces manteaux de cheminée de
châteaux, sous lesquels on souhaite que se déclarent dehors la pluie,
la neige, même quelque catastrophe diluvienne pour ajouter au confort
de la réclusion la poésie de l’hivernage; je faisais quelques pas du
prie-Dieu aux fauteuils en velours frappé, toujours revêtus d’un
appui-tête au crochet; et le feu cuisant comme une pâte les
appétissantes odeurs dont l’air de la chambre était tout grumeleux et
qu’avait déjà fait travailler et «lever» la fraîcheur humide et
ensoleillée du matin, il les feuilletait, les dorait, les godait, les
boursouflait, en faisant un invisible et palpable gâteau provincial,
un immense «chausson» où, à peine goûtés les arômes plus
croustillants, plus fins, plus réputés, mais plus secs aussi du
placard, de la commode, du papier à ramages, je revenais toujours avec
une convoitise inavouée m’engluer dans l’odeur médiane, poisseuse,
fade, indigeste et fruitée de couvre-lit à fleurs" :start 1981 :end 3555)
 ))