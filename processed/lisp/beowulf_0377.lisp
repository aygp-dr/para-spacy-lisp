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
 :text "Aussi le côté de Méséglise et le côté de Guermantes restent-ils pour
moi liés à bien des petits événements de celle de toutes les diverses
vies que nous menons parallèlement, qui est la plus pleine de
péripéties, la plus riche en épisodes, je veux dire la vie
intellectuelle. Sans doute elle progresse en nous insensiblement et
les vérités qui en ont changé pour nous le sens et l’aspect, qui nous
ont ouvert de nouveaux chemins, nous en préparions depuis longtemps la
découverte; mais c’était sans le savoir; et elles ne datent pour nous
que du jour, de la minute où elles nous sont devenues visibles. Les
fleurs qui jouaient alors sur l’herbe, l’eau qui passait au soleil,
tout le paysage qui environna leur apparition continue à accompagner
leur souvenir de son visage inconscient ou distrait; et certes quand
ils étaient longuement contemplés par cet humble passant, par cet
enfant qui rêvait,--comme l’est un roi, par un mémorialiste perdu dans
la foule,--ce coin de nature, ce bout de jardin n’eussent pu penser que
ce serait grâce à lui qu’ils seraient appelés à survivre en leurs
particularités les plus éphémères; et pourtant ce parfum d’aubépine
qui butine le long de la haie où les églantiers le remplaceront
bientôt, un bruit de pas sans écho sur le gravier d’une allée, une
bulle formée contre une plante aquatique par l’eau de la rivière et
qui crève aussitôt, mon exaltation les a portés et a réussi à leur
faire traverser tant d’années successives, tandis qu’alentour les
chemins se sont effacés et que sont morts ceux qui les foulèrent et le
souvenir de ceux qui les foulèrent. Parfois ce morceau de paysage
amené ainsi jusqu’à aujourd’hui se détache si isolé de tout, qu’il
flotte incertain dans ma pensée comme une Délos fleurie, sans que je
puisse dire de quel pays, de quel temps--peut-être tout simplement de
quel rêve--il vient. Mais c’est surtout comme à des gisements profonds
de mon sol mental, comme aux terrains résistants sur lesquels je
m’appuie encore, que je dois penser au côté de Méséglise et au côté de
Guermantes. C’est parce que je croyais aux choses, aux êtres, tandis
que je les parcourais, que les choses, les êtres qu’ils m’ont fait
connaître, sont les seuls que je prenne encore au sérieux et qui me
donnent encore de la joie. Soit que la foi qui crée soit tarie en moi,
soit que la réalité ne se forme que dans la mémoire, les fleurs qu’on
me montre aujourd’hui pour la première fois ne me semblent pas de
vraies fleurs. Le côté de Méséglise avec ses lilas, ses aubépines, ses
bluets, ses coquelicots, ses pommiers, le côté de Guermantes avec sa
rivière à têtards, ses nymphéas et ses boutons d’or, ont constitué à
tout jamais pour moi la figure des pays où j’aimerais vivre, où
j’exige avant tout qu’on puisse aller à la pêche, se promener en
canot, voir des ruines de fortifications gothiques et trouver au
milieu des blés, ainsi qu’était Saint-André-des-Champs, une église
monumentale, rustique et dorée comme une meule; et les bluets, les
aubépines, les pommiers qu’il m’arrive quand je voyage de rencontrer
encore dans les champs, parce qu’ils sont situés à la même profondeur,
au niveau de mon passé, sont immédiatement en communication avec mon
cœur. Et pourtant, parce qu’il y a quelque chose d’individuel dans les
lieux, quand me saisit le désir de revoir le côté de Guermantes, on ne
le satisferait pas en me menant au bord d’une rivière où il y aurait
d’aussi beaux, de plus beaux nymphéas que dans la Vivonne, pas plus
que le soir en rentrant,--à l’heure où s’éveillait en moi cette
angoisse qui plus tard émigre dans l’amour, et peut devenir à jamais
inséparable de lui--, je n’aurais souhaité que vînt me dire bonsoir une
mère plus belle et plus intelligente que la mienne. Non; de même que
ce qu’il me fallait pour que je pusse m’endormir heureux, avec cette
paix sans trouble qu’aucune maîtresse n’a pu me donner depuis
puisqu’on doute d’elles encore au moment où on croit en elles, et
qu’on ne possède jamais leur cœur comme je recevais dans un baiser
celui de ma mère, tout entier, sans la réserve d’une arrière-pensée,
sans le reliquat d’une intention qui ne fut pas pour moi,--c’est que ce
fût elle, c’est qu’elle inclinât vers moi ce visage où il y avait
au-dessous de l’œil quelque chose qui était, paraît-il, un défaut, et
que j’aimais à l’égal du reste, de même ce que je veux revoir, c’est
le côté de Guermantes que j’ai connu, avec la ferme qui est peu
éloignée des deux suivantes serrées l’une contre l’autre, à l’entrée
de l’allée des chênes; ce sont ces prairies où, quand le soleil les
rend réfléchissantes comme une mare, se dessinent les feuilles des
pommiers, c’est ce paysage dont parfois, la nuit dans mes rêves,
l’individualité m’étreint avec une puissance presque fantastique et
que je ne peux plus retrouver au réveil. Sans doute pour avoir à
jamais indissolublement uni en moi des impressions différentes rien
que parce qu’ils me les avaient fait éprouver en même temps, le côté
de Méséglise ou le côté de Guermantes m’ont exposé, pour l’avenir, à
bien des déceptions et même à bien des fautes. Car souvent j’ai voulu
revoir une personne sans discerner que c’était simplement parce
qu’elle me rappelait une haie d’aubépines, et j’ai été induit à
croire, à faire croire à un regain d’affection, par un simple désir de
voyage. Mais par là même aussi, et en restant présents en celles de
mes impressions d’aujourd’hui auxquelles ils peuvent se relier, ils
leur donnent des assises, de la profondeur, une dimension de plus
qu’aux autres. Ils leur ajoutent aussi un charme, une signification
qui n’est que pour moi. Quand par les soirs d’été le ciel harmonieux
gronde comme une bête fauve et que chacun boude l’orage, c’est au côté
de Méséglise que je dois de rester seul en extase à respirer, à
travers le bruit de la pluie qui tombe, l’odeur d’invisibles et
persistants lilas."
 :tokens 1005
 :processed-at "2025-03-16T02:18:14.197323"
 :entities (list
  (entity :text "Méséglise" :label "ORG" :start 17 :end 26) (entity :text "Guermantes" :label "ORG" :start 41 :end 51) (entity :text "Sans" :label "ORG" :start 276 :end 280) (entity :text "Parfois" :label "ORG" :start 1595 :end 1602) (entity :text "Délos" :label "ORG" :start 1734 :end 1739) (entity :text "Mais" :label "ORG" :start 1852 :end 1856) (entity :text "Méséglise" :label "ORG" :start 2014 :end 2023) (entity :text "Guermantes." :label "ORG" :start 2038 :end 2049) (entity :text "Soit" :label "ORG" :start 2269 :end 2273) (entity :text "Méséglise" :label "ORG" :start 2475 :end 2484) (entity :text "Guermantes" :label "ORG" :start 2570 :end 2580) (entity :text "Guermantes," :label "ORG" :start 3319 :end 3330) (entity :text "Vivonne," :label "ORG" :start 3456 :end 3464) (entity :text "Non;" :label "ORG" :start 3731 :end 3735) (entity :text "Guermantes" :label "ORG" :start 4369 :end 4379) (entity :text "Sans" :label "ORG" :start 4800 :end 4804) (entity :text "Méséglise" :label "ORG" :start 4964 :end 4973) (entity :text "Guermantes" :label "ORG" :start 4988 :end 4998) (entity :text "Mais" :label "ORG" :start 5307 :end 5311) (entity :text "Quand" :label "ORG" :start 5593 :end 5598) (entity :text "Méséglise" :label "ORG" :start 5712 :end 5721)
 )
 :sentences (list
  (sentence :text "Aussi le côté de Méséglise et le côté de Guermantes restent-ils pour
moi liés à bien des petits événements de celle de toutes les diverses
vies que nous menons parallèlement, qui est la plus pleine de
péripéties, la plus riche en épisodes, je veux dire la vie
intellectuelle" :start 0 :end 274) (sentence :text "Sans doute elle progresse en nous insensiblement et
les vérités qui en ont changé pour nous le sens et l’aspect, qui nous
ont ouvert de nouveaux chemins, nous en préparions depuis longtemps la
découverte; mais c’était sans le savoir; et elles ne datent pour nous
que du jour, de la minute où elles nous sont devenues visibles" :start 275 :end 601) (sentence :text "Les
fleurs qui jouaient alors sur l’herbe, l’eau qui passait au soleil,
tout le paysage qui environna leur apparition continue à accompagner
leur souvenir de son visage inconscient ou distrait; et certes quand
ils étaient longuement contemplés par cet humble passant, par cet
enfant qui rêvait,--comme l’est un roi, par un mémorialiste perdu dans
la foule,--ce coin de nature, ce bout de jardin n’eussent pu penser que
ce serait grâce à lui qu’ils seraient appelés à survivre en leurs
particularités les plus éphémères; et pourtant ce parfum d’aubépine
qui butine le long de la haie où les églantiers le remplaceront
bientôt, un bruit de pas sans écho sur le gravier d’une allée, une
bulle formée contre une plante aquatique par l’eau de la rivière et
qui crève aussitôt, mon exaltation les a portés et a réussi à leur
faire traverser tant d’années successives, tandis qu’alentour les
chemins se sont effacés et que sont morts ceux qui les foulèrent et le
souvenir de ceux qui les foulèrent" :start 602 :end 1593) (sentence :text "Parfois ce morceau de paysage
amené ainsi jusqu’à aujourd’hui se détache si isolé de tout, qu’il
flotte incertain dans ma pensée comme une Délos fleurie, sans que je
puisse dire de quel pays, de quel temps--peut-être tout simplement de
quel rêve--il vient" :start 1594 :end 1850) (sentence :text "Mais c’est surtout comme à des gisements profonds
de mon sol mental, comme aux terrains résistants sur lesquels je
m’appuie encore, que je dois penser au côté de Méséglise et au côté de
Guermantes" :start 1851 :end 2048) (sentence :text "C’est parce que je croyais aux choses, aux êtres, tandis
que je les parcourais, que les choses, les êtres qu’ils m’ont fait
connaître, sont les seuls que je prenne encore au sérieux et qui me
donnent encore de la joie" :start 2049 :end 2267) (sentence :text "Soit que la foi qui crée soit tarie en moi,
soit que la réalité ne se forme que dans la mémoire, les fleurs qu’on
me montre aujourd’hui pour la première fois ne me semblent pas de
vraies fleurs" :start 2268 :end 2462) (sentence :text "Le côté de Méséglise avec ses lilas, ses aubépines, ses
bluets, ses coquelicots, ses pommiers, le côté de Guermantes avec sa
rivière à têtards, ses nymphéas et ses boutons d’or, ont constitué à
tout jamais pour moi la figure des pays où j’aimerais vivre, où
j’exige avant tout qu’on puisse aller à la pêche, se promener en
canot, voir des ruines de fortifications gothiques et trouver au
milieu des blés, ainsi qu’était Saint-André-des-Champs, une église
monumentale, rustique et dorée comme une meule; et les bluets, les
aubépines, les pommiers qu’il m’arrive quand je voyage de rencontrer
encore dans les champs, parce qu’ils sont situés à la même profondeur,
au niveau de mon passé, sont immédiatement en communication avec mon
cœur" :start 2463 :end 3199) (sentence :text "Et pourtant, parce qu’il y a quelque chose d’individuel dans les
lieux, quand me saisit le désir de revoir le côté de Guermantes, on ne
le satisferait pas en me menant au bord d’une rivière où il y aurait
d’aussi beaux, de plus beaux nymphéas que dans la Vivonne, pas plus
que le soir en rentrant,--à l’heure où s’éveillait en moi cette
angoisse qui plus tard émigre dans l’amour, et peut devenir à jamais
inséparable de lui--, je n’aurais souhaité que vînt me dire bonsoir une
mère plus belle et plus intelligente que la mienne" :start 3200 :end 3729) (sentence :text "Non; de même que
ce qu’il me fallait pour que je pusse m’endormir heureux, avec cette
paix sans trouble qu’aucune maîtresse n’a pu me donner depuis
puisqu’on doute d’elles encore au moment où on croit en elles, et
qu’on ne possède jamais leur cœur comme je recevais dans un baiser
celui de ma mère, tout entier, sans la réserve d’une arrière-pensée,
sans le reliquat d’une intention qui ne fut pas pour moi,--c’est que ce
fût elle, c’est qu’elle inclinât vers moi ce visage où il y avait
au-dessous de l’œil quelque chose qui était, paraît-il, un défaut, et
que j’aimais à l’égal du reste, de même ce que je veux revoir, c’est
le côté de Guermantes que j’ai connu, avec la ferme qui est peu
éloignée des deux suivantes serrées l’une contre l’autre, à l’entrée
de l’allée des chênes; ce sont ces prairies où, quand le soleil les
rend réfléchissantes comme une mare, se dessinent les feuilles des
pommiers, c’est ce paysage dont parfois, la nuit dans mes rêves,
l’individualité m’étreint avec une puissance presque fantastique et
que je ne peux plus retrouver au réveil" :start 3730 :end 4798) (sentence :text "Sans doute pour avoir à
jamais indissolublement uni en moi des impressions différentes rien
que parce qu’ils me les avaient fait éprouver en même temps, le côté
de Méséglise ou le côté de Guermantes m’ont exposé, pour l’avenir, à
bien des déceptions et même à bien des fautes" :start 4799 :end 5075) (sentence :text "Car souvent j’ai voulu
revoir une personne sans discerner que c’était simplement parce
qu’elle me rappelait une haie d’aubépines, et j’ai été induit à
croire, à faire croire à un regain d’affection, par un simple désir de
voyage" :start 5076 :end 5305) (sentence :text "Mais par là même aussi, et en restant présents en celles de
mes impressions d’aujourd’hui auxquelles ils peuvent se relier, ils
leur donnent des assises, de la profondeur, une dimension de plus
qu’aux autres" :start 5306 :end 5514) (sentence :text "Ils leur ajoutent aussi un charme, une signification
qui n’est que pour moi" :start 5515 :end 5591) (sentence :text "Quand par les soirs d’été le ciel harmonieux
gronde comme une bête fauve et que chacun boude l’orage, c’est au côté
de Méséglise que je dois de rester seul en extase à respirer, à
travers le bruit de la pluie qui tombe, l’odeur d’invisibles et
persistants lilas" :start 5592 :end 5854)
 ))