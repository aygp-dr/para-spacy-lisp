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
 :text "Mais quand j’arrivais aux Champs-Élysées,--et que d’abord j’allais
pouvoir confronter mon amour pour lui faire subir les rectifications
nécessaires à sa cause vivante, indépendante de moi--, dès que j’étais
en présence de cette Gilberte Swann sur la vue de laquelle j’avais
compté pour rafraîchir les images que ma mémoire fatiguée ne
retrouvait plus, de cette Gilberte Swann avec qui j’avais joué hier,
et que venait de me faire saluer et reconnaître un instinct aveugle
comme celui qui dans la marche nous met un pied devant l’autre avant
que nous ayons eu le temps de penser, aussitôt tout se passait comme
si elle et la fillette qui était l’objet de mes rêves avaient été deux
êtres différents. Par exemple si depuis la veille je portais dans ma
mémoire deux yeux de feu dans des joues pleines et brillantes, la
figure de Gilberte m’offrait maintenant avec insistance quelque chose
que précisément je ne m’étais pas rappelé, un certain effilement aigu
du nez qui, s’associant instantanément à d’autres traits, prenait
l’importance de ces caractères qui en histoire naturelle définissent
une espèce, et la transmuait en une fillette du genre de celles à
museau pointu. Tandis que je m’apprêtais à profiter de cet instant
désiré pour me livrer, sur l’image de Gilberte que j’avais préparée
avant de venir et que je ne retrouvais plus dans ma tête, à la mise au
point qui me permettrait dans les longues heures où j’étais seul
d’être sûr que c’était bien elle que je me rappelais, que c’était bien
mon amour pour elle que j’accroissais peu à peu comme un ouvrage qu’on
compose, elle me passait une balle; et comme le philosophe idéaliste
dont le corps tient compte du monde extérieur à la réalité duquel son
intelligence ne croit pas, le même moi qui m’avait fait la saluer
avant que je l’eusse identifiée, s’empressait de me faire saisir la
balle qu’elle me tendait (comme si elle était une camarade avec qui
j’étais venu jouer, et non une âme sœur que j’étais venu rejoindre),
me faisait lui tenir par bienséance jusqu’à l’heure où elle s’en
allait, mille propos aimables et insignifiants et m’empêchait ainsi,
ou de garder le silence pendant lequel j’aurais pu enfin remettre la
main sur l’image urgente et égarée, ou de lui dire les paroles qui
pouvaient faire faire à notre amour les progrès décisifs sur lesquels
j’étais chaque fois obligé de ne plus compter que pour l’après-midi
suivante. Il en faisait pourtant quelques-uns. Un jour que nous étions
allés avec Gilberte jusqu’à la baraque de notre marchande qui était
particulièrement aimable pour nous,--car c’était chez elle que M. Swann
faisait acheter son pain d’épices, et par hygiène, il en consommait
beaucoup, souffrant d’un eczéma ethnique et de la constipation des
Prophètes,--Gilberte me montrait en riant deux petits garçons qui
étaient comme le petit coloriste et le petit naturaliste des livres
d’enfants. Car l’un ne voulait pas d’un sucre d’orge rouge parce qu’il
préférait le violet et l’autre, les larmes aux yeux, refusait une
prune que voulait lui acheter sa bonne, parce que, finit-il par dire
d’une voix passionnée: «J’aime mieux l’autre prune, parce qu’elle a un
ver!» J’achetai deux billes d’un sou. Je regardais avec admiration,
lumineuses et captives dans une sébile isolée, les billes d’agate qui
me semblaient précieuses parce qu’elles étaient souriantes et blondes
comme des jeunes filles et parce qu’elles coûtaient cinquante centimes
pièce. Gilberte à qui on donnait beaucoup plus d’argent qu’à moi me
demanda laquelle je trouvais la plus belle. Elles avaient la
transparence et le fondu de la vie. Je n’aurais voulu lui en faire
sacrifier aucune. J’aurais aimé qu’elle pût les acheter, les délivrer
toutes. Pourtant je lui en désignai une qui avait la couleur de ses
yeux. Gilberte la prit, chercha son rayon doré, la caressa, paya sa
rançon, mais aussitôt me remit sa captive en me disant: «Tenez, elle
est à vous, je vous la donne, gardez-la comme souvenir.»"
 :tokens 653
 :processed-at "2025-03-16T02:18:14.852346"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Gilberte" :label "ORG" :start 228 :end 236) (entity :text "Swann" :label "ORG" :start 237 :end 242) (entity :text "Gilberte" :label "ORG" :start 361 :end 369) (entity :text "Swann" :label "ORG" :start 370 :end 375) (entity :text "Gilberte" :label "ORG" :start 826 :end 834) (entity :text "Tandis" :label "ORG" :start 1172 :end 1178) (entity :text "Gilberte" :label "ORG" :start 1262 :end 1270) (entity :text "Gilberte" :label "ORG" :start 2470 :end 2478) (entity :text "Swann" :label "ORG" :start 2593 :end 2598) (entity :text "Prophètes,--Gilberte" :label "ORG" :start 2734 :end 2754) (entity :text "Gilberte" :label "ORG" :start 3431 :end 3439) (entity :text "Elles" :label "ORG" :start 3536 :end 3541) (entity :text "Pourtant" :label "ORG" :start 3698 :end 3706) (entity :text "Gilberte" :label "ORG" :start 3764 :end 3772) (entity :text "«Tenez," :label "ORG" :start 3882 :end 3889)
 )
 :sentences (list
  (sentence :text "Mais quand j’arrivais aux Champs-Élysées,--et que d’abord j’allais
pouvoir confronter mon amour pour lui faire subir les rectifications
nécessaires à sa cause vivante, indépendante de moi--, dès que j’étais
en présence de cette Gilberte Swann sur la vue de laquelle j’avais
compté pour rafraîchir les images que ma mémoire fatiguée ne
retrouvait plus, de cette Gilberte Swann avec qui j’avais joué hier,
et que venait de me faire saluer et reconnaître un instinct aveugle
comme celui qui dans la marche nous met un pied devant l’autre avant
que nous ayons eu le temps de penser, aussitôt tout se passait comme
si elle et la fillette qui était l’objet de mes rêves avaient été deux
êtres différents" :start 0 :end 697) (sentence :text "Par exemple si depuis la veille je portais dans ma
mémoire deux yeux de feu dans des joues pleines et brillantes, la
figure de Gilberte m’offrait maintenant avec insistance quelque chose
que précisément je ne m’étais pas rappelé, un certain effilement aigu
du nez qui, s’associant instantanément à d’autres traits, prenait
l’importance de ces caractères qui en histoire naturelle définissent
une espèce, et la transmuait en une fillette du genre de celles à
museau pointu" :start 698 :end 1170) (sentence :text "Tandis que je m’apprêtais à profiter de cet instant
désiré pour me livrer, sur l’image de Gilberte que j’avais préparée
avant de venir et que je ne retrouvais plus dans ma tête, à la mise au
point qui me permettrait dans les longues heures où j’étais seul
d’être sûr que c’était bien elle que je me rappelais, que c’était bien
mon amour pour elle que j’accroissais peu à peu comme un ouvrage qu’on
compose, elle me passait une balle; et comme le philosophe idéaliste
dont le corps tient compte du monde extérieur à la réalité duquel son
intelligence ne croit pas, le même moi qui m’avait fait la saluer
avant que je l’eusse identifiée, s’empressait de me faire saisir la
balle qu’elle me tendait (comme si elle était une camarade avec qui
j’étais venu jouer, et non une âme sœur que j’étais venu rejoindre),
me faisait lui tenir par bienséance jusqu’à l’heure où elle s’en
allait, mille propos aimables et insignifiants et m’empêchait ainsi,
ou de garder le silence pendant lequel j’aurais pu enfin remettre la
main sur l’image urgente et égarée, ou de lui dire les paroles qui
pouvaient faire faire à notre amour les progrès décisifs sur lesquels
j’étais chaque fois obligé de ne plus compter que pour l’après-midi
suivante" :start 1171 :end 2396) (sentence :text "Il en faisait pourtant quelques-uns" :start 2397 :end 2433) (sentence :text "Un jour que nous étions
allés avec Gilberte jusqu’à la baraque de notre marchande qui était
particulièrement aimable pour nous,--car c’était chez elle que M" :start 2434 :end 2591) (sentence :text "Swann
faisait acheter son pain d’épices, et par hygiène, il en consommait
beaucoup, souffrant d’un eczéma ethnique et de la constipation des
Prophètes,--Gilberte me montrait en riant deux petits garçons qui
étaient comme le petit coloriste et le petit naturaliste des livres
d’enfants" :start 2592 :end 2877) (sentence :text "Car l’un ne voulait pas d’un sucre d’orge rouge parce qu’il
préférait le violet et l’autre, les larmes aux yeux, refusait une
prune que voulait lui acheter sa bonne, parce que, finit-il par dire
d’une voix passionnée: «J’aime mieux l’autre prune, parce qu’elle a un
ver!» J’achetai deux billes d’un sou" :start 2878 :end 3181) (sentence :text "Je regardais avec admiration,
lumineuses et captives dans une sébile isolée, les billes d’agate qui
me semblaient précieuses parce qu’elles étaient souriantes et blondes
comme des jeunes filles et parce qu’elles coûtaient cinquante centimes
pièce" :start 3182 :end 3429) (sentence :text "Gilberte à qui on donnait beaucoup plus d’argent qu’à moi me
demanda laquelle je trouvais la plus belle" :start 3430 :end 3534) (sentence :text "Elles avaient la
transparence et le fondu de la vie" :start 3535 :end 3587) (sentence :text "Je n’aurais voulu lui en faire
sacrifier aucune" :start 3588 :end 3636) (sentence :text "J’aurais aimé qu’elle pût les acheter, les délivrer
toutes" :start 3637 :end 3696) (sentence :text "Pourtant je lui en désignai une qui avait la couleur de ses
yeux" :start 3697 :end 3762) (sentence :text "Gilberte la prit, chercha son rayon doré, la caressa, paya sa
rançon, mais aussitôt me remit sa captive en me disant: «Tenez, elle
est à vous, je vous la donne, gardez-la comme souvenir" :start 3763 :end 3949) (sentence :text "»" :start 3149 :end 3150)
 ))