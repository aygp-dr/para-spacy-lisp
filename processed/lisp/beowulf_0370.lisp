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
 :text "Je trouvais important qu’elle ne partît pas avant que j’eusse pu la
regarder suffisamment, car je me rappelais que depuis des années je
considérais sa vue comme éminemment désirable, et je ne détachais pas
mes yeux d’elle, comme si chacun de mes regards eût pu matériellement
emporter et mettre en réserve en moi le souvenir du nez proéminent,
des joues rouges, de toutes ces particularités qui me semblaient
autant de renseignements précieux, authentiques et singuliers sur son
visage. Maintenant que me le faisaient trouver beau toutes les pensées
que j’y rapportais--et peut-être surtout, forme de l’instinct de
conservation des meilleures parties de nous-mêmes, ce désir qu’on a
toujours de ne pas avoir été déçu,--la replaçant (puisque c’était une
seule personne qu’elle et cette duchesse de Guermantes que j’avais
évoquée jusque-là) hors du reste de l’humanité dans laquelle la vue
pure et simple de son corps me l’avait fait un instant confondre, je
m’irritais en entendant dire autour de moi: «Elle est mieux que Mme
Sazerat, que Mlle Vinteuil», comme si elle leur eût été comparable. Et
mes regards s’arrêtant à ses cheveux blonds, à ses yeux bleus, à
l’attache de son cou et omettant les traits qui eussent pu me rappeler
d’autres visages, je m’écriais devant ce croquis volontairement
incomplet: «Qu’elle est belle! Quelle noblesse! Comme c’est bien une
fière Guermantes, la descendante de Geneviève de Brabant, que j’ai
devant moi!» Et l’attention avec laquelle j’éclairais son visage
l’isolait tellement, qu’aujourd’hui si je repense à cette cérémonie,
il m’est impossible de revoir une seule des personnes qui y
assistaient sauf elle et le suisse qui répondit affirmativement quand
je lui demandai si cette dame était bien Mme de Guermantes. Mais elle,
je la revois, surtout au moment du défilé dans la sacristie
qu’éclairait le soleil intermittent et chaud d’un jour de vent et
d’orage, et dans laquelle Mme de Guermantes se trouvait au milieu de
tous ces gens de Combray dont elle ne savait même pas les noms, mais
dont l’infériorité proclamait trop sa suprématie pour qu’elle ne
ressentît pas pour eux une sincère bienveillance et auxquels du reste
elle espérait imposer davantage encore à force de bonne grâce et de
simplicité. Aussi, ne pouvant émettre ces regards volontaires, chargés
d’une signification précise, qu’on adresse à quelqu’un qu’on connaît,
mais seulement laisser ses pensées distraites s’échapper incessamment
devant elle en un flot de lumière bleue qu’elle ne pouvait contenir,
elle ne voulait pas qu’il pût gêner, paraître dédaigner ces petites
gens qu’il rencontrait au passage, qu’il atteignait à tous moments. Je
revois encore, au-dessus de sa cravate mauve, soyeuse et gonflée, le
doux étonnement de ses yeux auxquels elle avait ajouté sans oser le
destiner à personne mais pour que tous pussent en prendre leur part un
sourire un peu timide de suzeraine qui a l’air de s’excuser auprès de
ses vassaux et de les aimer. Ce sourire tomba sur moi qui ne la
quittais pas des yeux. Alors me rappelant ce regard qu’elle avait
laissé s’arrêter sur moi, pendant la messe, bleu comme un rayon de
soleil qui aurait traversé le vitrail de Gilbert le Mauvais, je me
dis: «Mais sans doute elle fait attention à moi.» Je crus que je lui
plaisais, qu’elle penserait encore à moi quand elle aurait quitté
l’église, qu’à cause de moi elle serait peut-être triste le soir à
Guermantes. Et aussitôt je l’aimai, car s’il peut quelquefois suffire
pour que nous aimions une femme qu’elle nous regarde avec mépris comme
j’avais cru qu’avait fait Mlle Swann et que nous pensions qu’elle ne
pourra jamais nous appartenir, quelquefois aussi il peut suffire
qu’elle nous regarde avec bonté comme faisait Mme de Guermantes et que
nous pensions qu’elle pourra nous appartenir. Ses yeux bleuissaient
comme une pervenche impossible à cueillir et que pourtant elle m’eût
dédiée; et le soleil menacé par un nuage, mais dardant encore de toute
sa force sur la place et dans la sacristie, donnait une carnation de
géranium aux tapis rouges qu’on y avait étendus par terre pour la
solennité et sur lesquels s’avançait en souriant Mme de Guermantes, et
ajoutait à leur lainage un velouté rose, un épiderme de lumière, cette
sorte de tendresse, de sérieuse douceur dans la pompe et dans la joie
qui caractérisent certaines pages de Lohengrin, certaines peintures de
Carpaccio, et qui font comprendre que Baudelaire ait pu appliquer au
son de la trompette l’épithète de délicieux."
 :tokens 731
 :processed-at "2025-03-16T02:18:14.187415"
 :entities (list
  (entity :text "Maintenant" :label "ORG" :start 487 :end 497) (entity :text "Guermantes" :label "ORG" :start 797 :end 807) (entity :text "«Elle" :label "ORG" :start 1001 :end 1006) (entity :text "Sazerat," :label "ORG" :start 1025 :end 1033) (entity :text "Mlle" :label "ORG" :start 1038 :end 1042) (entity :text "Vinteuil»," :label "ORG" :start 1043 :end 1053) (entity :text "Quelle" :label "ORG" :start 1327 :end 1333) (entity :text "Comme" :label "ORG" :start 1344 :end 1349) (entity :text "Guermantes," :label "ORG" :start 1371 :end 1382) (entity :text "Geneviève" :label "ORG" :start 1401 :end 1410) (entity :text "Brabant," :label "ORG" :start 1414 :end 1422) (entity :text "Guermantes." :label "ORG" :start 1744 :end 1755) (entity :text "Mais" :label "ORG" :start 1756 :end 1760) (entity :text "Guermantes" :label "ORG" :start 1926 :end 1936) (entity :text "Combray" :label "ORG" :start 1979 :end 1986) (entity :text "Gilbert" :label "ORG" :start 3169 :end 3176) (entity :text "Mauvais," :label "ORG" :start 3180 :end 3188) (entity :text "«Mais" :label "ORG" :start 3200 :end 3205) (entity :text "Guermantes." :label "ORG" :start 3397 :end 3408) (entity :text "Mlle" :label "ORG" :start 3564 :end 3568) (entity :text "Swann" :label "ORG" :start 3569 :end 3574) (entity :text "Guermantes" :label "ORG" :start 3725 :end 3735) (entity :text "Guermantes," :label "ORG" :start 4142 :end 4153) (entity :text "Lohengrin," :label "ORG" :start 4335 :end 4345) (entity :text "Carpaccio," :label "ORG" :start 4369 :end 4379) (entity :text "Baudelaire" :label "ORG" :start 4407 :end 4417)
 )
 :sentences (list
  (sentence :text "Je trouvais important qu’elle ne partît pas avant que j’eusse pu la
regarder suffisamment, car je me rappelais que depuis des années je
considérais sa vue comme éminemment désirable, et je ne détachais pas
mes yeux d’elle, comme si chacun de mes regards eût pu matériellement
emporter et mettre en réserve en moi le souvenir du nez proéminent,
des joues rouges, de toutes ces particularités qui me semblaient
autant de renseignements précieux, authentiques et singuliers sur son
visage" :start 0 :end 485) (sentence :text "Maintenant que me le faisaient trouver beau toutes les pensées
que j’y rapportais--et peut-être surtout, forme de l’instinct de
conservation des meilleures parties de nous-mêmes, ce désir qu’on a
toujours de ne pas avoir été déçu,--la replaçant (puisque c’était une
seule personne qu’elle et cette duchesse de Guermantes que j’avais
évoquée jusque-là) hors du reste de l’humanité dans laquelle la vue
pure et simple de son corps me l’avait fait un instant confondre, je
m’irritais en entendant dire autour de moi: «Elle est mieux que Mme
Sazerat, que Mlle Vinteuil», comme si elle leur eût été comparable" :start 486 :end 1091) (sentence :text "Et
mes regards s’arrêtant à ses cheveux blonds, à ses yeux bleus, à
l’attache de son cou et omettant les traits qui eussent pu me rappeler
d’autres visages, je m’écriais devant ce croquis volontairement
incomplet: «Qu’elle est belle! Quelle noblesse! Comme c’est bien une
fière Guermantes, la descendante de Geneviève de Brabant, que j’ai
devant moi!» Et l’attention avec laquelle j’éclairais son visage
l’isolait tellement, qu’aujourd’hui si je repense à cette cérémonie,
il m’est impossible de revoir une seule des personnes qui y
assistaient sauf elle et le suisse qui répondit affirmativement quand
je lui demandai si cette dame était bien Mme de Guermantes" :start 1092 :end 1754) (sentence :text "Mais elle,
je la revois, surtout au moment du défilé dans la sacristie
qu’éclairait le soleil intermittent et chaud d’un jour de vent et
d’orage, et dans laquelle Mme de Guermantes se trouvait au milieu de
tous ces gens de Combray dont elle ne savait même pas les noms, mais
dont l’infériorité proclamait trop sa suprématie pour qu’elle ne
ressentît pas pour eux une sincère bienveillance et auxquels du reste
elle espérait imposer davantage encore à force de bonne grâce et de
simplicité" :start 1755 :end 2244) (sentence :text "Aussi, ne pouvant émettre ces regards volontaires, chargés
d’une signification précise, qu’on adresse à quelqu’un qu’on connaît,
mais seulement laisser ses pensées distraites s’échapper incessamment
devant elle en un flot de lumière bleue qu’elle ne pouvait contenir,
elle ne voulait pas qu’il pût gêner, paraître dédaigner ces petites
gens qu’il rencontrait au passage, qu’il atteignait à tous moments" :start 2245 :end 2648) (sentence :text "Je
revois encore, au-dessus de sa cravate mauve, soyeuse et gonflée, le
doux étonnement de ses yeux auxquels elle avait ajouté sans oser le
destiner à personne mais pour que tous pussent en prendre leur part un
sourire un peu timide de suzeraine qui a l’air de s’excuser auprès de
ses vassaux et de les aimer" :start 2649 :end 2958) (sentence :text "Ce sourire tomba sur moi qui ne la
quittais pas des yeux" :start 2959 :end 3016) (sentence :text "Alors me rappelant ce regard qu’elle avait
laissé s’arrêter sur moi, pendant la messe, bleu comme un rayon de
soleil qui aurait traversé le vitrail de Gilbert le Mauvais, je me
dis: «Mais sans doute elle fait attention à moi" :start 3017 :end 3242) (sentence :text "» Je crus que je lui
plaisais, qu’elle penserait encore à moi quand elle aurait quitté
l’église, qu’à cause de moi elle serait peut-être triste le soir à
Guermantes" :start 3243 :end 3407) (sentence :text "Et aussitôt je l’aimai, car s’il peut quelquefois suffire
pour que nous aimions une femme qu’elle nous regarde avec mépris comme
j’avais cru qu’avait fait Mlle Swann et que nous pensions qu’elle ne
pourra jamais nous appartenir, quelquefois aussi il peut suffire
qu’elle nous regarde avec bonté comme faisait Mme de Guermantes et que
nous pensions qu’elle pourra nous appartenir" :start 3408 :end 3787) (sentence :text "Ses yeux bleuissaient
comme une pervenche impossible à cueillir et que pourtant elle m’eût
dédiée; et le soleil menacé par un nuage, mais dardant encore de toute
sa force sur la place et dans la sacristie, donnait une carnation de
géranium aux tapis rouges qu’on y avait étendus par terre pour la
solennité et sur lesquels s’avançait en souriant Mme de Guermantes, et
ajoutait à leur lainage un velouté rose, un épiderme de lumière, cette
sorte de tendresse, de sérieuse douceur dans la pompe et dans la joie
qui caractérisent certaines pages de Lohengrin, certaines peintures de
Carpaccio, et qui font comprendre que Baudelaire ait pu appliquer au
son de la trompette l’épithète de délicieux" :start 3788 :end 4481)
 ))