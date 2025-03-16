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
 :text "Et en effet elle trouvait Swann, intellectuellement, inférieur à ce
qu’elle aurait cru. «Tu gardes toujours ton sang-froid, je ne peux te
définir.» Elle s’émerveillait davantage de son indifférence à
l’argent, de sa gentillesse pour chacun, de sa délicatesse. Et il
arrive en effet souvent pour de plus grands que n’était Swann, pour un
savant, pour un artiste, quand il n’est pas méconnu par ceux qui
l’entourent, que celui de leurs sentiments qui prouve que la
supériorité de son intelligence s’est imposée à eux, ce n’est pas leur
admiration pour ses idées, car elles leur échappent, mais leur respect
pour sa bonté. C’est aussi du respect qu’inspirait à Odette la
situation qu’avait Swann dans le monde, mais elle ne désirait pas
qu’il cherchât à l’y faire recevoir. Peut-être sentait-elle qu’il ne
pourrait pas y réussir, et même craignait-elle, que rien qu’en parlant
d’elle, il ne provoquât des révélations qu’elle redoutait. Toujours
est-il qu’elle lui avait fait promettre de ne jamais prononcer son
nom. La raison pour laquelle elle ne voulait pas aller dans le monde,
lui avait-elle dit, était une brouille qu’elle avait eue autrefois
avec une amie qui, pour se venger, avait ensuite dit du mal d’elle.
Swann objectait: «Mais tout le monde n’a pas connu ton amie.»--«Mais
si, ça fait la tache d’huile, le monde est si méchant.» D’une part
Swann ne comprit pas cette histoire, mais d’autre part il savait que
ces propositions: «Le monde est si méchant», «un propos calomnieux
fait la tache d’huile», sont généralement tenues pour vraies; il
devait y avoir des cas auxquels elles s’appliquaient. Celui d’Odette
était-il l’un de ceux-là? Il se le demandait, mais pas longtemps, car
il était sujet, lui aussi, à cette lourdeur d’esprit qui
s’appesantissait sur son père, quand il se posait un problème
difficile. D’ailleurs, ce monde qui faisait si peur à Odette, ne lui
inspirait peut-être pas de grands désirs, car pour qu’elle se le
représentât bien nettement, il était trop éloigné de celui qu’elle
connaissait. Pourtant, tout en étant restée à certains égards vraiment
simple (elle avait par exemple gardé pour amie une petite couturière
retirée dont elle grimpait presque chaque jour l’escalier raide,
obscur et fétide), elle avait soif de chic, mais ne s’en faisait pas
la même idée que les gens du monde. Pour eux, le chic est une
émanation de quelques personnes peu nombreuses qui le projettent
jusqu’à un degré assez éloigné"
 :tokens 400
 :processed-at "2025-03-16T02:18:14.393350"
 :entities (list
  (entity :text "Swann," :label "ORG" :start 26 :end 32) (entity :text "Elle" :label "ORG" :start 148 :end 152) (entity :text "Swann," :label "ORG" :start 322 :end 328) (entity :text "Odette" :label "ORG" :start 658 :end 664) (entity :text "Swann" :label "ORG" :start 687 :end 692) (entity :text "Toujours" :label "ORG" :start 933 :end 941) (entity :text "Swann" :label "ORG" :start 1214 :end 1219) (entity :text "«Mais" :label "ORG" :start 1231 :end 1236) (entity :text "Swann" :label "ORG" :start 1350 :end 1355) (entity :text "Celui" :label "ORG" :start 1605 :end 1610) (entity :text "Odette," :label "ORG" :start 1863 :end 1870) (entity :text "Pourtant," :label "ORG" :start 2023 :end 2032) (entity :text "Pour" :label "ORG" :start 2320 :end 2324)
 )
 :sentences (list
  (sentence :text "Et en effet elle trouvait Swann, intellectuellement, inférieur à ce
qu’elle aurait cru" :start 0 :end 86) (sentence :text "«Tu gardes toujours ton sang-froid, je ne peux te
définir" :start 87 :end 145) (sentence :text "» Elle s’émerveillait davantage de son indifférence à
l’argent, de sa gentillesse pour chacun, de sa délicatesse" :start 146 :end 258) (sentence :text "Et il
arrive en effet souvent pour de plus grands que n’était Swann, pour un
savant, pour un artiste, quand il n’est pas méconnu par ceux qui
l’entourent, que celui de leurs sentiments qui prouve que la
supériorité de son intelligence s’est imposée à eux, ce n’est pas leur
admiration pour ses idées, car elles leur échappent, mais leur respect
pour sa bonté" :start 259 :end 618) (sentence :text "C’est aussi du respect qu’inspirait à Odette la
situation qu’avait Swann dans le monde, mais elle ne désirait pas
qu’il cherchât à l’y faire recevoir" :start 619 :end 769) (sentence :text "Peut-être sentait-elle qu’il ne
pourrait pas y réussir, et même craignait-elle, que rien qu’en parlant
d’elle, il ne provoquât des révélations qu’elle redoutait" :start 770 :end 931) (sentence :text "Toujours
est-il qu’elle lui avait fait promettre de ne jamais prononcer son
nom" :start 932 :end 1012) (sentence :text "La raison pour laquelle elle ne voulait pas aller dans le monde,
lui avait-elle dit, était une brouille qu’elle avait eue autrefois
avec une amie qui, pour se venger, avait ensuite dit du mal d’elle" :start 1013 :end 1212) (sentence :text "Swann objectait: «Mais tout le monde n’a pas connu ton amie" :start 1213 :end 1273) (sentence :text "»--«Mais
si, ça fait la tache d’huile, le monde est si méchant" :start 1274 :end 1336) (sentence :text "» D’une part
Swann ne comprit pas cette histoire, mais d’autre part il savait que
ces propositions: «Le monde est si méchant», «un propos calomnieux
fait la tache d’huile», sont généralement tenues pour vraies; il
devait y avoir des cas auxquels elles s’appliquaient" :start 1337 :end 1603) (sentence :text "Celui d’Odette
était-il l’un de ceux-là? Il se le demandait, mais pas longtemps, car
il était sujet, lui aussi, à cette lourdeur d’esprit qui
s’appesantissait sur son père, quand il se posait un problème
difficile" :start 1604 :end 1818) (sentence :text "D’ailleurs, ce monde qui faisait si peur à Odette, ne lui
inspirait peut-être pas de grands désirs, car pour qu’elle se le
représentât bien nettement, il était trop éloigné de celui qu’elle
connaissait" :start 1819 :end 2021) (sentence :text "Pourtant, tout en étant restée à certains égards vraiment
simple (elle avait par exemple gardé pour amie une petite couturière
retirée dont elle grimpait presque chaque jour l’escalier raide,
obscur et fétide), elle avait soif de chic, mais ne s’en faisait pas
la même idée que les gens du monde" :start 2022 :end 2318) (sentence :text "Pour eux, le chic est une
émanation de quelques personnes peu nombreuses qui le projettent
jusqu’à un degré assez éloigné" :start 2319 :end 2441)
 ))