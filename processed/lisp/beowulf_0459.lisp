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
 :text "Même cet amour pour une phrase musicale sembla un instant devoir
amorcer chez Swann la possibilité d’une sorte de rajeunissement.
Depuis si longtemps il avait renoncé à appliquer sa vie à un but idéal
et la bornait à la poursuite de satisfactions quotidiennes, qu’il
croyait, sans jamais se le dire formellement, que cela ne changerait
plus jusqu’à sa mort; bien plus, ne se sentant plus d’idées élevées
dans l’esprit, il avait cessé de croire à leur réalité, sans pouvoir
non plus la nier tout à fait. Aussi avait-il pris l’habitude de se
réfugier dans des pensées sans importance qui lui permettaient de
laisser de côté le fond des choses. De même qu’il ne se demandait pas
s’il n’eût pas mieux fait de ne pas aller dans le monde, mais en
revanche savait avec certitude que s’il avait accepté une invitation
il devait s’y rendre et que s’il ne faisait pas de visite après il lui
fallait laisser des cartes, de même dans sa conversation il
s’efforçait de ne jamais exprimer avec cœur une opinion intime sur les
choses, mais de fournir des détails matériels qui valaient en quelque
sorte par eux-mêmes et lui permettaient de ne pas donner sa mesure. Il
était extrêmement précis pour une recette de cuisine, pour la date de
la naissance ou de la mort d’un peintre, pour la nomenclature de ses
œuvres. Parfois, malgré tout, il se laissait aller à émettre un
jugement sur une œuvre, sur une manière de comprendre la vie, mais il
donnait alors à ses paroles un ton ironique comme s’il n’adhérait pas
tout entier à ce qu’il disait. Or, comme certains valétudinaires chez
qui tout d’un coup, un pays où ils sont arrivés, un régime différent,
quelquefois une évolution organique, spontanée et mystérieuse,
semblent amener une telle régression de leur mal qu’ils commencent à
envisager la possibilité inespérée de commencer sur le tard une vie
toute différente, Swann trouvait en lui, dans le souvenir de la phrase
qu’il avait entendue, dans certaines sonates qu’il s’était fait jouer,
pour voir s’il ne l’y découvrirait pas, la présence d’une de ces
réalités invisibles auxquelles il avait cessé de croire et auxquelles,
comme si la musique avait eu sur la sécheresse morale dont il
souffrait une sorte d’influence élective, il se sentait de nouveau le
désir et presque la force de consacrer sa vie. Mais n’étant pas arrivé
à savoir de qui était l’œuvre qu’il avait entendue, il n’avait pu se
la procurer et avait fini par l’oublier. Il avait bien rencontré dans
la semaine quelques personnes qui se trouvaient comme lui à cette
soirée et les avait interrogées; mais plusieurs étaient arrivées après
la musique ou parties avant; certaines pourtant étaient là pendant
qu’on l’exécutait mais étaient allées causer dans un autre salon, et
d’autres restées à écouter n’avaient pas entendu plus que les
premières. Quant aux maîtres de maison ils savaient que c’était une
œuvre nouvelle que les artistes qu’ils avaient engagés avaient demandé
à jouer; ceux-ci étant partis en tournée, Swann ne put pas en savoir
davantage. Il avait bien des amis musiciens, mais tout en se rappelant
le plaisir spécial et intraduisible que lui avait fait la phrase, en
voyant devant ses yeux les formes qu’elle dessinait, il était pourtant
incapable de la leur chanter. Puis il cessa d’y penser."
 :tokens 551
 :processed-at "2025-03-16T02:18:14.280026"
 :entities (list
  (entity :text "Même" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 78 :end 83) (entity :text "Depuis" :label "ORG" :start 130 :end 136) (entity :text "Parfois," :label "ORG" :start 1300 :end 1308) (entity :text "Swann" :label "ORG" :start 1854 :end 1859) (entity :text "Mais" :label "ORG" :start 2293 :end 2297) (entity :text "Quant" :label "ORG" :start 2802 :end 2807) (entity :text "Swann" :label "ORG" :start 2972 :end 2977) (entity :text "Puis" :label "ORG" :start 3240 :end 3244)
 )
 :sentences (list
  (sentence :text "Même cet amour pour une phrase musicale sembla un instant devoir
amorcer chez Swann la possibilité d’une sorte de rajeunissement" :start 0 :end 128) (sentence :text "Depuis si longtemps il avait renoncé à appliquer sa vie à un but idéal
et la bornait à la poursuite de satisfactions quotidiennes, qu’il
croyait, sans jamais se le dire formellement, que cela ne changerait
plus jusqu’à sa mort; bien plus, ne se sentant plus d’idées élevées
dans l’esprit, il avait cessé de croire à leur réalité, sans pouvoir
non plus la nier tout à fait" :start 129 :end 501) (sentence :text "Aussi avait-il pris l’habitude de se
réfugier dans des pensées sans importance qui lui permettaient de
laisser de côté le fond des choses" :start 502 :end 640) (sentence :text "De même qu’il ne se demandait pas
s’il n’eût pas mieux fait de ne pas aller dans le monde, mais en
revanche savait avec certitude que s’il avait accepté une invitation
il devait s’y rendre et que s’il ne faisait pas de visite après il lui
fallait laisser des cartes, de même dans sa conversation il
s’efforçait de ne jamais exprimer avec cœur une opinion intime sur les
choses, mais de fournir des détails matériels qui valaient en quelque
sorte par eux-mêmes et lui permettaient de ne pas donner sa mesure" :start 641 :end 1148) (sentence :text "Il
était extrêmement précis pour une recette de cuisine, pour la date de
la naissance ou de la mort d’un peintre, pour la nomenclature de ses
œuvres" :start 1149 :end 1298) (sentence :text "Parfois, malgré tout, il se laissait aller à émettre un
jugement sur une œuvre, sur une manière de comprendre la vie, mais il
donnait alors à ses paroles un ton ironique comme s’il n’adhérait pas
tout entier à ce qu’il disait" :start 1299 :end 1525) (sentence :text "Or, comme certains valétudinaires chez
qui tout d’un coup, un pays où ils sont arrivés, un régime différent,
quelquefois une évolution organique, spontanée et mystérieuse,
semblent amener une telle régression de leur mal qu’ils commencent à
envisager la possibilité inespérée de commencer sur le tard une vie
toute différente, Swann trouvait en lui, dans le souvenir de la phrase
qu’il avait entendue, dans certaines sonates qu’il s’était fait jouer,
pour voir s’il ne l’y découvrirait pas, la présence d’une de ces
réalités invisibles auxquelles il avait cessé de croire et auxquelles,
comme si la musique avait eu sur la sécheresse morale dont il
souffrait une sorte d’influence élective, il se sentait de nouveau le
désir et presque la force de consacrer sa vie" :start 1526 :end 2291) (sentence :text "Mais n’étant pas arrivé
à savoir de qui était l’œuvre qu’il avait entendue, il n’avait pu se
la procurer et avait fini par l’oublier" :start 2292 :end 2425) (sentence :text "Il avait bien rencontré dans
la semaine quelques personnes qui se trouvaient comme lui à cette
soirée et les avait interrogées; mais plusieurs étaient arrivées après
la musique ou parties avant; certaines pourtant étaient là pendant
qu’on l’exécutait mais étaient allées causer dans un autre salon, et
d’autres restées à écouter n’avaient pas entendu plus que les
premières" :start 2426 :end 2800) (sentence :text "Quant aux maîtres de maison ils savaient que c’était une
œuvre nouvelle que les artistes qu’ils avaient engagés avaient demandé
à jouer; ceux-ci étant partis en tournée, Swann ne put pas en savoir
davantage" :start 2801 :end 3008) (sentence :text "Il avait bien des amis musiciens, mais tout en se rappelant
le plaisir spécial et intraduisible que lui avait fait la phrase, en
voyant devant ses yeux les formes qu’elle dessinait, il était pourtant
incapable de la leur chanter" :start 3009 :end 3238) (sentence :text "Puis il cessa d’y penser" :start 3239 :end 3264)
 ))