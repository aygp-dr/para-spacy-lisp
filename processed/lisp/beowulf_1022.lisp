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
 :text "Mais le plus souvent,--quand je ne devais pas voir Gilberte--comme
j’avais appris que Mme Swann se promenait presque chaque jour dans
l’allée «des Acacias», autour du grand Lac, et dans l’allée de la
«Reine Marguerite», je dirigeais Françoise du côté du bois de
Boulogne. Il était pour moi comme ces jardins zoologiques où l’on voit
rassemblés des flores diverses et des paysages opposés; où, après une
colline on trouve une grotte, un pré, des rochers, une rivière, une
fosse, une colline, un marais, mais où l’on sait qu’ils ne sont là que
pour fournir aux ébats de l’hippopotame, des zèbres, des crocodiles,
des lapins russes, des ours et du héron, un milieu approprié ou un
cadre pittoresque; lui, le Bois, complexe aussi, réunissant des petits
mondes divers et clos,--faisant succéder quelque ferme plantée d’arbres
rouges, de chênes d’Amérique, comme une exploitation agricole dans la
Virginie, à une sapinière au bord du lac, ou à une futaie d’où surgit
tout à coup dans sa souple fourrure, avec les beaux yeux d’une bête,
quelque promeneuse rapide,--il était le Jardin des femmes; et,--comme
l’allée de Myrtes de l’Enéide,--plantée pour elles d’arbres d’une seule
essence, l’allée des Acacias était fréquentée par les Beautés
célèbres. Comme, de loin, la culmination du rocher d’où elle se jette
dans l’eau, transporte de joie les enfants qui savent qu’ils vont voir
l’otarie, bien avant d’arriver à l’allée des Acacias, leur parfum qui,
irradiant alentour, faisait sentir de loin l’approche et la
singularité d’une puissante et molle individualité végétale; puis,
quand je me rapprochais, le faîte aperçu de leur frondaison légère et
mièvre, d’une élégance facile, d’une coupe coquette et d’un mince
tissu, sur laquelle des centaines de fleurs s’étaient abattues comme
des colonies ailées et vibratiles de parasites précieux; enfin jusqu’à
leur nom féminin, désœuvré et doux, me faisaient battre le cœur mais
d’un désir mondain, comme ces valses qui ne nous évoquent plus que le
nom des belles invitées que l’huissier annonce à l’entrée d’un bal. On
m’avait dit que je verrais dans l’allée certaines élégantes que, bien
qu’elles n’eussent pas toutes été épousées, l’on citait habituellement
à côté de Mme Swann, mais le plus souvent sous leur nom de guerre;
leur nouveau nom, quand il y en avait un, n’était qu’une sorte
d’incognito que ceux qui voulaient parler d’elles avaient soin de
lever pour se faire comprendre. Pensant que le Beau--dans l’ordre des
élégances féminines--était régi par des lois occultes à la connaissance
desquelles elles avaient été initiées, et qu’elles avaient le pouvoir
de le réaliser, j’acceptais d’avance comme une révélation l’apparition
de leur toilette, de leur attelage, de mille détails au sein desquels
je mettais ma croyance comme une âme intérieure qui donnait la
cohésion d’un chef-d’œuvre à cet ensemble éphémère et mouvant. Mais
c’est Mme Swann que je voulais voir, et j’attendais qu’elle passât,
ému comme si ç’avait été Gilberte, dont les parents, imprégnés comme
tout ce qui l’entourait, de son charme, excitaient en moi autant
d’amour qu’elle, même un trouble plus douloureux (parce que leur point
de contact avec elle était cette partie intestine de sa vie qui
m’était interdite), et enfin (car je sus bientôt, comme on le verra,
qu’ils n’aimaient pas que je jouasse avec elle), ce sentiment de
vénération que nous vouons toujours à ceux qui exercent sans frein la
puissance de nous faire du mal."
 :tokens 556
 :processed-at "2025-03-16T02:18:14.895180"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 90 :end 95) (entity :text "Lac," :label "ORG" :start 173 :end 177) (entity :text "«Reine" :label "ORG" :start 200 :end 206) (entity :text "Marguerite»," :label "ORG" :start 207 :end 219) (entity :text "Françoise" :label "ORG" :start 233 :end 242) (entity :text "Boulogne." :label "ORG" :start 262 :end 271) (entity :text "Bois," :label "ORG" :start 705 :end 710) (entity :text "Virginie," :label "ORG" :start 891 :end 900) (entity :text "Jardin" :label "ORG" :start 1070 :end 1076) (entity :text "Myrtes" :label "ORG" :start 1111 :end 1117) (entity :text "Beautés" :label "ORG" :start 1226 :end 1233) (entity :text "Comme," :label "ORG" :start 1244 :end 1250) (entity :text "Swann," :label "ORG" :start 2214 :end 2220) (entity :text "Pensant" :label "ORG" :start 2428 :end 2435) (entity :text "Mais" :label "ORG" :start 2875 :end 2879) (entity :text "Swann" :label "ORG" :start 2890 :end 2895) (entity :text "Gilberte," :label "ORG" :start 2973 :end 2982)
 )
 :sentences (list
  (sentence :text "Mais le plus souvent,--quand je ne devais pas voir Gilberte--comme
j’avais appris que Mme Swann se promenait presque chaque jour dans
l’allée «des Acacias», autour du grand Lac, et dans l’allée de la
«Reine Marguerite», je dirigeais Françoise du côté du bois de
Boulogne" :start 0 :end 270) (sentence :text "Il était pour moi comme ces jardins zoologiques où l’on voit
rassemblés des flores diverses et des paysages opposés; où, après une
colline on trouve une grotte, un pré, des rochers, une rivière, une
fosse, une colline, un marais, mais où l’on sait qu’ils ne sont là que
pour fournir aux ébats de l’hippopotame, des zèbres, des crocodiles,
des lapins russes, des ours et du héron, un milieu approprié ou un
cadre pittoresque; lui, le Bois, complexe aussi, réunissant des petits
mondes divers et clos,--faisant succéder quelque ferme plantée d’arbres
rouges, de chênes d’Amérique, comme une exploitation agricole dans la
Virginie, à une sapinière au bord du lac, ou à une futaie d’où surgit
tout à coup dans sa souple fourrure, avec les beaux yeux d’une bête,
quelque promeneuse rapide,--il était le Jardin des femmes; et,--comme
l’allée de Myrtes de l’Enéide,--plantée pour elles d’arbres d’une seule
essence, l’allée des Acacias était fréquentée par les Beautés
célèbres" :start 271 :end 1242) (sentence :text "Comme, de loin, la culmination du rocher d’où elle se jette
dans l’eau, transporte de joie les enfants qui savent qu’ils vont voir
l’otarie, bien avant d’arriver à l’allée des Acacias, leur parfum qui,
irradiant alentour, faisait sentir de loin l’approche et la
singularité d’une puissante et molle individualité végétale; puis,
quand je me rapprochais, le faîte aperçu de leur frondaison légère et
mièvre, d’une élégance facile, d’une coupe coquette et d’un mince
tissu, sur laquelle des centaines de fleurs s’étaient abattues comme
des colonies ailées et vibratiles de parasites précieux; enfin jusqu’à
leur nom féminin, désœuvré et doux, me faisaient battre le cœur mais
d’un désir mondain, comme ces valses qui ne nous évoquent plus que le
nom des belles invitées que l’huissier annonce à l’entrée d’un bal" :start 1243 :end 2054) (sentence :text "On
m’avait dit que je verrais dans l’allée certaines élégantes que, bien
qu’elles n’eussent pas toutes été épousées, l’on citait habituellement
à côté de Mme Swann, mais le plus souvent sous leur nom de guerre;
leur nouveau nom, quand il y en avait un, n’était qu’une sorte
d’incognito que ceux qui voulaient parler d’elles avaient soin de
lever pour se faire comprendre" :start 2055 :end 2426) (sentence :text "Pensant que le Beau--dans l’ordre des
élégances féminines--était régi par des lois occultes à la connaissance
desquelles elles avaient été initiées, et qu’elles avaient le pouvoir
de le réaliser, j’acceptais d’avance comme une révélation l’apparition
de leur toilette, de leur attelage, de mille détails au sein desquels
je mettais ma croyance comme une âme intérieure qui donnait la
cohésion d’un chef-d’œuvre à cet ensemble éphémère et mouvant" :start 2427 :end 2873) (sentence :text "Mais
c’est Mme Swann que je voulais voir, et j’attendais qu’elle passât,
ému comme si ç’avait été Gilberte, dont les parents, imprégnés comme
tout ce qui l’entourait, de son charme, excitaient en moi autant
d’amour qu’elle, même un trouble plus douloureux (parce que leur point
de contact avec elle était cette partie intestine de sa vie qui
m’était interdite), et enfin (car je sus bientôt, comme on le verra,
qu’ils n’aimaient pas que je jouasse avec elle), ce sentiment de
vénération que nous vouons toujours à ceux qui exercent sans frein la
puissance de nous faire du mal" :start 2874 :end 3451)
 ))