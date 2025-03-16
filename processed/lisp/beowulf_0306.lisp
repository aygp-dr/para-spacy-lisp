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
 :text "Puis je revenais devant les aubépines comme devant ces chefs-d’œuvre
dont on croit qu’on saura mieux les voir quand on a cessé un moment de
les regarder, mais j’avais beau me faire un écran de mes mains pour
n’avoir qu’elles sous les yeux, le sentiment qu’elles éveillaient en
moi restait obscur et vague, cherchant en vain à se dégager, à venir
adhérer à leurs fleurs. Elles ne m’aidaient pas à l’éclaircir, et je
ne pouvais demander à d’autres fleurs de le satisfaire. Alors, me
donnant cette joie que nous éprouvons quand nous voyons de notre
peintre préféré une œuvre qui diffère de celles que nous connaissions,
ou bien si l’on nous mène devant un tableau dont nous n’avions vu
jusque-là qu’une esquisse au crayon, si un morceau entendu seulement
au piano nous apparaît ensuite revêtu des couleurs de l’orchestre, mon
grand-père m’appelant et me désignant la haie de Tansonville, me dit:
«Toi qui aimes les aubépines, regarde un peu cette épine rose;
est-elle jolie!» En effet c’était une épine, mais rose, plus belle
encore que les blanches. Elle aussi avait une parure de fête,--de ces
seules vraies fêtes que sont les fêtes religieuses, puisqu’un caprice
contingent ne les applique pas comme les fêtes mondaines à un jour
quelconque qui ne leur est pas spécialement destiné, qui n’a rien
d’essentiellement férié,--mais une parure plus riche encore, car les
fleurs attachées sur la branche, les unes au-dessus des autres, de
manière à ne laisser aucune place qui ne fût décorée, comme des
pompons qui enguirlandent une houlette rococo, étaient «en couleur»,
par conséquent d’une qualité supérieure selon l’esthétique de Combray
si l’on en jugeait par l’échelle des prix dans le «magasin» de la
Place ou chez Camus où étaient plus chers ceux des biscuits qui
étaient roses. Moi-même j’appréciais plus le fromage à la crème rose,
celui où l’on m’avait permis d’écraser des fraises. Et justement ces
fleurs avaient choisi une de ces teintes de chose mangeable, ou de
tendre embellissement à une toilette pour une grande fête, qui, parce
qu’elles leur présentent la raison de leur supériorité, sont celles
qui semblent belles avec le plus d’évidence aux yeux des enfants, et à
cause de cela, gardent toujours pour eux quelque chose de plus vif et
de plus naturel que les autres teintes, même lorsqu’ils ont compris
qu’elles ne promettaient rien à leur gourmandise et n’avaient pas été
choisies par la couturière. Et certes, je l’avais tout de suite senti,
comme devant les épines blanches mais avec plus d’émerveillement, que
ce n’était pas facticement, par un artifice de fabrication humaine,
qu’était traduite l’intention de festivité dans les fleurs, mais que
c’était la nature qui, spontanément, l’avait exprimée avec la naïveté
d’une commerçante de village travaillant pour un reposoir, en
surchargeant l’arbuste de ces rosettes d’un ton trop tendre et d’un
pompadour provincial. Au haut des branches, comme autant de ces petits
rosiers aux pots cachés dans des papiers en dentelles, dont aux
grandes fêtes on faisait rayonner sur l’autel les minces fusées,
pullulaient mille petits boutons d’une teinte plus pâle qui, en
s’entr’ouvrant, laissaient voir, comme au fond d’une coupe de marbre
rose, de rouges sanguines et trahissaient plus encore que les fleurs,
l’essence particulière, irrésistible, de l’épine, qui, partout où elle
bourgeonnait, où elle allait fleurir, ne le pouvait qu’en rose.
Intercalé dans la haie, mais aussi différent d’elle qu’une jeune fille
en robe de fête au milieu de personnes en négligé qui resteront à la
maison, tout prêt pour le mois de Marie, dont il semblait faire partie
déjà, tel brillait en souriant dans sa fraîche toilette rose,
l’arbuste catholique et délicieux."
 :tokens 602
 :processed-at "2025-03-16T02:18:14.109089"
 :entities (list
  (entity :text "Puis" :label "ORG" :start 0 :end 4) (entity :text "Elles" :label "ORG" :start 370 :end 375) (entity :text "Tansonville," :label "ORG" :start 872 :end 884) (entity :text "«Toi" :label "ORG" :start 893 :end 897) (entity :text "Elle" :label "ORG" :start 1048 :end 1052) (entity :text "Combray" :label "ORG" :start 1627 :end 1634) (entity :text "Place" :label "ORG" :start 1701 :end 1706) (entity :text "Camus" :label "ORG" :start 1715 :end 1720) (entity :text "Marie," :label "ORG" :start 3578 :end 3584)
 )
 :sentences (list
  (sentence :text "Puis je revenais devant les aubépines comme devant ces chefs-d’œuvre
dont on croit qu’on saura mieux les voir quand on a cessé un moment de
les regarder, mais j’avais beau me faire un écran de mes mains pour
n’avoir qu’elles sous les yeux, le sentiment qu’elles éveillaient en
moi restait obscur et vague, cherchant en vain à se dégager, à venir
adhérer à leurs fleurs" :start 0 :end 368) (sentence :text "Elles ne m’aidaient pas à l’éclaircir, et je
ne pouvais demander à d’autres fleurs de le satisfaire" :start 369 :end 469) (sentence :text "Alors, me
donnant cette joie que nous éprouvons quand nous voyons de notre
peintre préféré une œuvre qui diffère de celles que nous connaissions,
ou bien si l’on nous mène devant un tableau dont nous n’avions vu
jusque-là qu’une esquisse au crayon, si un morceau entendu seulement
au piano nous apparaît ensuite revêtu des couleurs de l’orchestre, mon
grand-père m’appelant et me désignant la haie de Tansonville, me dit:
«Toi qui aimes les aubépines, regarde un peu cette épine rose;
est-elle jolie!» En effet c’était une épine, mais rose, plus belle
encore que les blanches" :start 470 :end 1046) (sentence :text "Elle aussi avait une parure de fête,--de ces
seules vraies fêtes que sont les fêtes religieuses, puisqu’un caprice
contingent ne les applique pas comme les fêtes mondaines à un jour
quelconque qui ne leur est pas spécialement destiné, qui n’a rien
d’essentiellement férié,--mais une parure plus riche encore, car les
fleurs attachées sur la branche, les unes au-dessus des autres, de
manière à ne laisser aucune place qui ne fût décorée, comme des
pompons qui enguirlandent une houlette rococo, étaient «en couleur»,
par conséquent d’une qualité supérieure selon l’esthétique de Combray
si l’on en jugeait par l’échelle des prix dans le «magasin» de la
Place ou chez Camus où étaient plus chers ceux des biscuits qui
étaient roses" :start 1047 :end 1778) (sentence :text "Moi-même j’appréciais plus le fromage à la crème rose,
celui où l’on m’avait permis d’écraser des fraises" :start 1779 :end 1885) (sentence :text "Et justement ces
fleurs avaient choisi une de ces teintes de chose mangeable, ou de
tendre embellissement à une toilette pour une grande fête, qui, parce
qu’elles leur présentent la raison de leur supériorité, sont celles
qui semblent belles avec le plus d’évidence aux yeux des enfants, et à
cause de cela, gardent toujours pour eux quelque chose de plus vif et
de plus naturel que les autres teintes, même lorsqu’ils ont compris
qu’elles ne promettaient rien à leur gourmandise et n’avaient pas été
choisies par la couturière" :start 1886 :end 2414) (sentence :text "Et certes, je l’avais tout de suite senti,
comme devant les épines blanches mais avec plus d’émerveillement, que
ce n’était pas facticement, par un artifice de fabrication humaine,
qu’était traduite l’intention de festivité dans les fleurs, mais que
c’était la nature qui, spontanément, l’avait exprimée avec la naïveté
d’une commerçante de village travaillant pour un reposoir, en
surchargeant l’arbuste de ces rosettes d’un ton trop tendre et d’un
pompadour provincial" :start 2415 :end 2886) (sentence :text "Au haut des branches, comme autant de ces petits
rosiers aux pots cachés dans des papiers en dentelles, dont aux
grandes fêtes on faisait rayonner sur l’autel les minces fusées,
pullulaient mille petits boutons d’une teinte plus pâle qui, en
s’entr’ouvrant, laissaient voir, comme au fond d’une coupe de marbre
rose, de rouges sanguines et trahissaient plus encore que les fleurs,
l’essence particulière, irrésistible, de l’épine, qui, partout où elle
bourgeonnait, où elle allait fleurir, ne le pouvait qu’en rose" :start 2887 :end 3402) (sentence :text "Intercalé dans la haie, mais aussi différent d’elle qu’une jeune fille
en robe de fête au milieu de personnes en négligé qui resteront à la
maison, tout prêt pour le mois de Marie, dont il semblait faire partie
déjà, tel brillait en souriant dans sa fraîche toilette rose,
l’arbuste catholique et délicieux" :start 3403 :end 3710)
 ))