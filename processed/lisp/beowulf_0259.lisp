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
 :text "Si la journée du samedi, qui commençait une heure plus tôt, et où elle
était privée de Françoise, passait plus lentement qu’une autre pour ma
tante, elle en attendait pourtant le retour avec impatience depuis le
commencement de la semaine, comme contenant toute la nouveauté et la
distraction que fût encore capable de supporter son corps affaibli et
maniaque. Et ce n’est pas cependant qu’elle n’aspirât parfois à
quelque plus grand changement, qu’elle n’eût de ces heures d’exception
où l’on a soif de quelque chose d’autre que ce qui est, et où ceux que
le manque d’énergie ou d’imagination empêche de tirer d’eux-mêmes un
principe de rénovation, demandent à la minute qui vient, au facteur
qui sonne, de leur apporter du nouveau, fût-ce du pire, une émotion,
une douleur; où la sensibilité, que le bonheur a fait taire comme une
harpe oisive, veut résonner sous une main, même brutale, et dût-elle
en être brisée; où la volonté, qui a si difficilement conquis le droit
d’être livrée sans obstacle à ses désirs, à ses peines, voudrait jeter
les rênes entre les mains d’événements impérieux, fussent-ils cruels.
Sans doute, comme les forces de ma tante, taries à la moindre fatigue,
ne lui revenaient que goutte à goutte au sein de son repos, le
réservoir était très long à remplir, et il se passait des mois avant
qu’elle eût ce léger trop-plein que d’autres dérivent dans l’activité
et dont elle était incapable de savoir et de décider comment user. Je
ne doute pas qu’alors--comme le désir de la remplacer par des pommes de
terre béchamel finissait au bout de quelque temps par naître du
plaisir même que lui causait le retour quotidien de la purée dont elle
ne se «fatiguait» pas,--elle ne tirât de l’accumulation de ces jours
monotones auxquels elle tenait tant, l’attente d’un cataclysme
domestique limité à la durée d’un moment mais qui la forcerait
d’accomplir une fois pour toutes un de ces changements dont elle
reconnaissait qu’ils lui seraient salutaires et auxquels elle ne
pouvait d’elle-même se décider. Elle nous aimait véritablement, elle
aurait eu plaisir à nous pleurer; survenant à un moment où elle se
sentait bien et n’était pas en sueur, la nouvelle que la maison était
la proie d’un incendie où nous avions déjà tous péri et qui n’allait
plus bientôt laisser subsister une seule pierre des murs, mais auquel
elle aurait eu tout le temps d’échapper sans se presser, à condition
de se lever tout de suite, a dû souvent hanter ses espérances comme
unissant aux avantages secondaires de lui faire savourer dans un long
regret toute sa tendresse pour nous, et d’être la stupéfaction du
village en conduisant notre deuil, courageuse et accablée, moribonde
debout, celui bien plus précieux de la forcer au bon moment, sans
temps à perdre, sans possibilité d’hésitation énervante, à aller
passer l’été dans sa jolie ferme de Mirougrain, où il y avait une
chute d’eau. Comme n’était jamais survenu aucun événement de ce genre,
dont elle méditait certainement la réussite quand elle était seule
absorbée dans ses innombrables jeux de patience (et qui l’eût
désespérée au premier commencement de réalisation, au premier de ces
petits faits imprévus, de cette parole annonçant une mauvaise nouvelle
et dont on ne peut plus jamais oublier l’accent, de tout ce qui porte
l’empreinte de la mort réelle, bien différente de sa possibilité
logique et abstraite), elle se rabattait pour rendre de temps en temps
sa vie plus intéressante, à y introduire des péripéties imaginaires
qu’elle suivait avec passion. Elle se plaisait à supposer tout d’un
coup que Françoise la volait, qu’elle recourait à la ruse pour s’en
assurer, la prenait sur le fait; habituée, quand elle faisait seule
des parties de cartes, à jouer à la fois son jeu et le jeu de son
adversaire, elle se prononçait à elle-même les excuses embarrassées de
Françoise et y répondait avec tant de feu et d’indignation que l’un de
nous, entrant à ces moments-là, la trouvait en nage, les yeux
étincelants, ses faux cheveux déplacés laissant voir son front chauve.
Françoise entendit peut-être parfois dans la chambre voisine de
mordants sarcasmes qui s’adressaient à elle et dont l’invention n’eût
pas soulagé suffisamment ma tante, s’ils étaient restés à l’état
purement immatériel, et si en les murmurant à mi-voix elle ne leur eût
donné plus de réalité. Quelquefois, ce «spectacle dans un lit» ne
suffisait même pas à ma tante, elle voulait faire jouer ses pièces.
Alors, un dimanche, toutes portes mystérieusement fermées, elle
confiait à Eulalie ses doutes sur la probité de Françoise, son
intention de se défaire d’elle, et une autre fois, à Françoise ses
soupçons de l’infidélité d’Eulalie, à qui la porte serait bientôt
fermée; quelques jours après elle était dégoûtée de sa confidente de
la veille et racoquinée avec le traître, lesquels d’ailleurs, pour la
prochaine représentation, échangeraient leurs emplois. Mais les
soupçons que pouvait parfois lui inspirer Eulalie, n’étaient qu’un feu
de paille et tombaient vite, faute d’aliment, Eulalie n’habitant pas
la maison. Il n’en était pas de même de ceux qui concernaient
Françoise, que ma tante sentait perpétuellement sous le même toit
qu’elle, sans que, par crainte de prendre froid si elle sortait de son
lit, elle osât descendre à la cuisine se rendre compte s’ils étaient
fondés. Peu à peu son esprit n’eut plus d’autre occupation que de
chercher à deviner ce qu’à chaque moment pouvait faire, et chercher à
lui cacher, Françoise. Elle remarquait les plus furtifs mouvements de
physionomie de celle-ci, une contradiction dans ses paroles, un désir
qu’elle semblait dissimuler. Et elle lui montrait qu’elle l’avait
démasquée, d’un seul mot qui faisait pâlir Françoise et que ma tante
semblait trouver, à enfoncer au cœur de la malheureuse, un
divertissement cruel. Et le dimanche suivant, une révélation
d’Eulalie,--comme ces découvertes qui ouvrent tout d’un coup un champ
insoupçonné à une science naissante et qui se traînait dans
l’ornière,--prouvait à ma tante qu’elle était dans ses suppositions
bien au-dessous de la vérité. «Mais Françoise doit le savoir
maintenant que vous y avez donné une voiture».--«Que je lui ai donné
une voiture!» s’écriait ma tante.--«Ah! mais je ne sais pas, moi, je
croyais, je l’avais vue qui passait maintenant en calèche, fière comme
Artaban, pour aller au marché de Roussainville. J’avais cru que
c’était Mme Octave qui lui avait donné.» Peu à peu Françoise et ma
tante, comme la bête et le chasseur, ne cessaient plus de tâcher de
prévenir les ruses l’une de l’autre. Ma mère craignait qu’il ne se
développât chez Françoise une véritable haine pour ma tante qui
l’offensait le plus durement qu’elle le pouvait. En tous cas Françoise
attachait de plus en plus aux moindres paroles, aux moindres gestes de
ma tante une attention extraordinaire. Quand elle avait quelque chose
à lui demander, elle hésitait longtemps sur la manière dont elle
devait s’y prendre. Et quand elle avait proféré sa requête, elle
observait ma tante à la dérobée, tâchant de deviner dans l’aspect de
sa figure ce que celle-ci avait pensé et déciderait. Et ainsi--tandis
que quelque artiste lisant les Mémoires du XVIIe siècle, et désirant
de se rapprocher du grand Roi, croit marcher dans cette voie en se
fabriquant une généalogie qui le fait descendre d’une famille
historique ou en entretenant une correspondance avec un des souverains
actuels de l’Europe, tourne précisément le dos à ce qu’il a le tort de
chercher sous des formes identiques et par conséquent mortes,--une
vieille dame de province qui ne faisait qu’obéir sincèrement à
d’irrésistibles manies et à une méchanceté née de l’oisiveté, voyait
sans avoir jamais pensé à Louis XIV les occupations les plus
insignifiantes de sa journée, concernant son lever, son déjeuner, son
repos, prendre par leur singularité despotique un peu de l’intérêt de
ce que Saint-Simon appelait la «mécanique» de la vie à Versailles, et
pouvait croire aussi que ses silences, une nuance de bonne humeur ou
de hauteur dans sa physionomie, étaient de la part de Françoise
l’objet d’un commentaire aussi passionné, aussi craintif que l’étaient
le silence, la bonne humeur, la hauteur du Roi quand un courtisan, ou
même les plus grands seigneurs, lui avaient remis une supplique, au
détour d’une allée, à Versailles."
 :tokens 1360
 :processed-at "2025-03-16T02:18:14.057896"
 :entities (list
  (entity :text "Françoise," :label "ORG" :start 87 :end 97) (entity :text "Sans" :label "ORG" :start 1114 :end 1118) (entity :text "Elle" :label "ORG" :start 2021 :end 2025) (entity :text "Mirougrain," :label "ORG" :start 2843 :end 2854) (entity :text "Comme" :label "ORG" :start 2886 :end 2891) (entity :text "Elle" :label "ORG" :start 3517 :end 3521) (entity :text "Françoise" :label "ORG" :start 3564 :end 3573) (entity :text "Françoise" :label "ORG" :start 3828 :end 3837) (entity :text "Françoise" :label "ORG" :start 4032 :end 4041) (entity :text "Quelquefois," :label "ORG" :start 4325 :end 4337) (entity :text "Eulalie" :label "ORG" :start 4511 :end 4518) (entity :text "Françoise," :label "ORG" :start 4548 :end 4558) (entity :text "Françoise" :label "ORG" :start 4616 :end 4625) (entity :text "Mais" :label "ORG" :start 4890 :end 4894) (entity :text "Eulalie," :label "ORG" :start 4941 :end 4949) (entity :text "Eulalie" :label "ORG" :start 5016 :end 5023) (entity :text "Françoise," :label "ORG" :start 5101 :end 5111) (entity :text "Françoise." :label "ORG" :start 5455 :end 5465) (entity :text "Elle" :label "ORG" :start 5466 :end 5470) (entity :text "Françoise" :label "ORG" :start 5692 :end 5701) (entity :text "«Mais" :label "ORG" :start 6066 :end 6071) (entity :text "Françoise" :label "ORG" :start 6072 :end 6081) (entity :text "Roussainville." :label "ORG" :start 6339 :end 6353) (entity :text "Octave" :label "ORG" :start 6382 :end 6388) (entity :text "Françoise" :label "ORG" :start 6421 :end 6430) (entity :text "Françoise" :label "ORG" :start 6588 :end 6597) (entity :text "Françoise" :label "ORG" :start 6697 :end 6706) (entity :text "Quand" :label "ORG" :start 6817 :end 6822) (entity :text "Mémoires" :label "ORG" :start 7148 :end 7156) (entity :text "Roi," :label "ORG" :start 7212 :end 7216) (entity :text "Louis" :label "ORG" :start 7682 :end 7687) (entity :text "Saint-Simon" :label "ORG" :start 7864 :end 7875) (entity :text "Versailles," :label "ORG" :start 7912 :end 7923) (entity :text "Françoise" :label "ORG" :start 8050 :end 8059) (entity :text "Versailles." :label "ORG" :start 8291 :end 8302)
 )
 :sentences (list
  (sentence :text "Si la journée du samedi, qui commençait une heure plus tôt, et où elle
était privée de Françoise, passait plus lentement qu’une autre pour ma
tante, elle en attendait pourtant le retour avec impatience depuis le
commencement de la semaine, comme contenant toute la nouveauté et la
distraction que fût encore capable de supporter son corps affaibli et
maniaque" :start 0 :end 359) (sentence :text "Et ce n’est pas cependant qu’elle n’aspirât parfois à
quelque plus grand changement, qu’elle n’eût de ces heures d’exception
où l’on a soif de quelque chose d’autre que ce qui est, et où ceux que
le manque d’énergie ou d’imagination empêche de tirer d’eux-mêmes un
principe de rénovation, demandent à la minute qui vient, au facteur
qui sonne, de leur apporter du nouveau, fût-ce du pire, une émotion,
une douleur; où la sensibilité, que le bonheur a fait taire comme une
harpe oisive, veut résonner sous une main, même brutale, et dût-elle
en être brisée; où la volonté, qui a si difficilement conquis le droit
d’être livrée sans obstacle à ses désirs, à ses peines, voudrait jeter
les rênes entre les mains d’événements impérieux, fussent-ils cruels" :start 360 :end 1112) (sentence :text "Sans doute, comme les forces de ma tante, taries à la moindre fatigue,
ne lui revenaient que goutte à goutte au sein de son repos, le
réservoir était très long à remplir, et il se passait des mois avant
qu’elle eût ce léger trop-plein que d’autres dérivent dans l’activité
et dont elle était incapable de savoir et de décider comment user" :start 1113 :end 1452) (sentence :text "Je
ne doute pas qu’alors--comme le désir de la remplacer par des pommes de
terre béchamel finissait au bout de quelque temps par naître du
plaisir même que lui causait le retour quotidien de la purée dont elle
ne se «fatiguait» pas,--elle ne tirât de l’accumulation de ces jours
monotones auxquels elle tenait tant, l’attente d’un cataclysme
domestique limité à la durée d’un moment mais qui la forcerait
d’accomplir une fois pour toutes un de ces changements dont elle
reconnaissait qu’ils lui seraient salutaires et auxquels elle ne
pouvait d’elle-même se décider" :start 1453 :end 2019) (sentence :text "Elle nous aimait véritablement, elle
aurait eu plaisir à nous pleurer; survenant à un moment où elle se
sentait bien et n’était pas en sueur, la nouvelle que la maison était
la proie d’un incendie où nous avions déjà tous péri et qui n’allait
plus bientôt laisser subsister une seule pierre des murs, mais auquel
elle aurait eu tout le temps d’échapper sans se presser, à condition
de se lever tout de suite, a dû souvent hanter ses espérances comme
unissant aux avantages secondaires de lui faire savourer dans un long
regret toute sa tendresse pour nous, et d’être la stupéfaction du
village en conduisant notre deuil, courageuse et accablée, moribonde
debout, celui bien plus précieux de la forcer au bon moment, sans
temps à perdre, sans possibilité d’hésitation énervante, à aller
passer l’été dans sa jolie ferme de Mirougrain, où il y avait une
chute d’eau" :start 2020 :end 2884) (sentence :text "Comme n’était jamais survenu aucun événement de ce genre,
dont elle méditait certainement la réussite quand elle était seule
absorbée dans ses innombrables jeux de patience (et qui l’eût
désespérée au premier commencement de réalisation, au premier de ces
petits faits imprévus, de cette parole annonçant une mauvaise nouvelle
et dont on ne peut plus jamais oublier l’accent, de tout ce qui porte
l’empreinte de la mort réelle, bien différente de sa possibilité
logique et abstraite), elle se rabattait pour rendre de temps en temps
sa vie plus intéressante, à y introduire des péripéties imaginaires
qu’elle suivait avec passion" :start 2885 :end 3515) (sentence :text "Elle se plaisait à supposer tout d’un
coup que Françoise la volait, qu’elle recourait à la ruse pour s’en
assurer, la prenait sur le fait; habituée, quand elle faisait seule
des parties de cartes, à jouer à la fois son jeu et le jeu de son
adversaire, elle se prononçait à elle-même les excuses embarrassées de
Françoise et y répondait avec tant de feu et d’indignation que l’un de
nous, entrant à ces moments-là, la trouvait en nage, les yeux
étincelants, ses faux cheveux déplacés laissant voir son front chauve" :start 3516 :end 4030) (sentence :text "Françoise entendit peut-être parfois dans la chambre voisine de
mordants sarcasmes qui s’adressaient à elle et dont l’invention n’eût
pas soulagé suffisamment ma tante, s’ils étaient restés à l’état
purement immatériel, et si en les murmurant à mi-voix elle ne leur eût
donné plus de réalité" :start 4031 :end 4323) (sentence :text "Quelquefois, ce «spectacle dans un lit» ne
suffisait même pas à ma tante, elle voulait faire jouer ses pièces" :start 4324 :end 4434) (sentence :text "Alors, un dimanche, toutes portes mystérieusement fermées, elle
confiait à Eulalie ses doutes sur la probité de Françoise, son
intention de se défaire d’elle, et une autre fois, à Françoise ses
soupçons de l’infidélité d’Eulalie, à qui la porte serait bientôt
fermée; quelques jours après elle était dégoûtée de sa confidente de
la veille et racoquinée avec le traître, lesquels d’ailleurs, pour la
prochaine représentation, échangeraient leurs emplois" :start 4435 :end 4888) (sentence :text "Mais les
soupçons que pouvait parfois lui inspirer Eulalie, n’étaient qu’un feu
de paille et tombaient vite, faute d’aliment, Eulalie n’habitant pas
la maison" :start 4889 :end 5048) (sentence :text "Il n’en était pas de même de ceux qui concernaient
Françoise, que ma tante sentait perpétuellement sous le même toit
qu’elle, sans que, par crainte de prendre froid si elle sortait de son
lit, elle osât descendre à la cuisine se rendre compte s’ils étaient
fondés" :start 5049 :end 5313) (sentence :text "Peu à peu son esprit n’eut plus d’autre occupation que de
chercher à deviner ce qu’à chaque moment pouvait faire, et chercher à
lui cacher, Françoise" :start 5314 :end 5464) (sentence :text "Elle remarquait les plus furtifs mouvements de
physionomie de celle-ci, une contradiction dans ses paroles, un désir
qu’elle semblait dissimuler" :start 5465 :end 5610) (sentence :text "Et elle lui montrait qu’elle l’avait
démasquée, d’un seul mot qui faisait pâlir Françoise et que ma tante
semblait trouver, à enfoncer au cœur de la malheureuse, un
divertissement cruel" :start 5611 :end 5797) (sentence :text "Et le dimanche suivant, une révélation
d’Eulalie,--comme ces découvertes qui ouvrent tout d’un coup un champ
insoupçonné à une science naissante et qui se traînait dans
l’ornière,--prouvait à ma tante qu’elle était dans ses suppositions
bien au-dessous de la vérité" :start 5798 :end 6064) (sentence :text "«Mais Françoise doit le savoir
maintenant que vous y avez donné une voiture»" :start 6065 :end 6142) (sentence :text "--«Que je lui ai donné
une voiture!» s’écriait ma tante" :start 6143 :end 6198) (sentence :text "--«Ah! mais je ne sais pas, moi, je
croyais, je l’avais vue qui passait maintenant en calèche, fière comme
Artaban, pour aller au marché de Roussainville" :start 6199 :end 6352) (sentence :text "J’avais cru que
c’était Mme Octave qui lui avait donné" :start 6353 :end 6408) (sentence :text "» Peu à peu Françoise et ma
tante, comme la bête et le chasseur, ne cessaient plus de tâcher de
prévenir les ruses l’une de l’autre" :start 6409 :end 6540) (sentence :text "Ma mère craignait qu’il ne se
développât chez Françoise une véritable haine pour ma tante qui
l’offensait le plus durement qu’elle le pouvait" :start 6541 :end 6683) (sentence :text "En tous cas Françoise
attachait de plus en plus aux moindres paroles, aux moindres gestes de
ma tante une attention extraordinaire" :start 6684 :end 6815) (sentence :text "Quand elle avait quelque chose
à lui demander, elle hésitait longtemps sur la manière dont elle
devait s’y prendre" :start 6816 :end 6931) (sentence :text "Et quand elle avait proféré sa requête, elle
observait ma tante à la dérobée, tâchant de deviner dans l’aspect de
sa figure ce que celle-ci avait pensé et déciderait" :start 6932 :end 7098) (sentence :text "Et ainsi--tandis
que quelque artiste lisant les Mémoires du XVIIe siècle, et désirant
de se rapprocher du grand Roi, croit marcher dans cette voie en se
fabriquant une généalogie qui le fait descendre d’une famille
historique ou en entretenant une correspondance avec un des souverains
actuels de l’Europe, tourne précisément le dos à ce qu’il a le tort de
chercher sous des formes identiques et par conséquent mortes,--une
vieille dame de province qui ne faisait qu’obéir sincèrement à
d’irrésistibles manies et à une méchanceté née de l’oisiveté, voyait
sans avoir jamais pensé à Louis XIV les occupations les plus
insignifiantes de sa journée, concernant son lever, son déjeuner, son
repos, prendre par leur singularité despotique un peu de l’intérêt de
ce que Saint-Simon appelait la «mécanique» de la vie à Versailles, et
pouvait croire aussi que ses silences, une nuance de bonne humeur ou
de hauteur dans sa physionomie, étaient de la part de Françoise
l’objet d’un commentaire aussi passionné, aussi craintif que l’étaient
le silence, la bonne humeur, la hauteur du Roi quand un courtisan, ou
même les plus grands seigneurs, lui avaient remis une supplique, au
détour d’une allée, à Versailles" :start 7099 :end 8301)
 ))