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
 :text "Mon oncle conseilla à Swann de rester un peu sans voir Odette qui ne
l’en aimerait que plus, et à Odette de laisser Swann la retrouver
partout où cela lui plairait. Quelques jours après, Odette disait à
Swann qu’elle venait d’avoir une déception en voyant que mon oncle
était pareil à tous les hommes: il venait d’essayer de la prendre de
force. Elle calma Swann qui au premier moment voulait aller provoquer
mon oncle, mais il refusa de lui serrer la main quand il le rencontra.
Il regretta d’autant plus cette brouille avec mon oncle Adolphe qu’il
avait espéré, s’il l’avait revu quelquefois et avait pu causer en
toute confiance avec lui, tâcher de tirer au clair certains bruits
relatifs à la vie qu’Odette avait menée autrefois à Nice. Or mon oncle
Adolphe y passait l’hiver. Et Swann pensait que c’était même peut-être
là qu’il avait connu Odette. Le peu qui avait échappé à quelqu’un
devant lui, relativement à un homme qui aurait été l’amant d’Odette
avait bouleversé Swann. Mais les choses qu’il aurait avant de les
connaître, trouvé le plus affreux d’apprendre et le plus impossible de
croire, une fois qu’il les savait, elles étaient incorporées à tout
jamais à sa tristesse, il les admettait, il n’aurait plus pu
comprendre qu’elles n’eussent pas été. Seulement chacune opérait sur
l’idée qu’il se faisait de sa maîtresse une retouche ineffaçable. Il
crut même comprendre, une fois, que cette légèreté des mœurs d’Odette
qu’il n’eût pas soupçonnée, était assez connue, et qu’à Bade et à
Nice, quand elle y passait jadis plusieurs mois, elle avait eu une
sorte de notoriété galante. Il chercha, pour les interroger, à se
rapprocher de certains viveurs; mais ceux-ci savaient qu’il
connaissait Odette; et puis il avait peur de les faire penser de
nouveau à elle, de les mettre sur ses traces. Mais lui à qui jusque-là
rien n’aurait pu paraître aussi fastidieux que tout ce qui se
rapportait à la vie cosmopolite de Bade ou de Nice, apprenant
qu’Odette avait peut-être fait autrefois la fête dans ces villes de
plaisir, sans qu’il dût jamais arriver à savoir si c’était seulement
pour satisfaire à des besoins d’argent que grâce à lui elle n’avait
plus, ou à des caprices qui pouvaient renaître, maintenant il se
penchait avec une angoisse impuissante, aveugle et vertigineuse vers
l’abîme sans fond où étaient allées s’engloutir ces années du début du
Septennat pendant lesquelles on passait l’hiver sur la promenade des
Anglais, l’été sous les tilleuls de Bade, et il leur trouvait une
profondeur douloureuse mais magnifique comme celle que leur eût prêtée
un poète; et il eût mis à reconstituer les petits faits de la
chronique de la Côte d’Azur d’alors, si elle avait pu l’aider à
comprendre quelque chose du sourire ou des regards--pourtant si
honnêtes et si simples--d’Odette, plus de passion que l’esthéticien qui
interroge les documents subsistant de la Florence du XVe siècle pour
tâcher d’entrer plus avant dans l’âme de la Primavera, de la bella
Vanna, ou de la Vénus, de Botticelli. Souvent sans lui rien dire il la
regardait, il songeait; elle lui disait: «Comme tu as l’air triste!»
Il n’y avait pas bien longtemps encore, de l’idée qu’elle était une
créature bonne, analogue aux meilleures qu’il eût connues, il avait
passé à l’idée qu’elle était une femme entretenue; inversement il lui
était arrivé depuis de revenir de l’Odette de Crécy, peut-être trop
connue des fêtards, des hommes à femmes, à ce visage d’une expression
parfois si douce, à cette nature si humaine. Il se disait: «Qu’est-ce
que cela veut dire qu’à Nice tout le monde sache qui est Odette de
Crécy? Ces réputations-là, même vraies, sont faites avec les idées des
autres»; il pensait que cette légende--fût-elle authentique--était
extérieure à Odette, n’était pas en elle comme une personnalité
irréductible et malfaisante; que la créature qui avait pu être amenée
à mal faire, c’était une femme aux bons yeux, au cœur plein de pitié
pour la souffrance, au corps docile qu’il avait tenu, qu’il avait
serré dans ses bras et manié, une femme qu’il pourrait arriver un jour
à posséder toute, s’il réussissait à se rendre indispensable à elle.
Elle était là, souvent fatiguée, le visage vidé pour un instant de la
préoccupation fébrile et joyeuse des choses inconnues qui faisaient
souffrir Swann; elle écartait ses cheveux avec ses mains; son front,
sa figure paraissaient plus larges; alors, tout d’un coup, quelque
pensée simplement humaine, quelque bon sentiment comme il en existe
dans toutes les créatures, quand dans un moment de repos ou de
repliement elles sont livrées à elles-mêmes, jaillissait dans ses yeux
comme un rayon jaune. Et aussitôt tout son visage s’éclairait comme
une campagne grise, couverte de nuages qui soudain s’écartent, pour sa
transfiguration, au moment du soleil couchant. La vie qui était en
Odette à ce moment-là, l’avenir même qu’elle semblait rêveusement
regarder, Swann aurait pu les partager avec elle; aucune agitation
mauvaise ne semblait y avoir laissé de résidu. Si rares qu’ils
devinssent, ces moments-là ne furent pas inutiles. Par le souvenir
Swann reliait ces parcelles, abolissait les intervalles, coulait comme
en or une Odette de bonté et de calme pour laquelle il fit plus tard
(comme on le verra dans la deuxième partie de cet ouvrage) des
sacrifices que l’autre Odette n’eût pas obtenus. Mais que ces moments
étaient rares, et que maintenant il la voyait peu! Même pour leur
rendez-vous du soir, elle ne lui disait qu’à la dernière minute si
elle pourrait le lui accorder car, comptant qu’elle le trouverait
toujours libre, elle voulait d’abord être certaine que personne
d’autre ne lui proposerait de venir. Elle alléguait qu’elle était
obligée d’attendre une réponse de la plus haute importance pour elle,
et même si après qu’elle avait fait venir Swann des amis demandaient à
Odette, quand la soirée était déjà commencée, de les rejoindre au
théâtre ou à souper, elle faisait un bond joyeux et s’habillait à la
hâte. Au fur et à mesure qu’elle avançait dans sa toilette, chaque
mouvement qu’elle faisait rapprochait Swann du moment où il faudrait
la quitter, où elle s’enfuirait d’un élan irrésistible; et quand,
enfin prête, plongeant une dernière fois dans son miroir ses regards
tendus et éclairés par l’attention, elle remettait un peu de rouge à
ses lèvres, fixait une mèche sur son front et demandait son manteau de
soirée bleu ciel avec des glands d’or, Swann avait l’air si triste
qu’elle ne pouvait réprimer un geste d’impatience et disait: «Voilà
comme tu me remercies de t’avoir gardé jusqu’à la dernière minute. Moi
qui croyais avoir fait quelque chose de gentil. C’est bon à savoir
pour une autre fois!» Parfois, au risque de la fâcher, il se
promettait de chercher à savoir où elle était allée, il rêvait d’une
alliance avec Forcheville qui peut-être aurait pu le renseigner.
D’ailleurs quand il savait avec qui elle passait la soirée, il était
bien rare qu’il ne pût pas découvrir dans toutes ses relations à lui
quelqu’un qui connaissait fût-ce indirectement l’homme avec qui elle
était sortie et pouvait facilement en obtenir tel ou tel
renseignement. Et tandis qu’il écrivait à un de ses amis pour lui
demander de chercher à éclaircir tel ou tel point, il éprouvait le
repos de cesser de se poser ses questions sans réponses et de
transférer à un autre la fatigue d’interroger. Il est vrai que Swann
n’était guère plus avancé quand il avait certains renseignements.
Savoir ne permet pas toujours d’empêcher, mais du moins les choses que
nous savons, nous les tenons, sinon entre nos mains, du moins dans
notre pensée où nous les disposons à notre gré, ce qui nous donne
l’illusion d’une sorte de pouvoir sur elles. Il était heureux toutes
les fois où M. de Charlus était avec Odette. Entre M. de Charlus et
elle, Swann savait qu’il ne pouvait rien se passer, que quand M. de
Charlus sortait avec elle c’était par amitié pour lui et qu’il ne
ferait pas difficulté à lui raconter ce qu’elle avait fait.
Quelquefois elle avait déclaré si catégoriquement à Swann qu’il lui
était impossible de le voir un certain soir, elle avait l’air de tenir
tant à une sortie, que Swann attachait une véritable importance à ce
que M. de Charlus fût libre de l’accompagner. Le lendemain, sans oser
poser beaucoup de questions à M. de Charlus, il le contraignait, en
ayant l’air de ne pas bien comprendre ses premières réponses, à lui en
donner de nouvelles, après chacune desquelles il se sentait plus
soulagé, car il apprenait bien vite qu’Odette avait occupé sa soirée
aux plaisirs les plus innocents. «Mais comment, mon petit Mémé, je ne
comprends pas bien..., ce n’est pas en sortant de chez elle que vous
êtes allés au musée Grévin? Vous étiez allés ailleurs d’abord. Non?
Oh! que c’est drôle! Vous ne savez pas comme vous m’amusez, mon petit
Mémé. Mais quelle drôle d’idée elle a eue d’aller ensuite au Chat
Noir, c’est bien une idée d’elle... Non? c’est vous. C’est curieux.
Après tout ce n’est pas une mauvaise idée, elle devait y connaître
beaucoup de monde? Non? elle n’a parlé à personne? C’est
extraordinaire. Alors vous êtes restés là comme cela tous les deux
tous seuls? Je vois d’ici cette scène. Vous êtes gentil, mon petit
Mémé, je vous aime bien.» Swann se sentait soulagé. Pour lui, à qui il
était arrivé en causant avec des indifférents qu’il écoutait à peine,
d’entendre quelquefois certaines phrases (celle-ci par exemple: «J’ai
vu hier Mme de Crécy, elle était avec un monsieur que je ne connais
pas»), phrases qui aussitôt dans le cœur de Swann passaient à l’état
solide, s’y durcissaient comme une incrustation, le déchiraient, n’en
bougeaient plus, qu’ils étaient doux au contraire ces mots: «Elle ne
connaissait personne, elle n’a parlé à personne», comme ils
circulaient aisément en lui, qu’ils étaient fluides, faciles,
respirables! Et pourtant au bout d’un instant il se disait qu’Odette
devait le trouver bien ennuyeux pour que ce fussent là les plaisirs
qu’elle préférait à sa compagnie. Et leur insignifiance, si elle le
rassurait, lui faisait pourtant de la peine comme une trahison."
 :tokens 1683
 :processed-at "2025-03-16T02:18:14.630940"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 22 :end 27) (entity :text "Odette" :label "ORG" :start 55 :end 61) (entity :text "Odette" :label "ORG" :start 98 :end 104) (entity :text "Swann" :label "ORG" :start 116 :end 121) (entity :text "Quelques" :label "ORG" :start 165 :end 173) (entity :text "Odette" :label "ORG" :start 187 :end 193) (entity :text "Swann" :label "ORG" :start 203 :end 208) (entity :text "Elle" :label "ORG" :start 346 :end 350) (entity :text "Swann" :label "ORG" :start 357 :end 362) (entity :text "Nice." :label "ORG" :start 735 :end 740) (entity :text "Swann" :label "ORG" :start 784 :end 789) (entity :text "Odette." :label "ORG" :start 846 :end 853) (entity :text "Swann." :label "ORG" :start 976 :end 982) (entity :text "Mais" :label "ORG" :start 983 :end 987) (entity :text "Seulement" :label "ORG" :start 1264 :end 1273) (entity :text "Bade" :label "ORG" :start 1489 :end 1493) (entity :text "Nice," :label "ORG" :start 1499 :end 1504) (entity :text "Odette;" :label "ORG" :start 1704 :end 1711) (entity :text "Mais" :label "ORG" :start 1803 :end 1807) (entity :text "Bade" :label "ORG" :start 1925 :end 1929) (entity :text "Nice," :label "ORG" :start 1936 :end 1941) (entity :text "Septennat" :label "ORG" :start 2362 :end 2371) (entity :text "Bade," :label "ORG" :start 2467 :end 2472) (entity :text "Côte" :label "ORG" :start 2646 :end 2650) (entity :text "Florence" :label "ORG" :start 2871 :end 2879) (entity :text "Primavera," :label "ORG" :start 2943 :end 2953) (entity :text "Vanna," :label "ORG" :start 2966 :end 2972) (entity :text "Vénus," :label "ORG" :start 2982 :end 2988) (entity :text "Botticelli." :label "ORG" :start 2992 :end 3003) (entity :text "Souvent" :label "ORG" :start 3004 :end 3011) (entity :text "«Comme" :label "ORG" :start 3078 :end 3084) (entity :text "Crécy," :label "ORG" :start 3358 :end 3364) (entity :text "Nice" :label "ORG" :start 3544 :end 3548) (entity :text "Odette" :label "ORG" :start 3577 :end 3583) (entity :text "Crécy?" :label "ORG" :start 3587 :end 3593) (entity :text "Odette," :label "ORG" :start 3738 :end 3745) (entity :text "Elle" :label "ORG" :start 4134 :end 4138) (entity :text "Swann;" :label "ORG" :start 4281 :end 4287) (entity :text "Odette" :label "ORG" :start 4816 :end 4822) (entity :text "Swann" :label "ORG" :start 4892 :end 4897) (entity :text "Swann" :label "ORG" :start 5079 :end 5084) (entity :text "Odette" :label "ORG" :start 5160 :end 5166) (entity :text "Odette" :label "ORG" :start 5305 :end 5311) (entity :text "Mais" :label "ORG" :start 5331 :end 5335) (entity :text "Même" :label "ORG" :start 5403 :end 5407) (entity :text "Elle" :label "ORG" :start 5652 :end 5656) (entity :text "Swann" :label "ORG" :start 5793 :end 5798) (entity :text "Odette," :label "ORG" :start 5822 :end 5829) (entity :text "Swann" :label "ORG" :start 6062 :end 6067) (entity :text "Swann" :label "ORG" :start 6407 :end 6412) (entity :text "«Voilà" :label "ORG" :start 6496 :end 6502) (entity :text "Parfois," :label "ORG" :start 6663 :end 6671) (entity :text "Forcheville" :label "ORG" :start 6785 :end 6796) (entity :text "Swann" :label "ORG" :start 7358 :end 7363) (entity :text "Savoir" :label "ORG" :start 7430 :end 7436) (entity :text "Charlus" :label "ORG" :start 7721 :end 7728) (entity :text "Odette." :label "ORG" :start 7740 :end 7747) (entity :text "Entre" :label "ORG" :start 7748 :end 7753) (entity :text "Charlus" :label "ORG" :start 7760 :end 7767) (entity :text "Swann" :label "ORG" :start 7777 :end 7782) (entity :text "Charlus" :label "ORG" :start 7839 :end 7846) (entity :text "Quelquefois" :label "ORG" :start 7965 :end 7976) (entity :text "Swann" :label "ORG" :start 8017 :end 8022) (entity :text "Swann" :label "ORG" :start 8127 :end 8132) (entity :text "Charlus" :label "ORG" :start 8183 :end 8190) (entity :text "Charlus," :label "ORG" :start 8279 :end 8287) (entity :text "«Mais" :label "ORG" :start 8549 :end 8554) (entity :text "Mémé," :label "ORG" :start 8574 :end 8579) (entity :text "Grévin?" :label "ORG" :start 8675 :end 8682) (entity :text "Vous" :label "ORG" :start 8683 :end 8687) (entity :text "Non?" :label "ORG" :start 8718 :end 8722) (entity :text "Vous" :label "ORG" :start 8744 :end 8748) (entity :text "Mémé." :label "ORG" :start 8793 :end 8798) (entity :text "Mais" :label "ORG" :start 8799 :end 8803) (entity :text "Chat" :label "ORG" :start 8854 :end 8858) (entity :text "Noir," :label "ORG" :start 8859 :end 8864) (entity :text "Non?" :label "ORG" :start 8895 :end 8899) (entity :text "Non?" :label "ORG" :start 9013 :end 9017) (entity :text "Vous" :label "ORG" :start 9157 :end 9161) (entity :text "Mémé," :label "ORG" :start 9185 :end 9190) (entity :text "Swann" :label "ORG" :start 9211 :end 9216) (entity :text "Pour" :label "ORG" :start 9237 :end 9241) (entity :text "Crécy," :label "ORG" :start 9411 :end 9417) (entity :text "Swann" :label "ORG" :start 9508 :end 9513) (entity :text "«Elle" :label "ORG" :start 9663 :end 9668)
 )
 :sentences (list
  (sentence :text "Mon oncle conseilla à Swann de rester un peu sans voir Odette qui ne
l’en aimerait que plus, et à Odette de laisser Swann la retrouver
partout où cela lui plairait" :start 0 :end 163) (sentence :text "Quelques jours après, Odette disait à
Swann qu’elle venait d’avoir une déception en voyant que mon oncle
était pareil à tous les hommes: il venait d’essayer de la prendre de
force" :start 164 :end 344) (sentence :text "Elle calma Swann qui au premier moment voulait aller provoquer
mon oncle, mais il refusa de lui serrer la main quand il le rencontra" :start 345 :end 478) (sentence :text "Il regretta d’autant plus cette brouille avec mon oncle Adolphe qu’il
avait espéré, s’il l’avait revu quelquefois et avait pu causer en
toute confiance avec lui, tâcher de tirer au clair certains bruits
relatifs à la vie qu’Odette avait menée autrefois à Nice" :start 479 :end 739) (sentence :text "Or mon oncle
Adolphe y passait l’hiver" :start 740 :end 779) (sentence :text "Et Swann pensait que c’était même peut-être
là qu’il avait connu Odette" :start 780 :end 852) (sentence :text "Le peu qui avait échappé à quelqu’un
devant lui, relativement à un homme qui aurait été l’amant d’Odette
avait bouleversé Swann" :start 853 :end 981) (sentence :text "Mais les choses qu’il aurait avant de les
connaître, trouvé le plus affreux d’apprendre et le plus impossible de
croire, une fois qu’il les savait, elles étaient incorporées à tout
jamais à sa tristesse, il les admettait, il n’aurait plus pu
comprendre qu’elles n’eussent pas été" :start 982 :end 1262) (sentence :text "Seulement chacune opérait sur
l’idée qu’il se faisait de sa maîtresse une retouche ineffaçable" :start 1263 :end 1358) (sentence :text "Il
crut même comprendre, une fois, que cette légèreté des mœurs d’Odette
qu’il n’eût pas soupçonnée, était assez connue, et qu’à Bade et à
Nice, quand elle y passait jadis plusieurs mois, elle avait eu une
sorte de notoriété galante" :start 1359 :end 1592) (sentence :text "Il chercha, pour les interroger, à se
rapprocher de certains viveurs; mais ceux-ci savaient qu’il
connaissait Odette; et puis il avait peur de les faire penser de
nouveau à elle, de les mettre sur ses traces" :start 1593 :end 1801) (sentence :text "Mais lui à qui jusque-là
rien n’aurait pu paraître aussi fastidieux que tout ce qui se
rapportait à la vie cosmopolite de Bade ou de Nice, apprenant
qu’Odette avait peut-être fait autrefois la fête dans ces villes de
plaisir, sans qu’il dût jamais arriver à savoir si c’était seulement
pour satisfaire à des besoins d’argent que grâce à lui elle n’avait
plus, ou à des caprices qui pouvaient renaître, maintenant il se
penchait avec une angoisse impuissante, aveugle et vertigineuse vers
l’abîme sans fond où étaient allées s’engloutir ces années du début du
Septennat pendant lesquelles on passait l’hiver sur la promenade des
Anglais, l’été sous les tilleuls de Bade, et il leur trouvait une
profondeur douloureuse mais magnifique comme celle que leur eût prêtée
un poète; et il eût mis à reconstituer les petits faits de la
chronique de la Côte d’Azur d’alors, si elle avait pu l’aider à
comprendre quelque chose du sourire ou des regards--pourtant si
honnêtes et si simples--d’Odette, plus de passion que l’esthéticien qui
interroge les documents subsistant de la Florence du XVe siècle pour
tâcher d’entrer plus avant dans l’âme de la Primavera, de la bella
Vanna, ou de la Vénus, de Botticelli" :start 1802 :end 3002) (sentence :text "Souvent sans lui rien dire il la
regardait, il songeait; elle lui disait: «Comme tu as l’air triste!»
Il n’y avait pas bien longtemps encore, de l’idée qu’elle était une
créature bonne, analogue aux meilleures qu’il eût connues, il avait
passé à l’idée qu’elle était une femme entretenue; inversement il lui
était arrivé depuis de revenir de l’Odette de Crécy, peut-être trop
connue des fêtards, des hommes à femmes, à ce visage d’une expression
parfois si douce, à cette nature si humaine" :start 3003 :end 3493) (sentence :text "Il se disait: «Qu’est-ce
que cela veut dire qu’à Nice tout le monde sache qui est Odette de
Crécy? Ces réputations-là, même vraies, sont faites avec les idées des
autres»; il pensait que cette légende--fût-elle authentique--était
extérieure à Odette, n’était pas en elle comme une personnalité
irréductible et malfaisante; que la créature qui avait pu être amenée
à mal faire, c’était une femme aux bons yeux, au cœur plein de pitié
pour la souffrance, au corps docile qu’il avait tenu, qu’il avait
serré dans ses bras et manié, une femme qu’il pourrait arriver un jour
à posséder toute, s’il réussissait à se rendre indispensable à elle" :start 3494 :end 4132) (sentence :text "Elle était là, souvent fatiguée, le visage vidé pour un instant de la
préoccupation fébrile et joyeuse des choses inconnues qui faisaient
souffrir Swann; elle écartait ses cheveux avec ses mains; son front,
sa figure paraissaient plus larges; alors, tout d’un coup, quelque
pensée simplement humaine, quelque bon sentiment comme il en existe
dans toutes les créatures, quand dans un moment de repos ou de
repliement elles sont livrées à elles-mêmes, jaillissait dans ses yeux
comme un rayon jaune" :start 4133 :end 4630) (sentence :text "Et aussitôt tout son visage s’éclairait comme
une campagne grise, couverte de nuages qui soudain s’écartent, pour sa
transfiguration, au moment du soleil couchant" :start 4631 :end 4794) (sentence :text "La vie qui était en
Odette à ce moment-là, l’avenir même qu’elle semblait rêveusement
regarder, Swann aurait pu les partager avec elle; aucune agitation
mauvaise ne semblait y avoir laissé de résidu" :start 4795 :end 4994) (sentence :text "Si rares qu’ils
devinssent, ces moments-là ne furent pas inutiles" :start 4995 :end 5061) (sentence :text "Par le souvenir
Swann reliait ces parcelles, abolissait les intervalles, coulait comme
en or une Odette de bonté et de calme pour laquelle il fit plus tard
(comme on le verra dans la deuxième partie de cet ouvrage) des
sacrifices que l’autre Odette n’eût pas obtenus" :start 5062 :end 5329) (sentence :text "Mais que ces moments
étaient rares, et que maintenant il la voyait peu! Même pour leur
rendez-vous du soir, elle ne lui disait qu’à la dernière minute si
elle pourrait le lui accorder car, comptant qu’elle le trouverait
toujours libre, elle voulait d’abord être certaine que personne
d’autre ne lui proposerait de venir" :start 5330 :end 5650) (sentence :text "Elle alléguait qu’elle était
obligée d’attendre une réponse de la plus haute importance pour elle,
et même si après qu’elle avait fait venir Swann des amis demandaient à
Odette, quand la soirée était déjà commencée, de les rejoindre au
théâtre ou à souper, elle faisait un bond joyeux et s’habillait à la
hâte" :start 5651 :end 5961) (sentence :text "Au fur et à mesure qu’elle avançait dans sa toilette, chaque
mouvement qu’elle faisait rapprochait Swann du moment où il faudrait
la quitter, où elle s’enfuirait d’un élan irrésistible; et quand,
enfin prête, plongeant une dernière fois dans son miroir ses regards
tendus et éclairés par l’attention, elle remettait un peu de rouge à
ses lèvres, fixait une mèche sur son front et demandait son manteau de
soirée bleu ciel avec des glands d’or, Swann avait l’air si triste
qu’elle ne pouvait réprimer un geste d’impatience et disait: «Voilà
comme tu me remercies de t’avoir gardé jusqu’à la dernière minute" :start 5962 :end 6568) (sentence :text "Moi
qui croyais avoir fait quelque chose de gentil" :start 6569 :end 6620) (sentence :text "C’est bon à savoir
pour une autre fois!» Parfois, au risque de la fâcher, il se
promettait de chercher à savoir où elle était allée, il rêvait d’une
alliance avec Forcheville qui peut-être aurait pu le renseigner" :start 6621 :end 6834) (sentence :text "D’ailleurs quand il savait avec qui elle passait la soirée, il était
bien rare qu’il ne pût pas découvrir dans toutes ses relations à lui
quelqu’un qui connaissait fût-ce indirectement l’homme avec qui elle
était sortie et pouvait facilement en obtenir tel ou tel
renseignement" :start 6835 :end 7113) (sentence :text "Et tandis qu’il écrivait à un de ses amis pour lui
demander de chercher à éclaircir tel ou tel point, il éprouvait le
repos de cesser de se poser ses questions sans réponses et de
transférer à un autre la fatigue d’interroger" :start 7114 :end 7340) (sentence :text "Il est vrai que Swann
n’était guère plus avancé quand il avait certains renseignements" :start 7341 :end 7428) (sentence :text "Savoir ne permet pas toujours d’empêcher, mais du moins les choses que
nous savons, nous les tenons, sinon entre nos mains, du moins dans
notre pensée où nous les disposons à notre gré, ce qui nous donne
l’illusion d’une sorte de pouvoir sur elles" :start 7429 :end 7677) (sentence :text "Il était heureux toutes
les fois où M" :start 7678 :end 7716) (sentence :text "de Charlus était avec Odette" :start 7717 :end 7746) (sentence :text "Entre M" :start 7747 :end 7755) (sentence :text "de Charlus et
elle, Swann savait qu’il ne pouvait rien se passer, que quand M" :start 7756 :end 7834) (sentence :text "de
Charlus sortait avec elle c’était par amitié pour lui et qu’il ne
ferait pas difficulté à lui raconter ce qu’elle avait fait" :start 7835 :end 7963) (sentence :text "Quelquefois elle avait déclaré si catégoriquement à Swann qu’il lui
était impossible de le voir un certain soir, elle avait l’air de tenir
tant à une sortie, que Swann attachait une véritable importance à ce
que M" :start 7964 :end 8178) (sentence :text "de Charlus fût libre de l’accompagner" :start 8179 :end 8217) (sentence :text "Le lendemain, sans oser
poser beaucoup de questions à M" :start 8218 :end 8274) (sentence :text "de Charlus, il le contraignait, en
ayant l’air de ne pas bien comprendre ses premières réponses, à lui en
donner de nouvelles, après chacune desquelles il se sentait plus
soulagé, car il apprenait bien vite qu’Odette avait occupé sa soirée
aux plaisirs les plus innocents" :start 8275 :end 8547) (sentence :text "«Mais comment, mon petit Mémé, je ne
comprends pas bien" :start 8548 :end 8604) (sentence :text ", ce n’est pas en sortant de chez elle que vous
êtes allés au musée Grévin? Vous étiez allés ailleurs d’abord" :start 8607 :end 8716) (sentence :text "Non?
Oh! que c’est drôle! Vous ne savez pas comme vous m’amusez, mon petit
Mémé" :start 8717 :end 8797) (sentence :text "Mais quelle drôle d’idée elle a eue d’aller ensuite au Chat
Noir, c’est bien une idée d’elle" :start 8798 :end 8891) (sentence :text "Non? c’est vous" :start 8894 :end 8910) (sentence :text "C’est curieux" :start 8911 :end 8925) (sentence :text "Après tout ce n’est pas une mauvaise idée, elle devait y connaître
beaucoup de monde? Non? elle n’a parlé à personne? C’est
extraordinaire" :start 8926 :end 9065) (sentence :text "Alors vous êtes restés là comme cela tous les deux
tous seuls? Je vois d’ici cette scène" :start 9066 :end 9155) (sentence :text "Vous êtes gentil, mon petit
Mémé, je vous aime bien" :start 9156 :end 9208) (sentence :text "» Swann se sentait soulagé" :start 9209 :end 9235) (sentence :text "Pour lui, à qui il
était arrivé en causant avec des indifférents qu’il écoutait à peine,
d’entendre quelquefois certaines phrases (celle-ci par exemple: «J’ai
vu hier Mme de Crécy, elle était avec un monsieur que je ne connais
pas»), phrases qui aussitôt dans le cœur de Swann passaient à l’état
solide, s’y durcissaient comme une incrustation, le déchiraient, n’en
bougeaient plus, qu’ils étaient doux au contraire ces mots: «Elle ne
connaissait personne, elle n’a parlé à personne», comme ils
circulaient aisément en lui, qu’ils étaient fluides, faciles,
respirables! Et pourtant au bout d’un instant il se disait qu’Odette
devait le trouver bien ennuyeux pour que ce fussent là les plaisirs
qu’elle préférait à sa compagnie" :start 9236 :end 9963) (sentence :text "Et leur insignifiance, si elle le
rassurait, lui faisait pourtant de la peine comme une trahison" :start 9964 :end 10061)
 ))