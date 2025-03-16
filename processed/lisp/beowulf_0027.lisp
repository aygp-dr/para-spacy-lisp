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
 :text "L’ignorance où nous étions de cette brillante vie mondaine que menait
Swann tenait évidemment en partie à la réserve et à la discrétion de
son caractère, mais aussi à ce que les bourgeois d’alors se faisaient
de la société une idée un peu hindoue et la considéraient comme
composée de castes fermées où chacun, dès sa naissance, se trouvait
placé dans le rang qu’occupaient ses parents, et d’où rien, à moins
des hasards d’une carrière exceptionnelle ou d’un mariage inespéré, ne
pouvait vous tirer pour vous faire pénétrer dans une caste supérieure.
M. Swann, le père, était agent de change; le «fils Swann» se trouvait
faire partie pour toute sa vie d’une caste où les fortunes, comme dans
une catégorie de contribuables, variaient entre tel et tel revenu. On
savait quelles avaient été les fréquentations de son père, on savait
donc quelles étaient les siennes, avec quelles personnes il était «en
situation» de frayer. S’il en connaissait d’autres, c’étaient
relations de jeune homme sur lesquelles des amis anciens de sa
famille, comme étaient mes parents, fermaient d’autant plus
bienveillamment les yeux qu’il continuait, depuis qu’il était
orphelin, à venir très fidèlement nous voir; mais il y avait fort à
parier que ces gens inconnus de nous qu’il voyait, étaient de ceux
qu’il n’aurait pas osé saluer si, étant avec nous, il les avait
rencontrés. Si l’on avait voulu à toute force appliquer à Swann un
coefficient social qui lui fût personnel, entre les autres fils
d’agents de situation égale à celle de ses parents, ce coefficient eût
été pour lui un peu inférieur parce que, très simple de façon et ayant
toujours eu une «toquade» d’objets anciens et de peinture, il
demeurait maintenant dans un vieil hôtel où il entassait ses
collections et que ma grand’mère rêvait de visiter, mais qui était
situé quai d’Orléans, quartier que ma grand’tante trouvait infamant
d’habiter. «Êtes-vous seulement connaisseur? je vous demande cela dans
votre intérêt, parce que vous devez vous faire repasser des croûtes
par les marchands», lui disait ma grand’tante; elle ne lui supposait
en effet aucune compétence et n’avait pas haute idée même au point de
vue intellectuel d’un homme qui dans la conversation évitait les
sujets sérieux et montrait une précision fort prosaïque non seulement
quand il nous donnait, en entrant dans les moindres détails, des
recettes de cuisine, mais même quand les sœurs de ma grand’mère
parlaient de sujets artistiques. Provoqué par elles à donner son avis,
à exprimer son admiration pour un tableau, il gardait un silence
presque désobligeant et se rattrapait en revanche s’il pouvait fournir
sur le musée où il se trouvait, sur la date où il avait été peint, un
renseignement matériel. Mais d’habitude il se contentait de chercher à
nous amuser en racontant chaque fois une histoire nouvelle qui venait
de lui arriver avec des gens choisis parmi ceux que nous connaissions,
avec le pharmacien de Combray, avec notre cuisinière, avec notre
cocher. Certes ces récits faisaient rire ma grand’tante, mais sans
qu’elle distinguât bien si c’était à cause du rôle ridicule que s’y
donnait toujours Swann ou de l’esprit qu’il mettait à les conter: «On
peut dire que vous êtes un vrai type, monsieur Swann!» Comme elle
était la seule personne un peu vulgaire de notre famille, elle avait
soin de faire remarquer aux étrangers, quand on parlait de Swann,
qu’il aurait pu, s’il avait voulu, habiter boulevard Haussmann ou
avenue de l’Opéra, qu’il était le fils de M. Swann qui avait dû lui
laisser quatre ou cinq millions, mais que c’était sa fantaisie.
Fantaisie qu’elle jugeait du reste devoir être si divertissante pour
les autres, qu’à Paris, quand M. Swann venait le 1er janvier lui
apporter son sac de marrons glacés, elle ne manquait pas, s’il y avait
du monde, de lui dire: «Eh bien! M. Swann, vous habitez toujours près
de l’Entrepôt des vins, pour être sûr de ne pas manquer le train quand
vous prenez le chemin de Lyon?» Et elle regardait du coin de l’œil,
par-dessus son lorgnon, les autres visiteurs."
 :tokens 672
 :processed-at "2025-03-16T02:18:13.799055"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 70 :end 75) (entity :text "Swann," :label "ORG" :start 554 :end 560) (entity :text "Swann»" :label "ORG" :start 602 :end 608) (entity :text "Swann" :label "ORG" :start 1405 :end 1410) (entity :text "Provoqué" :label "ORG" :start 2453 :end 2461) (entity :text "Mais" :label "ORG" :start 2721 :end 2725) (entity :text "Combray," :label "ORG" :start 2931 :end 2939) (entity :text "Certes" :label "ORG" :start 2982 :end 2988) (entity :text "Swann" :label "ORG" :start 3126 :end 3131) (entity :text "Swann!»" :label "ORG" :start 3226 :end 3233) (entity :text "Comme" :label "ORG" :start 3234 :end 3239) (entity :text "Swann," :label "ORG" :start 3373 :end 3379) (entity :text "Haussmann" :label "ORG" :start 3433 :end 3442) (entity :text "Swann" :label "ORG" :start 3491 :end 3496) (entity :text "Fantaisie" :label "ORG" :start 3578 :end 3587) (entity :text "Paris," :label "ORG" :start 3664 :end 3670) (entity :text "Swann" :label "ORG" :start 3680 :end 3685) (entity :text "Swann," :label "ORG" :start 3819 :end 3825) (entity :text "Lyon?»" :label "ORG" :start 3949 :end 3955)
 )
 :sentences (list
  (sentence :text "L’ignorance où nous étions de cette brillante vie mondaine que menait
Swann tenait évidemment en partie à la réserve et à la discrétion de
son caractère, mais aussi à ce que les bourgeois d’alors se faisaient
de la société une idée un peu hindoue et la considéraient comme
composée de castes fermées où chacun, dès sa naissance, se trouvait
placé dans le rang qu’occupaient ses parents, et d’où rien, à moins
des hasards d’une carrière exceptionnelle ou d’un mariage inespéré, ne
pouvait vous tirer pour vous faire pénétrer dans une caste supérieure" :start 0 :end 549) (sentence :text "M" :start 550 :end 552) (sentence :text "Swann, le père, était agent de change; le «fils Swann» se trouvait
faire partie pour toute sa vie d’une caste où les fortunes, comme dans
une catégorie de contribuables, variaient entre tel et tel revenu" :start 553 :end 757) (sentence :text "On
savait quelles avaient été les fréquentations de son père, on savait
donc quelles étaient les siennes, avec quelles personnes il était «en
situation» de frayer" :start 758 :end 921) (sentence :text "S’il en connaissait d’autres, c’étaient
relations de jeune homme sur lesquelles des amis anciens de sa
famille, comme étaient mes parents, fermaient d’autant plus
bienveillamment les yeux qu’il continuait, depuis qu’il était
orphelin, à venir très fidèlement nous voir; mais il y avait fort à
parier que ces gens inconnus de nous qu’il voyait, étaient de ceux
qu’il n’aurait pas osé saluer si, étant avec nous, il les avait
rencontrés" :start 922 :end 1357) (sentence :text "Si l’on avait voulu à toute force appliquer à Swann un
coefficient social qui lui fût personnel, entre les autres fils
d’agents de situation égale à celle de ses parents, ce coefficient eût
été pour lui un peu inférieur parce que, très simple de façon et ayant
toujours eu une «toquade» d’objets anciens et de peinture, il
demeurait maintenant dans un vieil hôtel où il entassait ses
collections et que ma grand’mère rêvait de visiter, mais qui était
situé quai d’Orléans, quartier que ma grand’tante trouvait infamant
d’habiter" :start 1358 :end 1887) (sentence :text "«Êtes-vous seulement connaisseur? je vous demande cela dans
votre intérêt, parce que vous devez vous faire repasser des croûtes
par les marchands», lui disait ma grand’tante; elle ne lui supposait
en effet aucune compétence et n’avait pas haute idée même au point de
vue intellectuel d’un homme qui dans la conversation évitait les
sujets sérieux et montrait une précision fort prosaïque non seulement
quand il nous donnait, en entrant dans les moindres détails, des
recettes de cuisine, mais même quand les sœurs de ma grand’mère
parlaient de sujets artistiques" :start 1888 :end 2451) (sentence :text "Provoqué par elles à donner son avis,
à exprimer son admiration pour un tableau, il gardait un silence
presque désobligeant et se rattrapait en revanche s’il pouvait fournir
sur le musée où il se trouvait, sur la date où il avait été peint, un
renseignement matériel" :start 2452 :end 2719) (sentence :text "Mais d’habitude il se contentait de chercher à
nous amuser en racontant chaque fois une histoire nouvelle qui venait
de lui arriver avec des gens choisis parmi ceux que nous connaissions,
avec le pharmacien de Combray, avec notre cuisinière, avec notre
cocher" :start 2720 :end 2980) (sentence :text "Certes ces récits faisaient rire ma grand’tante, mais sans
qu’elle distinguât bien si c’était à cause du rôle ridicule que s’y
donnait toujours Swann ou de l’esprit qu’il mettait à les conter: «On
peut dire que vous êtes un vrai type, monsieur Swann!» Comme elle
était la seule personne un peu vulgaire de notre famille, elle avait
soin de faire remarquer aux étrangers, quand on parlait de Swann,
qu’il aurait pu, s’il avait voulu, habiter boulevard Haussmann ou
avenue de l’Opéra, qu’il était le fils de M" :start 2981 :end 3489) (sentence :text "Swann qui avait dû lui
laisser quatre ou cinq millions, mais que c’était sa fantaisie" :start 3490 :end 3576) (sentence :text "Fantaisie qu’elle jugeait du reste devoir être si divertissante pour
les autres, qu’à Paris, quand M" :start 3577 :end 3678) (sentence :text "Swann venait le 1er janvier lui
apporter son sac de marrons glacés, elle ne manquait pas, s’il y avait
du monde, de lui dire: «Eh bien! M" :start 3679 :end 3817) (sentence :text "Swann, vous habitez toujours près
de l’Entrepôt des vins, pour être sûr de ne pas manquer le train quand
vous prenez le chemin de Lyon?» Et elle regardait du coin de l’œil,
par-dessus son lorgnon, les autres visiteurs" :start 3818 :end 4036)
 ))