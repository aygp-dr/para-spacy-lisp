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
 :text "Comme je n’avais aucune notion sur la hiérarchie sociale, depuis
longtemps l’impossibilité que mon père trouvait à ce que nous
fréquentions Mme et Mlle Swann avait eu plutôt pour effet, en me
faisant imaginer entre elles et nous de grandes distances, de leur
donner à mes yeux du prestige. Je regrettais que ma mère ne se teignît
pas les cheveux et ne se mît pas de rouge aux lèvres comme j’avais
entendu dire par notre voisine Mme Sazerat que Mme Swann le faisait
pour plaire, non à son mari, mais à M. de Charlus, et je pensais que
nous devions être pour elle un objet de mépris, ce qui me peinait
surtout à cause de Mlle Swann qu’on m’avait dit être une si jolie
petite fille et à laquelle je rêvais souvent en lui prêtant chaque
fois un même visage arbitraire et charmant. Mais quand j’eus appris ce
jour-là que Mlle Swann était un être d’une condition si rare, baignant
comme dans son élément naturel au milieu de tant de privilèges, que
quand elle demandait à ses parents s’il y avait quelqu’un à dîner, on
lui répondait par ces syllabes remplies de lumière, par le nom de ce
convive d’or qui n’était pour elle qu’un vieil ami de sa famille:
Bergotte; que, pour elle, la causerie intime à table, ce qui
correspondait à ce qu’était pour moi la conversation de ma
grand’tante, c’étaient des paroles de Bergotte sur tous ces sujets
qu’il n’avait pu aborder dans ses livres, et sur lesquels j’aurais
voulu l’écouter rendre ses oracles, et qu’enfin, quand elle allait
visiter des villes, il cheminait à côté d’elle, inconnu et glorieux,
comme les Dieux qui descendaient au milieu des mortels, alors je
sentis en même temps que le prix d’un être comme Mlle Swann, combien
je lui paraîtrais grossier et ignorant, et j’éprouvai si vivement la
douceur et l’impossibilité qu’il y aurait pour moi à être son ami, que
je fus rempli à la fois de désir et de désespoir. Le plus souvent
maintenant quand je pensais à elle, je la voyais devant le porche
d’une cathédrale, m’expliquant la signification des statues, et, avec
un sourire qui disait du bien de moi, me présentant comme son ami, à
Bergotte. Et toujours le charme de toutes les idées que faisaient
naître en moi les cathédrales, le charme des coteaux de
l’Ile-de-France et des plaines de la Normandie faisait refluer ses
reflets sur l’image que je me formais de Mlle Swann: c’était être tout
prêt à l’aimer. Que nous croyions qu’un être participe à une vie
inconnue où son amour nous ferait pénétrer, c’est, de tout ce qu’exige
l’amour pour naître, ce à quoi il tient le plus, et qui lui fait faire
bon marché du reste. Même les femmes qui prétendent ne juger un homme
que sur son physique, voient en ce physique l’émanation d’une vie
spéciale. C’est pourquoi elles aiment les militaires, les pompiers;
l’uniforme les rend moins difficiles pour le visage; elles croient
baiser sous la cuirasse un cœur différent, aventureux et doux; et un
jeune souverain, un prince héritier, pour faire les plus flatteuses
conquêtes, dans les pays étrangers qu’il visite, n’a pas besoin du
profil régulier qui serait peut-être indispensable à un coulissier."
 :tokens 538
 :processed-at "2025-03-16T02:18:14.000771"
 :entities (list
  (entity :text "Comme" :label "ORG" :start 0 :end 5) (entity :text "Mlle" :label "ORG" :start 147 :end 151) (entity :text "Swann" :label "ORG" :start 152 :end 157) (entity :text "Sazerat" :label "ORG" :start 432 :end 439) (entity :text "Swann" :label "ORG" :start 448 :end 453) (entity :text "Charlus," :label "ORG" :start 507 :end 515) (entity :text "Mlle" :label "ORG" :start 619 :end 623) (entity :text "Swann" :label "ORG" :start 624 :end 629) (entity :text "Mais" :label "ORG" :start 777 :end 781) (entity :text "Mlle" :label "ORG" :start 816 :end 820) (entity :text "Swann" :label "ORG" :start 821 :end 826) (entity :text "Bergotte;" :label "ORG" :start 1148 :end 1157) (entity :text "Bergotte" :label "ORG" :start 1306 :end 1314) (entity :text "Dieux" :label "ORG" :start 1548 :end 1553) (entity :text "Mlle" :label "ORG" :start 1652 :end 1656) (entity :text "Swann," :label "ORG" :start 1657 :end 1663) (entity :text "Bergotte." :label "ORG" :start 2083 :end 2092) (entity :text "Normandie" :label "ORG" :start 2242 :end 2251) (entity :text "Mlle" :label "ORG" :start 2313 :end 2317) (entity :text "Swann:" :label "ORG" :start 2318 :end 2324) (entity :text "Même" :label "ORG" :start 2571 :end 2575)
 )
 :sentences (list
  (sentence :text "Comme je n’avais aucune notion sur la hiérarchie sociale, depuis
longtemps l’impossibilité que mon père trouvait à ce que nous
fréquentions Mme et Mlle Swann avait eu plutôt pour effet, en me
faisant imaginer entre elles et nous de grandes distances, de leur
donner à mes yeux du prestige" :start 0 :end 288) (sentence :text "Je regrettais que ma mère ne se teignît
pas les cheveux et ne se mît pas de rouge aux lèvres comme j’avais
entendu dire par notre voisine Mme Sazerat que Mme Swann le faisait
pour plaire, non à son mari, mais à M" :start 289 :end 502) (sentence :text "de Charlus, et je pensais que
nous devions être pour elle un objet de mépris, ce qui me peinait
surtout à cause de Mlle Swann qu’on m’avait dit être une si jolie
petite fille et à laquelle je rêvais souvent en lui prêtant chaque
fois un même visage arbitraire et charmant" :start 503 :end 775) (sentence :text "Mais quand j’eus appris ce
jour-là que Mlle Swann était un être d’une condition si rare, baignant
comme dans son élément naturel au milieu de tant de privilèges, que
quand elle demandait à ses parents s’il y avait quelqu’un à dîner, on
lui répondait par ces syllabes remplies de lumière, par le nom de ce
convive d’or qui n’était pour elle qu’un vieil ami de sa famille:
Bergotte; que, pour elle, la causerie intime à table, ce qui
correspondait à ce qu’était pour moi la conversation de ma
grand’tante, c’étaient des paroles de Bergotte sur tous ces sujets
qu’il n’avait pu aborder dans ses livres, et sur lesquels j’aurais
voulu l’écouter rendre ses oracles, et qu’enfin, quand elle allait
visiter des villes, il cheminait à côté d’elle, inconnu et glorieux,
comme les Dieux qui descendaient au milieu des mortels, alors je
sentis en même temps que le prix d’un être comme Mlle Swann, combien
je lui paraîtrais grossier et ignorant, et j’éprouvai si vivement la
douceur et l’impossibilité qu’il y aurait pour moi à être son ami, que
je fus rempli à la fois de désir et de désespoir" :start 776 :end 1860) (sentence :text "Le plus souvent
maintenant quand je pensais à elle, je la voyais devant le porche
d’une cathédrale, m’expliquant la signification des statues, et, avec
un sourire qui disait du bien de moi, me présentant comme son ami, à
Bergotte" :start 1861 :end 2091) (sentence :text "Et toujours le charme de toutes les idées que faisaient
naître en moi les cathédrales, le charme des coteaux de
l’Ile-de-France et des plaines de la Normandie faisait refluer ses
reflets sur l’image que je me formais de Mlle Swann: c’était être tout
prêt à l’aimer" :start 2092 :end 2357) (sentence :text "Que nous croyions qu’un être participe à une vie
inconnue où son amour nous ferait pénétrer, c’est, de tout ce qu’exige
l’amour pour naître, ce à quoi il tient le plus, et qui lui fait faire
bon marché du reste" :start 2358 :end 2569) (sentence :text "Même les femmes qui prétendent ne juger un homme
que sur son physique, voient en ce physique l’émanation d’une vie
spéciale" :start 2570 :end 2694) (sentence :text "C’est pourquoi elles aiment les militaires, les pompiers;
l’uniforme les rend moins difficiles pour le visage; elles croient
baiser sous la cuirasse un cœur différent, aventureux et doux; et un
jeune souverain, un prince héritier, pour faire les plus flatteuses
conquêtes, dans les pays étrangers qu’il visite, n’a pas besoin du
profil régulier qui serait peut-être indispensable à un coulissier" :start 2695 :end 3091)
 ))