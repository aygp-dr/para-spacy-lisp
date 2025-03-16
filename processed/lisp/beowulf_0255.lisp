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
 :text "Comme nous y rencontrions parfois M. Vinteuil, très sévère pour «le
genre déplorable des jeunes gens négligés, dans les idées de l’époque
actuelle», ma mère prenait garde que rien ne clochât dans ma tenue,
puis on partait pour l’église. C’est au mois de Marie que je me
souviens d’avoir commencé à aimer les aubépines. N’étant pas seulement
dans l’église, si sainte, mais où nous avions le droit d’entrer,
posées sur l’autel même, inséparables des mystères à la célébration
desquels elles prenaient part, elles faisaient courir au milieu des
flambeaux et des vases sacrés leurs branches attachées horizontalement
les unes aux autres en un apprêt de fête, et qu’enjolivaient encore
les festons de leur feuillage sur lequel étaient semés à profusion,
comme sur une traîne de mariée, de petits bouquets de boutons d’une
blancheur éclatante. Mais, sans oser les regarder qu’à la dérobée, je
sentais que ces apprêts pompeux étaient vivants et que c’était la
nature elle-même qui, en creusant ces découpures dans les feuilles, en
ajoutant l’ornement suprême de ces blancs boutons, avait rendu cette
décoration digne de ce qui était à la fois une réjouissance populaire
et une solennité mystique. Plus haut s’ouvraient leurs corolles çà et
là avec une grâce insouciante, retenant si négligemment comme un
dernier et vaporeux atour le bouquet d’étamines, fines comme des fils
de la Vierge, qui les embrumait tout entières, qu’en suivant, qu’en
essayant de mimer au fond de moi le geste de leur efflorescence, je
l’imaginais comme si ç’avait été le mouvement de tête étourdi et
rapide, au regard coquet, aux pupilles diminuées, d’une blanche jeune
fille, distraite et vive. M. Vinteuil était venu avec sa fille se
placer à côté de nous. D’une bonne famille, il avait été le professeur
de piano des sœurs de ma grand’mère et quand, après la mort de sa
femme et un héritage qu’il avait fait, il s’était retiré auprès de
Combray, on le recevait souvent à la maison. Mais d’une pudibonderie
excessive, il cessa de venir pour ne pas rencontrer Swann qui avait
fait ce qu’il appelait «un mariage déplacé, dans le goût du jour». Ma
mère, ayant appris qu’il composait, lui avait dit par amabilité que,
quand elle irait le voir, il faudrait qu’il lui fît entendre quelque
chose de lui. M. Vinteuil en aurait eu beaucoup de joie, mais il
poussait la politesse et la bonté jusqu’à de tels scrupules que, se
mettant toujours à la place des autres, il craignait de les ennuyer et
de leur paraître égoïste s’il suivait ou seulement laissait deviner
son désir. Le jour où mes parents étaient allés chez lui en visite, je
les avais accompagnés, mais ils m’avaient permis de rester dehors et,
comme la maison de M. Vinteuil, Montjouvain, était en contre-bas d’un
monticule buissonneux, où je m’étais caché, je m’étais trouvé de
plain-pied avec le salon du second étage, à cinquante centimètres de
la fenêtre. Quand on était venu lui annoncer mes parents, j’avais vu
M. Vinteuil se hâter de mettre en évidence sur le piano un morceau de
musique. Mais une fois mes parents entrés, il l’avait retiré et mis
dans un coin. Sans doute avait-il craint de leur laisser supposer
qu’il n’était heureux de les voir que pour leur jouer de ses
compositions. Et chaque fois que ma mère était revenue à la charge au
cours de la visite, il avait répété plusieurs fois «Mais je ne sais
qui a mis cela sur le piano, ce n’est pas sa place», et avait détourné
la conversation sur d’autres sujets, justement parce que ceux-là
l’intéressaient moins. Sa seule passion était pour sa fille et
celle-ci qui avait l’air d’un garçon paraissait si robuste qu’on ne
pouvait s’empêcher de sourire en voyant les précautions que son père
prenait pour elle, ayant toujours des châles supplémentaires à lui
jeter sur les épaules. Ma grand’mère faisait remarquer quelle
expression douce délicate, presque timide passait souvent dans les
regards de cette enfant si rude, dont le visage était semé de taches
de son. Quand elle venait de prononcer une parole elle l’entendait
avec l’esprit de ceux à qui elle l’avait dite, s’alarmait des
malentendus possibles et on voyait s’éclairer, se découper comme par
transparence, sous la figure hommasse du «bon diable», les traits plus
fins d’une jeune fille éplorée."
 :tokens 711
 :processed-at "2025-03-16T02:18:14.051699"
 :entities (list
  (entity :text "Comme" :label "ORG" :start 0 :end 5) (entity :text "Vinteuil," :label "ORG" :start 37 :end 46) (entity :text "Marie" :label "ORG" :start 254 :end 259) (entity :text "Mais," :label "ORG" :start 838 :end 843) (entity :text "Plus" :label "ORG" :start 1190 :end 1194) (entity :text "Vierge," :label "ORG" :start 1374 :end 1381) (entity :text "Vinteuil" :label "ORG" :start 1668 :end 1676) (entity :text "Combray," :label "ORG" :start 1909 :end 1917) (entity :text "Mais" :label "ORG" :start 1954 :end 1958) (entity :text "Swann" :label "ORG" :start 2030 :end 2035) (entity :text "Vinteuil" :label "ORG" :start 2271 :end 2279) (entity :text "Vinteuil," :label "ORG" :start 2689 :end 2698) (entity :text "Montjouvain," :label "ORG" :start 2699 :end 2711) (entity :text "Quand" :label "ORG" :start 2883 :end 2888) (entity :text "Vinteuil" :label "ORG" :start 2943 :end 2951) (entity :text "Mais" :label "ORG" :start 3019 :end 3023) (entity :text "Sans" :label "ORG" :start 3092 :end 3096) (entity :text "«Mais" :label "ORG" :start 3326 :end 3331) (entity :text "Quand" :label "ORG" :start 3952 :end 3957)
 )
 :sentences (list
  (sentence :text "Comme nous y rencontrions parfois M" :start 0 :end 35) (sentence :text "Vinteuil, très sévère pour «le
genre déplorable des jeunes gens négligés, dans les idées de l’époque
actuelle», ma mère prenait garde que rien ne clochât dans ma tenue,
puis on partait pour l’église" :start 36 :end 235) (sentence :text "C’est au mois de Marie que je me
souviens d’avoir commencé à aimer les aubépines" :start 236 :end 317) (sentence :text "N’étant pas seulement
dans l’église, si sainte, mais où nous avions le droit d’entrer,
posées sur l’autel même, inséparables des mystères à la célébration
desquels elles prenaient part, elles faisaient courir au milieu des
flambeaux et des vases sacrés leurs branches attachées horizontalement
les unes aux autres en un apprêt de fête, et qu’enjolivaient encore
les festons de leur feuillage sur lequel étaient semés à profusion,
comme sur une traîne de mariée, de petits bouquets de boutons d’une
blancheur éclatante" :start 318 :end 836) (sentence :text "Mais, sans oser les regarder qu’à la dérobée, je
sentais que ces apprêts pompeux étaient vivants et que c’était la
nature elle-même qui, en creusant ces découpures dans les feuilles, en
ajoutant l’ornement suprême de ces blancs boutons, avait rendu cette
décoration digne de ce qui était à la fois une réjouissance populaire
et une solennité mystique" :start 837 :end 1188) (sentence :text "Plus haut s’ouvraient leurs corolles çà et
là avec une grâce insouciante, retenant si négligemment comme un
dernier et vaporeux atour le bouquet d’étamines, fines comme des fils
de la Vierge, qui les embrumait tout entières, qu’en suivant, qu’en
essayant de mimer au fond de moi le geste de leur efflorescence, je
l’imaginais comme si ç’avait été le mouvement de tête étourdi et
rapide, au regard coquet, aux pupilles diminuées, d’une blanche jeune
fille, distraite et vive" :start 1189 :end 1663) (sentence :text "M" :start 33 :end 35) (sentence :text "Vinteuil était venu avec sa fille se
placer à côté de nous" :start 1667 :end 1726) (sentence :text "D’une bonne famille, il avait été le professeur
de piano des sœurs de ma grand’mère et quand, après la mort de sa
femme et un héritage qu’il avait fait, il s’était retiré auprès de
Combray, on le recevait souvent à la maison" :start 1727 :end 1952) (sentence :text "Mais d’une pudibonderie
excessive, il cessa de venir pour ne pas rencontrer Swann qui avait
fait ce qu’il appelait «un mariage déplacé, dans le goût du jour»" :start 1953 :end 2111) (sentence :text "Ma
mère, ayant appris qu’il composait, lui avait dit par amabilité que,
quand elle irait le voir, il faudrait qu’il lui fît entendre quelque
chose de lui" :start 2112 :end 2266) (sentence :text "M" :start 33 :end 35) (sentence :text "Vinteuil en aurait eu beaucoup de joie, mais il
poussait la politesse et la bonté jusqu’à de tels scrupules que, se
mettant toujours à la place des autres, il craignait de les ennuyer et
de leur paraître égoïste s’il suivait ou seulement laissait deviner
son désir" :start 2270 :end 2535) (sentence :text "Le jour où mes parents étaient allés chez lui en visite, je
les avais accompagnés, mais ils m’avaient permis de rester dehors et,
comme la maison de M" :start 2536 :end 2687) (sentence :text "Vinteuil, Montjouvain, était en contre-bas d’un
monticule buissonneux, où je m’étais caché, je m’étais trouvé de
plain-pied avec le salon du second étage, à cinquante centimètres de
la fenêtre" :start 2688 :end 2881) (sentence :text "Quand on était venu lui annoncer mes parents, j’avais vu
M" :start 2882 :end 2941) (sentence :text "Vinteuil se hâter de mettre en évidence sur le piano un morceau de
musique" :start 2942 :end 3017) (sentence :text "Mais une fois mes parents entrés, il l’avait retiré et mis
dans un coin" :start 3018 :end 3090) (sentence :text "Sans doute avait-il craint de leur laisser supposer
qu’il n’était heureux de les voir que pour leur jouer de ses
compositions" :start 3091 :end 3217) (sentence :text "Et chaque fois que ma mère était revenue à la charge au
cours de la visite, il avait répété plusieurs fois «Mais je ne sais
qui a mis cela sur le piano, ce n’est pas sa place», et avait détourné
la conversation sur d’autres sujets, justement parce que ceux-là
l’intéressaient moins" :start 3218 :end 3500) (sentence :text "Sa seule passion était pour sa fille et
celle-ci qui avait l’air d’un garçon paraissait si robuste qu’on ne
pouvait s’empêcher de sourire en voyant les précautions que son père
prenait pour elle, ayant toujours des châles supplémentaires à lui
jeter sur les épaules" :start 3501 :end 3767) (sentence :text "Ma grand’mère faisait remarquer quelle
expression douce délicate, presque timide passait souvent dans les
regards de cette enfant si rude, dont le visage était semé de taches
de son" :start 3768 :end 3950) (sentence :text "Quand elle venait de prononcer une parole elle l’entendait
avec l’esprit de ceux à qui elle l’avait dite, s’alarmait des
malentendus possibles et on voyait s’éclairer, se découper comme par
transparence, sous la figure hommasse du «bon diable», les traits plus
fins d’une jeune fille éplorée" :start 3951 :end 4243)
 ))