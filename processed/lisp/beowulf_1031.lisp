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
 :text "Plus loin, là où toutes leurs feuilles vertes couvraient les arbres,
un seul, petit, trapu, étêté et têtu, secouait au vent une vilaine
chevelure rouge. Ailleurs encore c’était le premier éveil de ce mois
de mai des feuilles, et celles d’un empelopsis merveilleux et
souriant, comme une épine rose de l’hiver, depuis le matin même
étaient tout en fleur. Et le Bois avait l’aspect provisoire et factice
d’une pépinière ou d’un parc, où soit dans un intérêt botanique, soit
pour la préparation d’une fête, on vient d’installer, au milieu des
arbres de sorte commune qui n’ont pas encore été déplantés, deux ou
trois espèces précieuses aux feuillages fantastiques et qui semblent
autour d’eux réserver du vide, donner de l’air, faire de la clarté.
Ainsi c’était la saison où le Bois de Boulogne trahit le plus
d’essences diverses et juxtapose le plus de parties distinctes en un
assemblage composite. Et c’était aussi l’heure. Dans les endroits où
les arbres gardaient encore leurs feuilles, ils semblaient subir une
altération de leur matière à partir du point où ils étaient touchés
par la lumière du soleil, presque horizontale le matin comme elle le
redeviendrait quelques heures plus tard au moment où dans le
crépuscule commençant, elle s’allume comme une lampe, projette à
distance sur le feuillage un reflet artificiel et chaud, et fait
flamber les suprêmes feuilles d’un arbre qui reste le candélabre
incombustible et terne de son faîte incendié. Ici, elle épaississait
comme des briques, et, comme une jaune maçonnerie persane à dessins
bleus, cimentait grossièrement contre le ciel les feuilles des
marronniers, là au contraire les détachait de lui, vers qui elles
crispaient leurs doigts d’or. A mi-hauteur d’un arbre habillé de vigne
vierge, elle greffait et faisait épanouir, impossible à discerner
nettement dans l’éblouissement, un immense bouquet comme de fleurs
rouges, peut-être une variété d’œillet. Les différentes parties du
Bois, mieux confondues l’été dans l’épaisseur et la monotonie des
verdures se trouvaient dégagées. Des espaces plus éclaircis laissaient
voir l’entrée de presque toutes, ou bien un feuillage somptueux la
désignait comme une oriflamme. On distinguait, comme sur une carte en
couleur, Armenonville, le Pré Catelan, Madrid, le Champ de courses,
les bords du Lac. Par moments apparaissait quelque construction
inutile, une fausse grotte, un moulin à qui les arbres en s’écartant
faisaient place ou qu’une pelouse portait en avant sur sa moelleuse
plateforme. On sentait que le Bois n’était pas qu’un bois, qu’il
répondait à une destination étrangère à la vie de ses arbres,
l’exaltation que j’éprouvais n’était pas causée que par l’admiration
de l’automne, mais par un désir. Grande source d’une joie que l’âme
ressent d’abord sans en reconnaître la cause, sans comprendre que rien
au dehors ne la motive. Ainsi regardais-je les arbres avec une
tendresse insatisfaite qui les dépassait et se portait à mon insu vers
ce chef-d’œuvre des belles promeneuses qu’ils enferment chaque jour
pendant quelques heures. J’allais vers l’allée des Acacias. Je
traversais des futaies où la lumière du matin qui leur imposait des
divisions nouvelles, émondait les arbres, mariait ensemble les tiges
diverses et composait des bouquets. Elle attirait adroitement à elle
deux arbres; s’aidant du ciseau puissant du rayon et de l’ombre, elle
retranchait à chacun une moitié de son tronc et de ses branches, et,
tressant ensemble les deux moitiés qui restaient, en faisait soit un
seul pilier d’ombre, que délimitait l’ensoleillement d’alentour, soit
un seul fantôme de clarté dont un réseau d’ombre noire cernait le
factice et tremblant contour. Quand un rayon de soleil dorait les plus
hautes branches, elles semblaient, trempées d’une humidité
étincelante, émerger seules de l’atmosphère liquide et couleur
d’émeraude où la futaie tout entière était plongée comme sous la mer.
Car les arbres continuaient à vivre de leur vie propre et quand ils
n’avaient plus de feuilles, elle brillait mieux sur le fourreau de
velours vert qui enveloppait leurs troncs ou dans l’émail blanc des
sphères de gui qui étaient semées au faîte des peupliers, rondes comme
le soleil et la lune dans la Création de Michel-Ange. Mais forcés
depuis tant d’années par une sorte de greffe à vivre en commun avec la
femme, ils m’évoquaient la dryade, la belle mondaine rapide et colorée
qu’au passage ils couvrent de leurs branches et obligent à ressentir
comme eux la puissance de la saison; ils me rappelaient le temps
heureux de ma croyante jeunesse, quand je venais avidement aux lieux
où des chefs-d’œuvre d’élégance féminine se réaliseraient pour
quelques instants entre les feuillages inconscients et complices. Mais
la beauté que faisaient désirer les sapins et les acacias du bois de
Boulogne, plus troublants en cela que les marronniers et les lilas de
Trianon que j’allais voir, n’était pas fixée en dehors de moi dans les
souvenirs d’une époque historique, dans des œuvres d’art, dans un
petit temple à l’amour au pied duquel s’amoncellent les feuilles
palmées d’or. Je rejoignis les bords du Lac, j’allai jusqu’au Tir aux
pigeons. L’idée de perfection que je portais en moi, je l’avais prêtée
alors à la hauteur d’une victoria, à la maigreur de ces chevaux
furieux et légers comme des guêpes, les yeux injectés de sang comme
les cruels chevaux de Diomède, et que maintenant, pris d’un désir de
revoir ce que j’avais aimé, aussi ardent que celui qui me poussait
bien des années auparavant dans ces mêmes chemins, je voulais avoir de
nouveau sous les yeux au moment où l’énorme cocher de Mme Swann,
surveillé par un petit groom gros comme le poing et aussi enfantin que
saint Georges, essayait de maîtriser leurs ailes d’acier qui se
débattaient effarouchées et palpitantes. Hélas! il n’y avait plus que
des automobiles conduites par des mécaniciens moustachus
qu’accompagnaient de grands valets de pied. Je voulais tenir sous les
yeux de mon corps pour savoir s’ils étaient aussi charmants que les
voyaient les yeux de ma mémoire, de petits chapeaux de femmes si bas
qu’ils semblaient une simple couronne. Tous maintenant étaient
immenses, couverts de fruits et de fleurs et d’oiseaux variés. Au lieu
des belles robes dans lesquelles Mme Swann avait l’air d’une reine,
des tuniques gréco-saxonnes relevaient avec les plis des Tanagra, et
quelquefois dans le style du Directoire, des chiffrons liberty semés
de fleurs comme un papier peint. Sur la tête des messieurs qui
auraient pu se promener avec Mme Swann dans l’allée de la
Reine-Marguerite, je ne trouvais pas le chapeau gris d’autrefois, ni
même un autre. Ils sortaient nu-tête. Et toutes ces parties nouvelles
du spectacle, je n’avais plus de croyance à y introduire pour leur
donner la consistance, l’unité, l’existence; elles passaient éparses
devant moi, au hasard, sans vérité, ne contenant en elles aucune
beauté que mes yeux eussent pu essayer comme autrefois de composer.
C’étaient des femmes quelconques, en l’élégance desquelles je n’avais
aucune foi et dont les toilettes me semblaient sans importance. Mais
quand disparaît une croyance, il lui survit--et de plus en plus vivace
pour masquer le manque de la puissance que nous avons perdue de donner
de la réalité à des choses nouvelles--un attachement fétichiste aux
anciennes qu’elle avait animées, comme si c’était en elles et non en
nous que le divin résidait et si notre incrédulité actuelle avait une
cause contingente, la mort des Dieux."
 :tokens 1200
 :processed-at "2025-03-16T02:18:14.910026"
 :entities (list
  (entity :text "Plus" :label "ORG" :start 0 :end 4) (entity :text "Bois" :label "ORG" :start 360 :end 364) (entity :text "Bois" :label "ORG" :start 775 :end 779) (entity :text "Boulogne" :label "ORG" :start 783 :end 791) (entity :text "Dans" :label "ORG" :start 924 :end 928) (entity :text "Ici," :label "ORG" :start 1453 :end 1457) (entity :text "Bois," :label "ORG" :start 1944 :end 1949) (entity :text "Catelan," :label "ORG" :start 2248 :end 2256) (entity :text "Madrid," :label "ORG" :start 2257 :end 2264) (entity :text "Champ" :label "ORG" :start 2268 :end 2273) (entity :text "Lac." :label "ORG" :start 2299 :end 2303) (entity :text "Bois" :label "ORG" :start 2517 :end 2521) (entity :text "Grande" :label "ORG" :start 2716 :end 2722) (entity :text "Elle" :label "ORG" :start 3260 :end 3264) (entity :text "Quand" :label "ORG" :start 3667 :end 3672) (entity :text "Création" :label "ORG" :start 4203 :end 4211) (entity :text "Michel-Ange." :label "ORG" :start 4215 :end 4227) (entity :text "Mais" :label "ORG" :start 4228 :end 4232) (entity :text "Mais" :label "ORG" :start 4714 :end 4718) (entity :text "Boulogne," :label "ORG" :start 4788 :end 4797) (entity :text "Trianon" :label "ORG" :start 4858 :end 4865) (entity :text "Lac," :label "ORG" :start 5100 :end 5104) (entity :text "Diomède," :label "ORG" :start 5355 :end 5363) (entity :text "Swann," :label "ORG" :start 5598 :end 5604) (entity :text "Georges," :label "ORG" :start 5682 :end 5690) (entity :text "Hélas!" :label "ORG" :start 5781 :end 5787) (entity :text "Tous" :label "ORG" :start 6113 :end 6117) (entity :text "Swann" :label "ORG" :start 6245 :end 6250) (entity :text "Tanagra," :label "ORG" :start 6333 :end 6341) (entity :text "Directoire," :label "ORG" :start 6374 :end 6385) (entity :text "Swann" :label "ORG" :start 6510 :end 6515) (entity :text "Reine-Marguerite," :label "ORG" :start 6535 :end 6552) (entity :text "Mais" :label "ORG" :start 7077 :end 7081) (entity :text "Dieux." :label "ORG" :start 7462 :end 7468)
 )
 :sentences (list
  (sentence :text "Plus loin, là où toutes leurs feuilles vertes couvraient les arbres,
un seul, petit, trapu, étêté et têtu, secouait au vent une vilaine
chevelure rouge" :start 0 :end 151) (sentence :text "Ailleurs encore c’était le premier éveil de ce mois
de mai des feuilles, et celles d’un empelopsis merveilleux et
souriant, comme une épine rose de l’hiver, depuis le matin même
étaient tout en fleur" :start 152 :end 352) (sentence :text "Et le Bois avait l’aspect provisoire et factice
d’une pépinière ou d’un parc, où soit dans un intérêt botanique, soit
pour la préparation d’une fête, on vient d’installer, au milieu des
arbres de sorte commune qui n’ont pas encore été déplantés, deux ou
trois espèces précieuses aux feuillages fantastiques et qui semblent
autour d’eux réserver du vide, donner de l’air, faire de la clarté" :start 353 :end 743) (sentence :text "Ainsi c’était la saison où le Bois de Boulogne trahit le plus
d’essences diverses et juxtapose le plus de parties distinctes en un
assemblage composite" :start 744 :end 896) (sentence :text "Et c’était aussi l’heure" :start 897 :end 922) (sentence :text "Dans les endroits où
les arbres gardaient encore leurs feuilles, ils semblaient subir une
altération de leur matière à partir du point où ils étaient touchés
par la lumière du soleil, presque horizontale le matin comme elle le
redeviendrait quelques heures plus tard au moment où dans le
crépuscule commençant, elle s’allume comme une lampe, projette à
distance sur le feuillage un reflet artificiel et chaud, et fait
flamber les suprêmes feuilles d’un arbre qui reste le candélabre
incombustible et terne de son faîte incendié" :start 923 :end 1451) (sentence :text "Ici, elle épaississait
comme des briques, et, comme une jaune maçonnerie persane à dessins
bleus, cimentait grossièrement contre le ciel les feuilles des
marronniers, là au contraire les détachait de lui, vers qui elles
crispaient leurs doigts d’or" :start 1452 :end 1701) (sentence :text "A mi-hauteur d’un arbre habillé de vigne
vierge, elle greffait et faisait épanouir, impossible à discerner
nettement dans l’éblouissement, un immense bouquet comme de fleurs
rouges, peut-être une variété d’œillet" :start 1702 :end 1915) (sentence :text "Les différentes parties du
Bois, mieux confondues l’été dans l’épaisseur et la monotonie des
verdures se trouvaient dégagées" :start 1916 :end 2041) (sentence :text "Des espaces plus éclaircis laissaient
voir l’entrée de presque toutes, ou bien un feuillage somptueux la
désignait comme une oriflamme" :start 2042 :end 2177) (sentence :text "On distinguait, comme sur une carte en
couleur, Armenonville, le Pré Catelan, Madrid, le Champ de courses,
les bords du Lac" :start 2178 :end 2302) (sentence :text "Par moments apparaissait quelque construction
inutile, une fausse grotte, un moulin à qui les arbres en s’écartant
faisaient place ou qu’une pelouse portait en avant sur sa moelleuse
plateforme" :start 2303 :end 2497) (sentence :text "On sentait que le Bois n’était pas qu’un bois, qu’il
répondait à une destination étrangère à la vie de ses arbres,
l’exaltation que j’éprouvais n’était pas causée que par l’admiration
de l’automne, mais par un désir" :start 2498 :end 2714) (sentence :text "Grande source d’une joie que l’âme
ressent d’abord sans en reconnaître la cause, sans comprendre que rien
au dehors ne la motive" :start 2715 :end 2844) (sentence :text "Ainsi regardais-je les arbres avec une
tendresse insatisfaite qui les dépassait et se portait à mon insu vers
ce chef-d’œuvre des belles promeneuses qu’ils enferment chaque jour
pendant quelques heures" :start 2845 :end 3047) (sentence :text "J’allais vers l’allée des Acacias" :start 3048 :end 3082) (sentence :text "Je
traversais des futaies où la lumière du matin qui leur imposait des
divisions nouvelles, émondait les arbres, mariait ensemble les tiges
diverses et composait des bouquets" :start 3083 :end 3258) (sentence :text "Elle attirait adroitement à elle
deux arbres; s’aidant du ciseau puissant du rayon et de l’ombre, elle
retranchait à chacun une moitié de son tronc et de ses branches, et,
tressant ensemble les deux moitiés qui restaient, en faisait soit un
seul pilier d’ombre, que délimitait l’ensoleillement d’alentour, soit
un seul fantôme de clarté dont un réseau d’ombre noire cernait le
factice et tremblant contour" :start 3259 :end 3665) (sentence :text "Quand un rayon de soleil dorait les plus
hautes branches, elles semblaient, trempées d’une humidité
étincelante, émerger seules de l’atmosphère liquide et couleur
d’émeraude où la futaie tout entière était plongée comme sous la mer" :start 3666 :end 3898) (sentence :text "Car les arbres continuaient à vivre de leur vie propre et quand ils
n’avaient plus de feuilles, elle brillait mieux sur le fourreau de
velours vert qui enveloppait leurs troncs ou dans l’émail blanc des
sphères de gui qui étaient semées au faîte des peupliers, rondes comme
le soleil et la lune dans la Création de Michel-Ange" :start 3899 :end 4226) (sentence :text "Mais forcés
depuis tant d’années par une sorte de greffe à vivre en commun avec la
femme, ils m’évoquaient la dryade, la belle mondaine rapide et colorée
qu’au passage ils couvrent de leurs branches et obligent à ressentir
comme eux la puissance de la saison; ils me rappelaient le temps
heureux de ma croyante jeunesse, quand je venais avidement aux lieux
où des chefs-d’œuvre d’élégance féminine se réaliseraient pour
quelques instants entre les feuillages inconscients et complices" :start 4227 :end 4712) (sentence :text "Mais
la beauté que faisaient désirer les sapins et les acacias du bois de
Boulogne, plus troublants en cela que les marronniers et les lilas de
Trianon que j’allais voir, n’était pas fixée en dehors de moi dans les
souvenirs d’une époque historique, dans des œuvres d’art, dans un
petit temple à l’amour au pied duquel s’amoncellent les feuilles
palmées d’or" :start 4713 :end 5072) (sentence :text "Je rejoignis les bords du Lac, j’allai jusqu’au Tir aux
pigeons" :start 5073 :end 5137) (sentence :text "L’idée de perfection que je portais en moi, je l’avais prêtée
alors à la hauteur d’une victoria, à la maigreur de ces chevaux
furieux et légers comme des guêpes, les yeux injectés de sang comme
les cruels chevaux de Diomède, et que maintenant, pris d’un désir de
revoir ce que j’avais aimé, aussi ardent que celui qui me poussait
bien des années auparavant dans ces mêmes chemins, je voulais avoir de
nouveau sous les yeux au moment où l’énorme cocher de Mme Swann,
surveillé par un petit groom gros comme le poing et aussi enfantin que
saint Georges, essayait de maîtriser leurs ailes d’acier qui se
débattaient effarouchées et palpitantes" :start 5138 :end 5779) (sentence :text "Hélas! il n’y avait plus que
des automobiles conduites par des mécaniciens moustachus
qu’accompagnaient de grands valets de pied" :start 5780 :end 5909) (sentence :text "Je voulais tenir sous les
yeux de mon corps pour savoir s’ils étaient aussi charmants que les
voyaient les yeux de ma mémoire, de petits chapeaux de femmes si bas
qu’ils semblaient une simple couronne" :start 5910 :end 6111) (sentence :text "Tous maintenant étaient
immenses, couverts de fruits et de fleurs et d’oiseaux variés" :start 6112 :end 6198) (sentence :text "Au lieu
des belles robes dans lesquelles Mme Swann avait l’air d’une reine,
des tuniques gréco-saxonnes relevaient avec les plis des Tanagra, et
quelquefois dans le style du Directoire, des chiffrons liberty semés
de fleurs comme un papier peint" :start 6199 :end 6445) (sentence :text "Sur la tête des messieurs qui
auraient pu se promener avec Mme Swann dans l’allée de la
Reine-Marguerite, je ne trouvais pas le chapeau gris d’autrefois, ni
même un autre" :start 6446 :end 6617) (sentence :text "Ils sortaient nu-tête" :start 6618 :end 6640) (sentence :text "Et toutes ces parties nouvelles
du spectacle, je n’avais plus de croyance à y introduire pour leur
donner la consistance, l’unité, l’existence; elles passaient éparses
devant moi, au hasard, sans vérité, ne contenant en elles aucune
beauté que mes yeux eussent pu essayer comme autrefois de composer" :start 6641 :end 6941) (sentence :text "C’étaient des femmes quelconques, en l’élégance desquelles je n’avais
aucune foi et dont les toilettes me semblaient sans importance" :start 6942 :end 7075) (sentence :text "Mais
quand disparaît une croyance, il lui survit--et de plus en plus vivace
pour masquer le manque de la puissance que nous avons perdue de donner
de la réalité à des choses nouvelles--un attachement fétichiste aux
anciennes qu’elle avait animées, comme si c’était en elles et non en
nous que le divin résidait et si notre incrédulité actuelle avait une
cause contingente, la mort des Dieux" :start 7076 :end 7467)
 ))