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
 :text "Un jour que Swann était sorti au milieu de l’après-midi pour faire une
visite, n’ayant pas trouvé la personne qu’il voulait rencontrer, il
eut l’idée d’entrer chez Odette à cette heure où il n’allait jamais
chez elle, mais où il savait qu’elle était toujours à la maison à
faire sa sieste ou à écrire des lettres avant l’heure du thé, et où il
aurait plaisir à la voir un peu sans la déranger. Le concierge lui dit
qu’il croyait qu’elle était là; il sonna, crut entendre du bruit,
entendre marcher, mais on n’ouvrit pas. Anxieux, irrité, il alla dans
la petite rue où donnait l’autre face de l’hôtel, se mit devant la
fenêtre de la chambre d’Odette; les rideaux l’empêchaient de rien
voir, il frappa avec force aux carreaux, appela; personne n’ouvrit. Il
vit que des voisins le regardaient. Il partit, pensant qu’après tout,
il s’était peut-être trompé en croyant entendre des pas; mais il en
resta si préoccupé qu’il ne pouvait penser à autre chose. Une heure
après, il revint. Il la trouva; elle lui dit qu’elle était chez elle
tantôt quand il avait sonné, mais dormait; la sonnette l’avait
éveillée, elle avait deviné que c’était Swann, elle avait couru après
lui, mais il était déjà parti. Elle avait bien entendu frapper aux
carreaux. Swann reconnut tout de suite dans ce dire un de ces
fragments d’un fait exact que les menteurs pris de court se consolent
de faire entrer dans la composition du fait faux qu’ils inventent,
croyant y faire sa part et y dérober sa ressemblance à la Vérité.
Certes quand Odette venait de faire quelque chose qu’elle ne voulait
pas révéler, elle le cachait bien au fond d’elle-même. Mais dès
qu’elle se trouvait en présence de celui à qui elle voulait mentir, un
trouble la prenait, toutes ses idées s’effondraient, ses facultés
d’invention et de raisonnement étaient paralysées, elle ne trouvait
plus dans sa tête que le vide, il fallait pourtant dire quelque chose
et elle rencontrait à sa portée précisément la chose qu’elle avait
voulu dissimuler et qui étant vraie, était restée là. Elle en
détachait un petit morceau, sans importance par lui-même, se disant
qu’après tout c’était mieux ainsi puisque c’était un détail véritable
qui n’offrait pas les mêmes dangers qu’un détail faux. «Ça du moins,
c’est vrai, se disait-elle, c’est toujours autant de gagné, il peut
s’informer, il reconnaîtra que c’est vrai, ce n’est toujours pas ça
qui me trahira.» Elle se trompait, c’était cela qui la trahissait,
elle ne se rendait pas compte que ce détail vrai avait des angles qui
ne pouvaient s’emboîter que dans les détails contigus du fait vrai
dont elle l’avait arbitrairement détaché et qui, quels que fussent les
détails inventés entre lesquels elle le placerait, révéleraient
toujours par la matière excédante et les vides non remplis, que ce
n’était pas d’entre ceux-là qu’il venait. «Elle avoue qu’elle m’avait
entendu sonner, puis frapper, et qu’elle avait cru que c’était moi,
qu’elle avait envie de me voir, se disait Swann. Mais cela ne
s’arrange pas avec le fait qu’elle n’ait pas fait ouvrir.»"
 :tokens 514
 :processed-at "2025-03-16T02:18:14.538996"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 12 :end 17) (entity :text "Odette" :label "ORG" :start 164 :end 170) (entity :text "Swann," :label "ORG" :start 1133 :end 1139) (entity :text "Elle" :label "ORG" :start 1194 :end 1198) (entity :text "Swann" :label "ORG" :start 1240 :end 1245) (entity :text "Vérité." :label "ORG" :start 1487 :end 1494) (entity :text "Certes" :label "ORG" :start 1495 :end 1501) (entity :text "Odette" :label "ORG" :start 1508 :end 1514) (entity :text "Mais" :label "ORG" :start 1619 :end 1623) (entity :text "Elle" :label "ORG" :start 2024 :end 2028) (entity :text "Elle" :label "ORG" :start 2392 :end 2396) (entity :text "«Elle" :label "ORG" :start 2823 :end 2828) (entity :text "Swann." :label "ORG" :start 2961 :end 2967) (entity :text "Mais" :label "ORG" :start 2968 :end 2972)
 )
 :sentences (list
  (sentence :text "Un jour que Swann était sorti au milieu de l’après-midi pour faire une
visite, n’ayant pas trouvé la personne qu’il voulait rencontrer, il
eut l’idée d’entrer chez Odette à cette heure où il n’allait jamais
chez elle, mais où il savait qu’elle était toujours à la maison à
faire sa sieste ou à écrire des lettres avant l’heure du thé, et où il
aurait plaisir à la voir un peu sans la déranger" :start 0 :end 392) (sentence :text "Le concierge lui dit
qu’il croyait qu’elle était là; il sonna, crut entendre du bruit,
entendre marcher, mais on n’ouvrit pas" :start 393 :end 519) (sentence :text "Anxieux, irrité, il alla dans
la petite rue où donnait l’autre face de l’hôtel, se mit devant la
fenêtre de la chambre d’Odette; les rideaux l’empêchaient de rien
voir, il frappa avec force aux carreaux, appela; personne n’ouvrit" :start 520 :end 750) (sentence :text "Il
vit que des voisins le regardaient" :start 751 :end 789) (sentence :text "Il partit, pensant qu’après tout,
il s’était peut-être trompé en croyant entendre des pas; mais il en
resta si préoccupé qu’il ne pouvait penser à autre chose" :start 790 :end 949) (sentence :text "Une heure
après, il revint" :start 950 :end 977) (sentence :text "Il la trouva; elle lui dit qu’elle était chez elle
tantôt quand il avait sonné, mais dormait; la sonnette l’avait
éveillée, elle avait deviné que c’était Swann, elle avait couru après
lui, mais il était déjà parti" :start 978 :end 1192) (sentence :text "Elle avait bien entendu frapper aux
carreaux" :start 1193 :end 1238) (sentence :text "Swann reconnut tout de suite dans ce dire un de ces
fragments d’un fait exact que les menteurs pris de court se consolent
de faire entrer dans la composition du fait faux qu’ils inventent,
croyant y faire sa part et y dérober sa ressemblance à la Vérité" :start 1239 :end 1493) (sentence :text "Certes quand Odette venait de faire quelque chose qu’elle ne voulait
pas révéler, elle le cachait bien au fond d’elle-même" :start 1494 :end 1617) (sentence :text "Mais dès
qu’elle se trouvait en présence de celui à qui elle voulait mentir, un
trouble la prenait, toutes ses idées s’effondraient, ses facultés
d’invention et de raisonnement étaient paralysées, elle ne trouvait
plus dans sa tête que le vide, il fallait pourtant dire quelque chose
et elle rencontrait à sa portée précisément la chose qu’elle avait
voulu dissimuler et qui étant vraie, était restée là" :start 1618 :end 2022) (sentence :text "Elle en
détachait un petit morceau, sans importance par lui-même, se disant
qu’après tout c’était mieux ainsi puisque c’était un détail véritable
qui n’offrait pas les mêmes dangers qu’un détail faux" :start 2023 :end 2223) (sentence :text "«Ça du moins,
c’est vrai, se disait-elle, c’est toujours autant de gagné, il peut
s’informer, il reconnaîtra que c’est vrai, ce n’est toujours pas ça
qui me trahira" :start 2224 :end 2389) (sentence :text "» Elle se trompait, c’était cela qui la trahissait,
elle ne se rendait pas compte que ce détail vrai avait des angles qui
ne pouvaient s’emboîter que dans les détails contigus du fait vrai
dont elle l’avait arbitrairement détaché et qui, quels que fussent les
détails inventés entre lesquels elle le placerait, révéleraient
toujours par la matière excédante et les vides non remplis, que ce
n’était pas d’entre ceux-là qu’il venait" :start 2390 :end 2821) (sentence :text "«Elle avoue qu’elle m’avait
entendu sonner, puis frapper, et qu’elle avait cru que c’était moi,
qu’elle avait envie de me voir, se disait Swann" :start 2822 :end 2966) (sentence :text "Mais cela ne
s’arrange pas avec le fait qu’elle n’ait pas fait ouvrir" :start 2967 :end 3037) (sentence :text "»" :start 2390 :end 2391)
 ))