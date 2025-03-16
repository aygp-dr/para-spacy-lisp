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
 :text "Mais, quand Odette était partie, Swann souriait en pensant qu’elle lui
avait dit combien le temps lui durerait jusqu’à ce qu’il lui permît de
revenir; il se rappelait l’air inquiet, timide avec lequel elle
l’avait une fois prié que ce ne fût pas dans trop longtemps, et les
regards qu’elle avait eus à ce moment-là, fixés sur lui en une
imploration craintive, et qui la faisaient touchante sous le bouquet
de fleurs de pensées artificielles fixé devant son chapeau rond de
paille blanche, à brides de velours noir. «Et vous, avait-elle dit,
vous ne viendriez pas une fois chez moi prendre le thé?» Il avait
allégué des travaux en train, une étude--en réalité abandonnée depuis
des années--sur Ver Meer de Delft. «Je comprends que je ne peux rien
faire, moi chétive, à côté de grands savants comme vous autres, lui
avait-elle répondu. Je serais comme la grenouille devant l’aréopage.
Et pourtant j’aimerais tant m’instruire, savoir, être initiée. Comme
cela doit être amusant de bouquiner, de fourrer son nez dans de vieux
papiers, avait-elle ajouté avec l’air de contentement de soi-même que
prend une femme élégante pour affirmer que sa joie est de se livrer
sans crainte de se salir à une besogne malpropre, comme de faire la
cuisine en «mettant elle-même les mains à la pâte». «Vous allez vous
moquer de moi, ce peintre qui vous empêche de me voir (elle voulait
parler de Ver Meer), je n’avais jamais entendu parler de lui; vit-il
encore? Est-ce qu’on peut voir de ses œuvres à Paris, pour que je
puisse me représenter ce que vous aimez, deviner un peu ce qu’il y a
sous ce grand front qui travaille tant, dans cette tête qu’on sent
toujours en train de réfléchir, me dire: voilà, c’est à cela qu’il est
en train de penser. Quel rêve ce serait d’être mêlée à vos travaux!»
Il s’était excusé sur sa peur des amitiés nouvelles, ce qu’il avait
appelé, par galanterie, sa peur d’être malheureux. «Vous avez peur
d’une affection? comme c’est drôle, moi qui ne cherche que cela, qui
donnerais ma vie pour en trouver une, avait-elle dit d’une voix si
naturelle, si convaincue, qu’il en avait été remué. Vous avez dû
souffrir par une femme. Et vous croyez que les autres sont comme elle.
Elle n’a pas su vous comprendre; vous êtes un être si à part. C’est
cela que j’ai aimé d’abord en vous, j’ai bien senti que vous n’étiez
pas comme tout le monde.»--«Et puis d’ailleurs vous aussi, lui avait-il
dit, je sais bien ce que c’est que les femmes, vous devez avoir des
tas d’occupations, être peu libre.»--«Moi, je n’ai jamais rien à faire!
Je suis toujours libre, je le serai toujours pour vous. A n’importe
quelle heure du jour ou de la nuit où il pourrait vous être commode de
me voir, faites-moi chercher, et je serai trop heureuse d’accourir. Le
ferez-vous? Savez-vous ce qui serait gentil, ce serait de vous faire
présenter à Mme Verdurin chez qui je vais tous les soirs. Croyez-vous!
si on s’y retrouvait et si je pensais que c’est un peu pour moi que
vous y êtes!»"
 :tokens 521
 :processed-at "2025-03-16T02:18:14.233119"
 :entities (list
  (entity :text "Mais," :label "ORG" :start 0 :end 5) (entity :text "Odette" :label "ORG" :start 12 :end 18) (entity :text "Swann" :label "ORG" :start 33 :end 38) (entity :text "Meer" :label "ORG" :start 697 :end 701) (entity :text "Delft." :label "ORG" :start 705 :end 711) (entity :text "Comme" :label "ORG" :start 946 :end 951) (entity :text "«Vous" :label "ORG" :start 1280 :end 1285) (entity :text "Meer)," :label "ORG" :start 1379 :end 1385) (entity :text "Paris," :label "ORG" :start 1481 :end 1487) (entity :text "Quel" :label "ORG" :start 1727 :end 1731) (entity :text "«Vous" :label "ORG" :start 1895 :end 1900) (entity :text "Vous" :label "ORG" :start 2099 :end 2103) (entity :text "Elle" :label "ORG" :start 2183 :end 2187) (entity :text "Verdurin" :label "ORG" :start 2827 :end 2835)
 )
 :sentences (list
  (sentence :text "Mais, quand Odette était partie, Swann souriait en pensant qu’elle lui
avait dit combien le temps lui durerait jusqu’à ce qu’il lui permît de
revenir; il se rappelait l’air inquiet, timide avec lequel elle
l’avait une fois prié que ce ne fût pas dans trop longtemps, et les
regards qu’elle avait eus à ce moment-là, fixés sur lui en une
imploration craintive, et qui la faisaient touchante sous le bouquet
de fleurs de pensées artificielles fixé devant son chapeau rond de
paille blanche, à brides de velours noir" :start 0 :end 513) (sentence :text "«Et vous, avait-elle dit,
vous ne viendriez pas une fois chez moi prendre le thé?» Il avait
allégué des travaux en train, une étude--en réalité abandonnée depuis
des années--sur Ver Meer de Delft" :start 514 :end 710) (sentence :text "«Je comprends que je ne peux rien
faire, moi chétive, à côté de grands savants comme vous autres, lui
avait-elle répondu" :start 711 :end 832) (sentence :text "Je serais comme la grenouille devant l’aréopage" :start 833 :end 881) (sentence :text "Et pourtant j’aimerais tant m’instruire, savoir, être initiée" :start 882 :end 944) (sentence :text "Comme
cela doit être amusant de bouquiner, de fourrer son nez dans de vieux
papiers, avait-elle ajouté avec l’air de contentement de soi-même que
prend une femme élégante pour affirmer que sa joie est de se livrer
sans crainte de se salir à une besogne malpropre, comme de faire la
cuisine en «mettant elle-même les mains à la pâte»" :start 945 :end 1278) (sentence :text "«Vous allez vous
moquer de moi, ce peintre qui vous empêche de me voir (elle voulait
parler de Ver Meer), je n’avais jamais entendu parler de lui; vit-il
encore? Est-ce qu’on peut voir de ses œuvres à Paris, pour que je
puisse me représenter ce que vous aimez, deviner un peu ce qu’il y a
sous ce grand front qui travaille tant, dans cette tête qu’on sent
toujours en train de réfléchir, me dire: voilà, c’est à cela qu’il est
en train de penser" :start 1279 :end 1725) (sentence :text "Quel rêve ce serait d’être mêlée à vos travaux!»
Il s’était excusé sur sa peur des amitiés nouvelles, ce qu’il avait
appelé, par galanterie, sa peur d’être malheureux" :start 1726 :end 1893) (sentence :text "«Vous avez peur
d’une affection? comme c’est drôle, moi qui ne cherche que cela, qui
donnerais ma vie pour en trouver une, avait-elle dit d’une voix si
naturelle, si convaincue, qu’il en avait été remué" :start 1894 :end 2097) (sentence :text "Vous avez dû
souffrir par une femme" :start 2098 :end 2134) (sentence :text "Et vous croyez que les autres sont comme elle" :start 2135 :end 2181) (sentence :text "Elle n’a pas su vous comprendre; vous êtes un être si à part" :start 2182 :end 2243) (sentence :text "C’est
cela que j’ai aimé d’abord en vous, j’ai bien senti que vous n’étiez
pas comme tout le monde" :start 2244 :end 2343) (sentence :text "»--«Et puis d’ailleurs vous aussi, lui avait-il
dit, je sais bien ce que c’est que les femmes, vous devez avoir des
tas d’occupations, être peu libre" :start 2344 :end 2493) (sentence :text "»--«Moi, je n’ai jamais rien à faire!
Je suis toujours libre, je le serai toujours pour vous" :start 2494 :end 2586) (sentence :text "A n’importe
quelle heure du jour ou de la nuit où il pourrait vous être commode de
me voir, faites-moi chercher, et je serai trop heureuse d’accourir" :start 2587 :end 2737) (sentence :text "Le
ferez-vous? Savez-vous ce qui serait gentil, ce serait de vous faire
présenter à Mme Verdurin chez qui je vais tous les soirs" :start 2738 :end 2867) (sentence :text "Croyez-vous!
si on s’y retrouvait et si je pensais que c’est un peu pour moi que
vous y êtes!»" :start 2868 :end 2963)
 ))