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
 :text "Si elle me donnait parfois de ces marques d’amitié, elle me faisait
aussi de la peine en ayant l’air de ne pas avoir de plaisir à me voir,
et cela arrivait souvent les jours mêmes sur lesquels j’avais le plus
compté pour réaliser mes espérances. J’étais sûr que Gilberte
viendrait aux Champs-Élysées et j’éprouvais une allégresse qui me
paraissait seulement la vague anticipation d’un grand bonheur
quand,--entrant dès le matin au salon pour embrasser maman déjà toute
prête, la tour de ses cheveux noirs entièrement construite, et ses
belles mains blanches et potelées sentant encore le savon,--j’avais
appris, en voyant une colonne de poussière se tenir debout toute seule
au-dessus du piano, et en entendant un orgue de Barbarie jouer sous la
fenêtre: «En revenant de la revue», que l’hiver recevait jusqu’au soir
la visite inopinée et radieuse d’une journée de printemps. Pendant que
nous déjeunions, en ouvrant sa croisée, la dame d’en face avait fait
décamper en un clin d’œil, d’à côté de ma chaise,--rayant d’un seul
bond toute la largeur de notre salle à manger--un rayon qui y avait
commencé sa sieste et était déjà revenu la continuer l’instant
d’après. Au collège, à la classe d’une heure, le soleil me faisait
languir d’impatience et d’ennui en laissant traîner une lueur dorée
jusque sur mon pupitre, comme une invitation à la fête où je ne
pourrais arriver avant trois heures, jusqu’au moment où Françoise
venait me chercher à la sortie, et où nous nous acheminions vers les
Champs-Élysées par les rues décorées de lumière, encombrées par la
foule, et où les balcons, descellés par le soleil et vaporeux,
flottaient devant les maisons comme des nuages d’or. Hélas! aux
Champs-Élysées je ne trouvais pas Gilberte, elle n’était pas encore
arrivée. Immobile sur la pelouse nourrie par le soleil invisible qui
çà et là faisait flamboyer la pointe d’un brin d’herbe, et sur
laquelle les pigeons qui s’y étaient posés avaient l’air de sculptures
antiques que la pioche du jardinier a ramenées à la surface d’un sol
auguste, je restais les yeux fixés sur l’horizon, je m’attendais à
tout moment à voir apparaître l’image de Gilberte suivant son
institutrice, derrière la statue qui semblait tendre l’enfant qu’elle
portait et qui ruisselait de rayons, à la bénédiction du soleil. La
vieille lectrice des Débats était assise sur son fauteuil, toujours à
la même place, elle interpellait un gardien à qui elle faisait un
geste amical de la main en lui criant: «Quel joli temps!» Et la
préposée s’étant approchée d’elle pour percevoir le prix du fauteuil,
elle faisait mille minauderies en mettant dans l’ouverture de son gant
le ticket de dix centimes comme si ç’avait été un bouquet, pour qui
elle cherchait, par amabilité pour le donateur, la place la plus
flatteuse possible. Quand elle l’avait trouvée, elle faisait exécuter
une évolution circulaire à son cou, redressait son boa, et plantait
sur la chaisière, en lui montrant le bout de papier jaune qui
dépassait sur son poignet, le beau sourire dont une femme, en
indiquant son corsage à un jeune homme, lui dit: «Vous reconnaissez
vos roses!»"
 :tokens 515
 :processed-at "2025-03-16T02:18:14.857456"
 :entities (list
  (entity :text "Gilberte" :label "ORG" :start 262 :end 270) (entity :text "Champs-Élysées" :label "ORG" :start 285 :end 299) (entity :text "Barbarie" :label "ORG" :start 723 :end 731) (entity :text "Pendant" :label "ORG" :start 876 :end 883) (entity :text "Françoise" :label "ORG" :start 1411 :end 1420) (entity :text "Champs-Élysées" :label "ORG" :start 1490 :end 1504) (entity :text "Hélas!" :label "ORG" :start 1673 :end 1679) (entity :text "Champs-Élysées" :label "ORG" :start 1684 :end 1698) (entity :text "Gilberte," :label "ORG" :start 1718 :end 1727) (entity :text "Immobile" :label "ORG" :start 1761 :end 1769) (entity :text "Gilberte" :label "ORG" :start 2132 :end 2140) (entity :text "Débats" :label "ORG" :start 2312 :end 2318) (entity :text "«Quel" :label "ORG" :start 2466 :end 2471) (entity :text "Quand" :label "ORG" :start 2785 :end 2790) (entity :text "«Vous" :label "ORG" :start 3076 :end 3081)
 )
 :sentences (list
  (sentence :text "Si elle me donnait parfois de ces marques d’amitié, elle me faisait
aussi de la peine en ayant l’air de ne pas avoir de plaisir à me voir,
et cela arrivait souvent les jours mêmes sur lesquels j’avais le plus
compté pour réaliser mes espérances" :start 0 :end 244) (sentence :text "J’étais sûr que Gilberte
viendrait aux Champs-Élysées et j’éprouvais une allégresse qui me
paraissait seulement la vague anticipation d’un grand bonheur
quand,--entrant dès le matin au salon pour embrasser maman déjà toute
prête, la tour de ses cheveux noirs entièrement construite, et ses
belles mains blanches et potelées sentant encore le savon,--j’avais
appris, en voyant une colonne de poussière se tenir debout toute seule
au-dessus du piano, et en entendant un orgue de Barbarie jouer sous la
fenêtre: «En revenant de la revue», que l’hiver recevait jusqu’au soir
la visite inopinée et radieuse d’une journée de printemps" :start 245 :end 874) (sentence :text "Pendant que
nous déjeunions, en ouvrant sa croisée, la dame d’en face avait fait
décamper en un clin d’œil, d’à côté de ma chaise,--rayant d’un seul
bond toute la largeur de notre salle à manger--un rayon qui y avait
commencé sa sieste et était déjà revenu la continuer l’instant
d’après" :start 875 :end 1163) (sentence :text "Au collège, à la classe d’une heure, le soleil me faisait
languir d’impatience et d’ennui en laissant traîner une lueur dorée
jusque sur mon pupitre, comme une invitation à la fête où je ne
pourrais arriver avant trois heures, jusqu’au moment où Françoise
venait me chercher à la sortie, et où nous nous acheminions vers les
Champs-Élysées par les rues décorées de lumière, encombrées par la
foule, et où les balcons, descellés par le soleil et vaporeux,
flottaient devant les maisons comme des nuages d’or" :start 1164 :end 1671) (sentence :text "Hélas! aux
Champs-Élysées je ne trouvais pas Gilberte, elle n’était pas encore
arrivée" :start 1672 :end 1759) (sentence :text "Immobile sur la pelouse nourrie par le soleil invisible qui
çà et là faisait flamboyer la pointe d’un brin d’herbe, et sur
laquelle les pigeons qui s’y étaient posés avaient l’air de sculptures
antiques que la pioche du jardinier a ramenées à la surface d’un sol
auguste, je restais les yeux fixés sur l’horizon, je m’attendais à
tout moment à voir apparaître l’image de Gilberte suivant son
institutrice, derrière la statue qui semblait tendre l’enfant qu’elle
portait et qui ruisselait de rayons, à la bénédiction du soleil" :start 1760 :end 2286) (sentence :text "La
vieille lectrice des Débats était assise sur son fauteuil, toujours à
la même place, elle interpellait un gardien à qui elle faisait un
geste amical de la main en lui criant: «Quel joli temps!» Et la
préposée s’étant approchée d’elle pour percevoir le prix du fauteuil,
elle faisait mille minauderies en mettant dans l’ouverture de son gant
le ticket de dix centimes comme si ç’avait été un bouquet, pour qui
elle cherchait, par amabilité pour le donateur, la place la plus
flatteuse possible" :start 2287 :end 2783) (sentence :text "Quand elle l’avait trouvée, elle faisait exécuter
une évolution circulaire à son cou, redressait son boa, et plantait
sur la chaisière, en lui montrant le bout de papier jaune qui
dépassait sur son poignet, le beau sourire dont une femme, en
indiquant son corsage à un jeune homme, lui dit: «Vous reconnaissez
vos roses!»" :start 2784 :end 3106)
 ))