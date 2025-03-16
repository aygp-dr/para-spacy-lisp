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
 :text "Maintenant, tous les soirs, quand il l’avait ramenée chez elle, il
fallait qu’il entrât et souvent elle ressortait en robe de chambre et
le conduisait jusqu’à sa voiture, l’embrassait aux yeux du cocher,
disant: «Qu’est-ce que cela peut me faire, que me font les autres?»
Les soirs où il n’allait pas chez les Verdurin (ce qui arrivait
parfois depuis qu’il pouvait la voir autrement), les soirs de plus en
plus rares où il allait dans le monde, elle lui demandait de venir
chez elle avant de rentrer, quelque heure qu’il fût. C’était le
printemps, un printemps pur et glacé. En sortant de soirée, il montait
dans sa victoria, étendait une couverture sur ses jambes, répondait
aux amis qui s’en allaient en même temps que lui et lui demandaient de
revenir avec eux qu’il ne pouvait pas, qu’il n’allait pas du même
côté, et le cocher partait au grand trot sachant où on allait. Eux
s’étonnaient, et de fait, Swann n’était plus le même. On ne recevait
plus jamais de lettre de lui où il demandât à connaître une femme. Il
ne faisait plus attention à aucune, s’abstenait d’aller dans les
endroits où on en rencontre. Dans un restaurant, à la campagne, il
avait l’attitude inversée de celle à quoi, hier encore, on l’eût
reconnu et qui avait semblé devoir toujours être la sienne. Tant une
passion est en nous comme un caractère momentané et différent qui se
substitue à l’autre et abolit les signes jusque-là invariables par
lesquels il s’exprimait! En revanche ce qui était invariable
maintenant, c’était que où que Swann se trouvât, il ne manquât pas
d’aller rejoindre Odette. Le trajet qui le séparait d’elle était celui
qu’il parcourait inévitablement et comme la pente même irrésistible et
rapide de sa vie. A vrai dire, souvent resté tard dans le monde, il
aurait mieux aimé rentrer directement chez lui sans faire cette longue
course et ne la voir que le lendemain; mais le fait même de se
déranger à une heure anormale pour aller chez elle, de deviner que les
amis qui le quittaient se disaient: «Il est très tenu, il y a
certainement une femme qui le force à aller chez elle à n’importe
quelle heure», lui faisait sentir qu’il menait la vie des hommes qui
ont une affaire amoureuse dans leur existence, et en qui le sacrifice
qu’ils font de leur repos et de leurs intérêts à une rêverie
voluptueuse fait naître un charme intérieur. Puis sans qu’il s’en
rendît compte, cette certitude qu’elle l’attendait, qu’elle n’était
pas ailleurs avec d’autres, qu’il ne reviendrait pas sans l’avoir vue,
neutralisait cette angoisse oubliée mais toujours prête à renaître
qu’il avait éprouvée le soir où Odette n’était plus chez les Verdurin
et dont l’apaisement actuel était si doux que cela pouvait s’appeler
du bonheur. Peut-être était-ce à cette angoisse qu’il était redevable
de l’importance qu’Odette avait prise pour lui. Les êtres nous sont
d’habitude si indifférents, que quand nous avons mis dans l’un d’eux
de telles possibilités de souffrance et de joie, pour nous il nous
semble appartenir à un autre univers, il s’entoure de poésie, il fait
de notre vie comme une étendue émouvante où il sera plus ou moins
rapproché de nous. Swann ne pouvait se demander sans trouble ce
qu’Odette deviendrait pour lui dans les années qui allaient venir.
Parfois, en voyant, de sa victoria, dans ces belles nuits froides, la
lune brillante qui répandait sa clarté entre ses yeux et les rues
désertes, il pensait à cette autre figure claire et légèrement rosée
comme celle de la lune, qui, un jour, avait surgi dans sa pensée et,
depuis projetait sur le monde la lumière mystérieuse dans laquelle il
le voyait. S’il arrivait après l’heure où Odette envoyait ses
domestiques se coucher, avant de sonner à la porte du petit jardin, il
allait d’abord dans la rue, où donnait au rez-de-chaussée, entre les
fenêtres toutes pareilles, mais obscures, des hôtels contigus, la
fenêtre, seule éclairée, de sa chambre. Il frappait au carreau, et
elle, avertie, répondait et allait l’attendre de l’autre côté, à la
porte d’entrée. Il trouvait ouverts sur son piano quelques-uns des
morceaux qu’elle préférait: la VALSE DES ROSES ou PAUVRE FOU de
Tagliafico (qu’on devait, selon sa volonté écrite, faire exécuter à
son enterrement), il lui demandait de jouer à la place la petite
phrase de la sonate de Vinteuil, bien qu’Odette jouât fort mal, mais
la vision la plus belle qui nous reste d’une œuvre est souvent celle
qui s’éleva au-dessus des sons faux tirés par des doigts malhabiles,
d’un piano désaccordé. La petite phrase continuait à s’associer pour
Swann à l’amour qu’il avait pour Odette. Il sentait bien que cet
amour, c’était quelque chose qui ne correspondait à rien d’extérieur,
de constatable par d’autres que lui; il se rendait compte que les
qualités d’Odette ne justifiaient pas qu’il attachât tant de prix aux
moments passés auprès d’elle. Et souvent, quand c’était l’intelligence
positive qui régnait seule en Swann, il voulait cesser de sacrifier
tant d’intérêts intellectuels et sociaux à ce plaisir imaginaire. Mais
la petite phrase, dès qu’il l’entendait, savait rendre libre en lui
l’espace qui pour elle était nécessaire, les proportions de l’âme de
Swann s’en trouvaient changées; une marge y était réservée à une
jouissance qui elle non plus ne correspondait à aucun objet extérieur
et qui pourtant au lieu d’être purement individuelle comme celle de
l’amour, s’imposait à Swann comme une réalité supérieure aux choses
concrètes. Cette soif d’un charme inconnu, la petite phrase
l’éveillait en lui, mais ne lui apportait rien de précis pour
l’assouvir. De sorte que ces parties de l’âme de Swann où la petite
phrase avait effacé le souci des intérêts matériels, les
considérations humaines et valables pour tous, elle les avait laissées
vacantes et en blanc, et il était libre d’y inscrire le nom d’Odette.
Puis à ce que l’affection d’Odette pouvait avoir d’un peu court et
décevant, la petite phrase venait ajouter, amalgamer son essence
mystérieuse. A voir le visage de Swann pendant qu’il écoutait la
phrase, on aurait dit qu’il était en train d’absorber un anesthésique
qui donnait plus d’amplitude à sa respiration. Et le plaisir que lui
donnait la musique et qui allait bientôt créer chez lui un véritable
besoin, ressemblait en effet, à ces moments-là, au plaisir qu’il
aurait eu à expérimenter des parfums, à entrer en contact avec un
monde pour lequel nous ne sommes pas faits, qui nous semble sans forme
parce que nos yeux ne le perçoivent pas, sans signification parce
qu’il échappe à notre intelligence, que nous n’atteignons que par un
seul sens. Grand repos, mystérieuse rénovation pour Swann,--pour lui
dont les yeux quoique délicats amateurs de peinture, dont l’esprit
quoique fin observateur de mœurs, portaient à jamais la trace
indélébile de la sécheresse de sa vie--de se sentir transformé en une
créature étrangère à l’humanité, aveugle, dépourvue de facultés
logiques, presque une fantastique licorne, une créature chimérique ne
percevant le monde que par l’ouïe. Et comme dans la petite phrase il
cherchait cependant un sens où son intelligence ne pouvait descendre,
quelle étrange ivresse il avait à dépouiller son âme la plus
intérieure de tous les secours du raisonnement et à la faire passer
seule dans le couloir, dans le filtre obscur du son. Il commençait à
se rendre compte de tout ce qu’il y avait de douloureux, peut-être
même de secrètement inapaisé au fond de la douceur de cette phrase,
mais il ne pouvait pas en souffrir. Qu’importait qu’elle lui dît que
l’amour est fragile, le sien était si fort! Il jouait avec la
tristesse qu’elle répandait, il la sentait passer sur lui, mais comme
une caresse qui rendait plus profond et plus doux le sentiment qu’il
avait de son bonheur. Il la faisait rejouer dix fois, vingt fois à
Odette, exigeant qu’en même temps elle ne cessât pas de l’embrasser.
Chaque baiser appelle un autre baiser. Ah! dans ces premiers temps où
l’on aime, les baisers naissent si naturellement! Ils foisonnent si
pressés les uns contre les autres; et l’on aurait autant de peine à
compter les baisers qu’on s’est donnés pendant une heure que les
fleurs d’un champ au mois de mai. Alors elle faisait mine de
s’arrêter, disant: «Comment veux-tu que je joue comme cela si tu me
tiens, je ne peux tout faire à la fois, sache au moins ce que tu veux,
est-ce que je dois jouer la phrase ou faire des petites caresses», lui
se fâchait et elle éclatait d’un rire qui se changeait et retombait
sur lui, en une pluie de baisers. Ou bien elle le regardait d’un air
maussade, il revoyait un visage digne de figurer dans la Vie de Moïse
de Botticelli, il l’y situait, il donnait au cou d’Odette
l’inclinaison nécessaire; et quand il l’avait bien peinte à la
détrempe, au XVe siècle, sur la muraille de la Sixtine, l’idée qu’elle
était cependant restée là, près du piano, dans le moment actuel, prête
à être embrassée et possédée, l’idée de sa matérialité et de sa vie
venait l’enivrer avec une telle force que, l’œil égaré, les mâchoires
tendues comme pour dévorer, il se précipitait sur cette vierge de
Botticelli et se mettait à lui pincer les joues. Puis, une fois qu’il
l’avait quittée, non sans être rentré pour l’embrasser encore parce
qu’il avait oublié d’emporter dans son souvenir quelque particularité
de son odeur ou de ses traits, tandis qu’il revenait dans sa victoria,
bénissant Odette de lui permettre ces visites quotidiennes, dont il
sentait qu’elles ne devaient pas lui causer à elle une bien grande
joie, mais qui en le préservant de devenir jaloux,--en lui ôtant
l’occasion de souffrir de nouveau du mal qui s’était déclaré en lui le
soir où il ne l’avait pas trouvée chez les Verdurin--l’aideraient à
arriver, sans avoir plus d’autres de ces crises dont la première avait
été si douloureuse et resterait la seule, au bout de ces heures
singulières de sa vie, heures presque enchantées, à la façon de celles
où il traversait Paris au clair de lune. Et, remarquant, pendant ce
retour, que l’astre était maintenant déplacé par rapport à lui, et
presque au bout de l’horizon, sentant que son amour obéissait, lui
aussi, à des lois immuables et naturelles, il se demandait si cette
période où il était entré durerait encore longtemps, si bientôt sa
pensée ne verrait plus le cher visage qu’occupant une position
lointaine et diminuée, et près de cesser de répandre du charme. Car
Swann en trouvait aux choses, depuis qu’il était amoureux, comme au
temps où, adolescent, il se croyait artiste; mais ce n’était plus le
même charme, celui-ci c’est Odette seule qui le leur conférait. Il
sentait renaître en lui les inspirations de sa jeunesse qu’une vie
frivole avait dissipées, mais elles portaient toutes le reflet, la
marque d’un être particulier; et, dans les longues heures qu’il
prenait maintenant un plaisir délicat à passer chez lui, seul avec son
âme en convalescence, il redevenait peu à peu lui-même, mais à une
autre."
 :tokens 1832
 :processed-at "2025-03-16T02:18:14.386428"
 :entities (list
  (entity :text "Maintenant," :label "ORG" :start 0 :end 11) (entity :text "Verdurin" :label "ORG" :start 310 :end 318) (entity :text "Swann" :label "ORG" :start 906 :end 911) (entity :text "Dans" :label "ORG" :start 1113 :end 1117) (entity :text "Tant" :label "ORG" :start 1276 :end 1280) (entity :text "Swann" :label "ORG" :start 1513 :end 1518) (entity :text "Odette." :label "ORG" :start 1567 :end 1574) (entity :text "Puis" :label "ORG" :start 2337 :end 2341) (entity :text "Odette" :label "ORG" :start 2596 :end 2602) (entity :text "Verdurin" :label "ORG" :start 2625 :end 2633) (entity :text "Swann" :label "ORG" :start 3132 :end 3137) (entity :text "Parfois," :label "ORG" :start 3244 :end 3252) (entity :text "Odette" :label "ORG" :start 3630 :end 3636) (entity :text "Tagliafico" :label "ORG" :start 4122 :end 4132) (entity :text "Vinteuil," :label "ORG" :start 4278 :end 4287) (entity :text "Swann" :label "ORG" :start 4531 :end 4536) (entity :text "Odette." :label "ORG" :start 4564 :end 4571) (entity :text "Swann," :label "ORG" :start 4903 :end 4909) (entity :text "Mais" :label "ORG" :start 5007 :end 5011) (entity :text "Swann" :label "ORG" :start 5149 :end 5154) (entity :text "Swann" :label "ORG" :start 5374 :end 5379) (entity :text "Cette" :label "ORG" :start 5431 :end 5436) (entity :text "Swann" :label "ORG" :start 5591 :end 5596) (entity :text "Puis" :label "ORG" :start 5808 :end 5812) (entity :text "Swann" :label "ORG" :start 5973 :end 5978) (entity :text "Grand" :label "ORG" :start 6561 :end 6566) (entity :text "Odette," :label "ORG" :start 7761 :end 7768) (entity :text "Chaque" :label "ORG" :start 7830 :end 7836) (entity :text "«Comment" :label "ORG" :start 8181 :end 8189) (entity :text "Moïse" :label "ORG" :start 8573 :end 8578) (entity :text "Botticelli," :label "ORG" :start 8582 :end 8593) (entity :text "Sixtine," :label "ORG" :start 8747 :end 8755) (entity :text "Botticelli" :label "ORG" :start 9046 :end 9056) (entity :text "Puis," :label "ORG" :start 9095 :end 9100) (entity :text "Odette" :label "ORG" :start 9335 :end 9341) (entity :text "Paris" :label "ORG" :start 9887 :end 9892) (entity :text "Swann" :label "ORG" :start 10338 :end 10343) (entity :text "Odette" :label "ORG" :start 10503 :end 10509)
 )
 :sentences (list
  (sentence :text "Maintenant, tous les soirs, quand il l’avait ramenée chez elle, il
fallait qu’il entrât et souvent elle ressortait en robe de chambre et
le conduisait jusqu’à sa voiture, l’embrassait aux yeux du cocher,
disant: «Qu’est-ce que cela peut me faire, que me font les autres?»
Les soirs où il n’allait pas chez les Verdurin (ce qui arrivait
parfois depuis qu’il pouvait la voir autrement), les soirs de plus en
plus rares où il allait dans le monde, elle lui demandait de venir
chez elle avant de rentrer, quelque heure qu’il fût" :start 0 :end 524) (sentence :text "C’était le
printemps, un printemps pur et glacé" :start 525 :end 573) (sentence :text "En sortant de soirée, il montait
dans sa victoria, étendait une couverture sur ses jambes, répondait
aux amis qui s’en allaient en même temps que lui et lui demandaient de
revenir avec eux qu’il ne pouvait pas, qu’il n’allait pas du même
côté, et le cocher partait au grand trot sachant où on allait" :start 574 :end 874) (sentence :text "Eux
s’étonnaient, et de fait, Swann n’était plus le même" :start 875 :end 932) (sentence :text "On ne recevait
plus jamais de lettre de lui où il demandât à connaître une femme" :start 933 :end 1014) (sentence :text "Il
ne faisait plus attention à aucune, s’abstenait d’aller dans les
endroits où on en rencontre" :start 1015 :end 1111) (sentence :text "Dans un restaurant, à la campagne, il
avait l’attitude inversée de celle à quoi, hier encore, on l’eût
reconnu et qui avait semblé devoir toujours être la sienne" :start 1112 :end 1274) (sentence :text "Tant une
passion est en nous comme un caractère momentané et différent qui se
substitue à l’autre et abolit les signes jusque-là invariables par
lesquels il s’exprimait! En revanche ce qui était invariable
maintenant, c’était que où que Swann se trouvât, il ne manquât pas
d’aller rejoindre Odette" :start 1275 :end 1573) (sentence :text "Le trajet qui le séparait d’elle était celui
qu’il parcourait inévitablement et comme la pente même irrésistible et
rapide de sa vie" :start 1574 :end 1707) (sentence :text "A vrai dire, souvent resté tard dans le monde, il
aurait mieux aimé rentrer directement chez lui sans faire cette longue
course et ne la voir que le lendemain; mais le fait même de se
déranger à une heure anormale pour aller chez elle, de deviner que les
amis qui le quittaient se disaient: «Il est très tenu, il y a
certainement une femme qui le force à aller chez elle à n’importe
quelle heure», lui faisait sentir qu’il menait la vie des hommes qui
ont une affaire amoureuse dans leur existence, et en qui le sacrifice
qu’ils font de leur repos et de leurs intérêts à une rêverie
voluptueuse fait naître un charme intérieur" :start 1708 :end 2335) (sentence :text "Puis sans qu’il s’en
rendît compte, cette certitude qu’elle l’attendait, qu’elle n’était
pas ailleurs avec d’autres, qu’il ne reviendrait pas sans l’avoir vue,
neutralisait cette angoisse oubliée mais toujours prête à renaître
qu’il avait éprouvée le soir où Odette n’était plus chez les Verdurin
et dont l’apaisement actuel était si doux que cela pouvait s’appeler
du bonheur" :start 2336 :end 2713) (sentence :text "Peut-être était-ce à cette angoisse qu’il était redevable
de l’importance qu’Odette avait prise pour lui" :start 2714 :end 2819) (sentence :text "Les êtres nous sont
d’habitude si indifférents, que quand nous avons mis dans l’un d’eux
de telles possibilités de souffrance et de joie, pour nous il nous
semble appartenir à un autre univers, il s’entoure de poésie, il fait
de notre vie comme une étendue émouvante où il sera plus ou moins
rapproché de nous" :start 2820 :end 3130) (sentence :text "Swann ne pouvait se demander sans trouble ce
qu’Odette deviendrait pour lui dans les années qui allaient venir" :start 3131 :end 3242) (sentence :text "Parfois, en voyant, de sa victoria, dans ces belles nuits froides, la
lune brillante qui répandait sa clarté entre ses yeux et les rues
désertes, il pensait à cette autre figure claire et légèrement rosée
comme celle de la lune, qui, un jour, avait surgi dans sa pensée et,
depuis projetait sur le monde la lumière mystérieuse dans laquelle il
le voyait" :start 3243 :end 3597) (sentence :text "S’il arrivait après l’heure où Odette envoyait ses
domestiques se coucher, avant de sonner à la porte du petit jardin, il
allait d’abord dans la rue, où donnait au rez-de-chaussée, entre les
fenêtres toutes pareilles, mais obscures, des hôtels contigus, la
fenêtre, seule éclairée, de sa chambre" :start 3598 :end 3894) (sentence :text "Il frappait au carreau, et
elle, avertie, répondait et allait l’attendre de l’autre côté, à la
porte d’entrée" :start 3895 :end 4005) (sentence :text "Il trouvait ouverts sur son piano quelques-uns des
morceaux qu’elle préférait: la VALSE DES ROSES ou PAUVRE FOU de
Tagliafico (qu’on devait, selon sa volonté écrite, faire exécuter à
son enterrement), il lui demandait de jouer à la place la petite
phrase de la sonate de Vinteuil, bien qu’Odette jouât fort mal, mais
la vision la plus belle qui nous reste d’une œuvre est souvent celle
qui s’éleva au-dessus des sons faux tirés par des doigts malhabiles,
d’un piano désaccordé" :start 4006 :end 4483) (sentence :text "La petite phrase continuait à s’associer pour
Swann à l’amour qu’il avait pour Odette" :start 4484 :end 4570) (sentence :text "Il sentait bien que cet
amour, c’était quelque chose qui ne correspondait à rien d’extérieur,
de constatable par d’autres que lui; il se rendait compte que les
qualités d’Odette ne justifiaient pas qu’il attachât tant de prix aux
moments passés auprès d’elle" :start 4571 :end 4830) (sentence :text "Et souvent, quand c’était l’intelligence
positive qui régnait seule en Swann, il voulait cesser de sacrifier
tant d’intérêts intellectuels et sociaux à ce plaisir imaginaire" :start 4831 :end 5005) (sentence :text "Mais
la petite phrase, dès qu’il l’entendait, savait rendre libre en lui
l’espace qui pour elle était nécessaire, les proportions de l’âme de
Swann s’en trouvaient changées; une marge y était réservée à une
jouissance qui elle non plus ne correspondait à aucun objet extérieur
et qui pourtant au lieu d’être purement individuelle comme celle de
l’amour, s’imposait à Swann comme une réalité supérieure aux choses
concrètes" :start 5006 :end 5429) (sentence :text "Cette soif d’un charme inconnu, la petite phrase
l’éveillait en lui, mais ne lui apportait rien de précis pour
l’assouvir" :start 5430 :end 5552) (sentence :text "De sorte que ces parties de l’âme de Swann où la petite
phrase avait effacé le souci des intérêts matériels, les
considérations humaines et valables pour tous, elle les avait laissées
vacantes et en blanc, et il était libre d’y inscrire le nom d’Odette" :start 5553 :end 5806) (sentence :text "Puis à ce que l’affection d’Odette pouvait avoir d’un peu court et
décevant, la petite phrase venait ajouter, amalgamer son essence
mystérieuse" :start 5807 :end 5951) (sentence :text "A voir le visage de Swann pendant qu’il écoutait la
phrase, on aurait dit qu’il était en train d’absorber un anesthésique
qui donnait plus d’amplitude à sa respiration" :start 5952 :end 6120) (sentence :text "Et le plaisir que lui
donnait la musique et qui allait bientôt créer chez lui un véritable
besoin, ressemblait en effet, à ces moments-là, au plaisir qu’il
aurait eu à expérimenter des parfums, à entrer en contact avec un
monde pour lequel nous ne sommes pas faits, qui nous semble sans forme
parce que nos yeux ne le perçoivent pas, sans signification parce
qu’il échappe à notre intelligence, que nous n’atteignons que par un
seul sens" :start 6121 :end 6559) (sentence :text "Grand repos, mystérieuse rénovation pour Swann,--pour lui
dont les yeux quoique délicats amateurs de peinture, dont l’esprit
quoique fin observateur de mœurs, portaient à jamais la trace
indélébile de la sécheresse de sa vie--de se sentir transformé en une
créature étrangère à l’humanité, aveugle, dépourvue de facultés
logiques, presque une fantastique licorne, une créature chimérique ne
percevant le monde que par l’ouïe" :start 6560 :end 6985) (sentence :text "Et comme dans la petite phrase il
cherchait cependant un sens où son intelligence ne pouvait descendre,
quelle étrange ivresse il avait à dépouiller son âme la plus
intérieure de tous les secours du raisonnement et à la faire passer
seule dans le couloir, dans le filtre obscur du son" :start 6986 :end 7271) (sentence :text "Il commençait à
se rendre compte de tout ce qu’il y avait de douloureux, peut-être
même de secrètement inapaisé au fond de la douceur de cette phrase,
mais il ne pouvait pas en souffrir" :start 7272 :end 7458) (sentence :text "Qu’importait qu’elle lui dît que
l’amour est fragile, le sien était si fort! Il jouait avec la
tristesse qu’elle répandait, il la sentait passer sur lui, mais comme
une caresse qui rendait plus profond et plus doux le sentiment qu’il
avait de son bonheur" :start 7459 :end 7714) (sentence :text "Il la faisait rejouer dix fois, vingt fois à
Odette, exigeant qu’en même temps elle ne cessât pas de l’embrasser" :start 7715 :end 7828) (sentence :text "Chaque baiser appelle un autre baiser" :start 7829 :end 7867) (sentence :text "Ah! dans ces premiers temps où
l’on aime, les baisers naissent si naturellement! Ils foisonnent si
pressés les uns contre les autres; et l’on aurait autant de peine à
compter les baisers qu’on s’est donnés pendant une heure que les
fleurs d’un champ au mois de mai" :start 7868 :end 8133) (sentence :text "Alors elle faisait mine de
s’arrêter, disant: «Comment veux-tu que je joue comme cela si tu me
tiens, je ne peux tout faire à la fois, sache au moins ce que tu veux,
est-ce que je dois jouer la phrase ou faire des petites caresses», lui
se fâchait et elle éclatait d’un rire qui se changeait et retombait
sur lui, en une pluie de baisers" :start 8134 :end 8472) (sentence :text "Ou bien elle le regardait d’un air
maussade, il revoyait un visage digne de figurer dans la Vie de Moïse
de Botticelli, il l’y situait, il donnait au cou d’Odette
l’inclinaison nécessaire; et quand il l’avait bien peinte à la
détrempe, au XVe siècle, sur la muraille de la Sixtine, l’idée qu’elle
était cependant restée là, près du piano, dans le moment actuel, prête
à être embrassée et possédée, l’idée de sa matérialité et de sa vie
venait l’enivrer avec une telle force que, l’œil égaré, les mâchoires
tendues comme pour dévorer, il se précipitait sur cette vierge de
Botticelli et se mettait à lui pincer les joues" :start 8473 :end 9093) (sentence :text "Puis, une fois qu’il
l’avait quittée, non sans être rentré pour l’embrasser encore parce
qu’il avait oublié d’emporter dans son souvenir quelque particularité
de son odeur ou de ses traits, tandis qu’il revenait dans sa victoria,
bénissant Odette de lui permettre ces visites quotidiennes, dont il
sentait qu’elles ne devaient pas lui causer à elle une bien grande
joie, mais qui en le préservant de devenir jaloux,--en lui ôtant
l’occasion de souffrir de nouveau du mal qui s’était déclaré en lui le
soir où il ne l’avait pas trouvée chez les Verdurin--l’aideraient à
arriver, sans avoir plus d’autres de ces crises dont la première avait
été si douloureuse et resterait la seule, au bout de ces heures
singulières de sa vie, heures presque enchantées, à la façon de celles
où il traversait Paris au clair de lune" :start 9094 :end 9909) (sentence :text "Et, remarquant, pendant ce
retour, que l’astre était maintenant déplacé par rapport à lui, et
presque au bout de l’horizon, sentant que son amour obéissait, lui
aussi, à des lois immuables et naturelles, il se demandait si cette
période où il était entré durerait encore longtemps, si bientôt sa
pensée ne verrait plus le cher visage qu’occupant une position
lointaine et diminuée, et près de cesser de répandre du charme" :start 9910 :end 10332) (sentence :text "Car
Swann en trouvait aux choses, depuis qu’il était amoureux, comme au
temps où, adolescent, il se croyait artiste; mais ce n’était plus le
même charme, celui-ci c’est Odette seule qui le leur conférait" :start 10333 :end 10537) (sentence :text "Il
sentait renaître en lui les inspirations de sa jeunesse qu’une vie
frivole avait dissipées, mais elles portaient toutes le reflet, la
marque d’un être particulier; et, dans les longues heures qu’il
prenait maintenant un plaisir délicat à passer chez lui, seul avec son
âme en convalescence, il redevenait peu à peu lui-même, mais à une
autre" :start 10538 :end 10883)
 ))