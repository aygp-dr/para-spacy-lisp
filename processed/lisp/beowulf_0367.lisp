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
 :text "Tout d’un coup pendant la messe de mariage, un mouvement que fit le
suisse en se déplaçant me permit de voir assise dans une chapelle une
dame blonde avec un grand nez, des yeux bleus et perçants, une cravate
bouffante en soie mauve, lisse, neuve et brillante, et un petit bouton
au coin du nez. Et parce que dans la surface de son visage rouge,
comme si elle eût eu très chaud, je distinguais, diluées et à peine
perceptibles, des parcelles d’analogie avec le portrait qu’on m’avait
montré, parce que surtout les traits particuliers que je relevais en
elle, si j’essayais de les énoncer, se formulaient précisément dans
les mêmes termes: un grand nez, des yeux bleus, dont s’était servi le
docteur Percepied quand il avait décrit devant moi la duchesse de
Guermantes, je me dis: cette dame ressemble à Mme de Guermantes; or la
chapelle où elle suivait la messe était celle de Gilbert le Mauvais,
sous les plates tombes de laquelle, dorées et distendues comme des
alvéoles de miel, reposaient les anciens comtes de Brabant, et que je
me rappelais être à ce qu’on m’avait dit réservée à la famille de
Guermantes quand quelqu’un de ses membres venait pour une cérémonie à
Combray; il ne pouvait vraisemblablement y avoir qu’une seule femme
ressemblant au portrait de Mme de Guermantes, qui fût ce jour-là, jour
où elle devait justement venir, dans cette chapelle: c’était elle! Ma
déception était grande. Elle provenait de ce que je n’avais jamais
pris garde quand je pensais à Mme de Guermantes, que je me la
représentais avec les couleurs d’une tapisserie ou d’un vitrail, dans
un autre siècle, d’une autre matière que le reste des personnes
vivantes. Jamais je ne m’étais avisé qu’elle pouvait avoir une figure
rouge, une cravate mauve comme Mme Sazerat, et l’ovale de ses joues me
fit tellement souvenir de personnes que j’avais vues à la maison que
le soupçon m’effleura, pour se dissiper d’ailleurs aussitôt après, que
cette dame en son principe générateur, en toutes ses molécules,
n’était peut-être pas substantiellement la duchesse de Guermantes,
mais que son corps, ignorant du nom qu’on lui appliquait, appartenait
à un certain type féminin, qui comprenait aussi des femmes de médecins
et de commerçants. «C’est cela, ce n’est que cela, Mme de Guermantes!»
disait la mine attentive et étonnée avec laquelle je contemplais cette
image qui naturellement n’avait aucun rapport avec celles qui sous le
même nom de Mme de Guermantes étaient apparues tant de fois dans mes
songes, puisque, elle, elle n’avait pas été comme les autres
arbitrairement formée par moi, mais qu’elle m’avait sauté aux yeux
pour la première fois il y a un moment seulement, dans l’église; qui
n’était pas de la même nature, n’était pas colorable à volonté comme
elles qui se laissaient imbiber de la teinte orangée d’une syllabe,
mais était si réelle que tout, jusqu’à ce petit bouton qui
s’enflammait au coin du nez, certifiait son assujettissement aux lois
de la vie, comme dans une apothéose de théâtre, un plissement de la
robe de la fée, un tremblement de son petit doigt, dénoncent la
présence matérielle d’une actrice vivante, là où nous étions
incertains si nous n’avions pas devant les yeux une simple projection
lumineuse."
 :tokens 539
 :processed-at "2025-03-16T02:18:14.183496"
 :entities (list
  (entity :text "Tout" :label "ORG" :start 0 :end 4) (entity :text "Percepied" :label "PERSON" :start 699 :end 708) (entity :text "Guermantes," :label "ORG" :start 757 :end 768) (entity :text "Guermantes;" :label "ORG" :start 810 :end 821) (entity :text "Gilbert" :label "ORG" :start 877 :end 884) (entity :text "Mauvais," :label "ORG" :start 888 :end 896) (entity :text "Brabant," :label "ORG" :start 1015 :end 1023) (entity :text "Guermantes" :label "ORG" :start 1100 :end 1110) (entity :text "Combray;" :label "ORG" :start 1170 :end 1178) (entity :text "Guermantes," :label "ORG" :start 1272 :end 1283) (entity :text "Elle" :label "ORG" :start 1403 :end 1407) (entity :text "Guermantes," :label "ORG" :start 1483 :end 1494) (entity :text "Jamais" :label "ORG" :start 1652 :end 1658) (entity :text "Sazerat," :label "ORG" :start 1747 :end 1755) (entity :text "Guermantes," :label "ORG" :start 2042 :end 2053) (entity :text "Guermantes!»" :label "ORG" :start 2253 :end 2265) (entity :text "Guermantes" :label "ORG" :start 2426 :end 2436)
 )
 :sentences (list
  (sentence :text "Tout d’un coup pendant la messe de mariage, un mouvement que fit le
suisse en se déplaçant me permit de voir assise dans une chapelle une
dame blonde avec un grand nez, des yeux bleus et perçants, une cravate
bouffante en soie mauve, lisse, neuve et brillante, et un petit bouton
au coin du nez" :start 0 :end 294) (sentence :text "Et parce que dans la surface de son visage rouge,
comme si elle eût eu très chaud, je distinguais, diluées et à peine
perceptibles, des parcelles d’analogie avec le portrait qu’on m’avait
montré, parce que surtout les traits particuliers que je relevais en
elle, si j’essayais de les énoncer, se formulaient précisément dans
les mêmes termes: un grand nez, des yeux bleus, dont s’était servi le
docteur Percepied quand il avait décrit devant moi la duchesse de
Guermantes, je me dis: cette dame ressemble à Mme de Guermantes; or la
chapelle où elle suivait la messe était celle de Gilbert le Mauvais,
sous les plates tombes de laquelle, dorées et distendues comme des
alvéoles de miel, reposaient les anciens comtes de Brabant, et que je
me rappelais être à ce qu’on m’avait dit réservée à la famille de
Guermantes quand quelqu’un de ses membres venait pour une cérémonie à
Combray; il ne pouvait vraisemblablement y avoir qu’une seule femme
ressemblant au portrait de Mme de Guermantes, qui fût ce jour-là, jour
où elle devait justement venir, dans cette chapelle: c’était elle! Ma
déception était grande" :start 295 :end 1401) (sentence :text "Elle provenait de ce que je n’avais jamais
pris garde quand je pensais à Mme de Guermantes, que je me la
représentais avec les couleurs d’une tapisserie ou d’un vitrail, dans
un autre siècle, d’une autre matière que le reste des personnes
vivantes" :start 1402 :end 1650) (sentence :text "Jamais je ne m’étais avisé qu’elle pouvait avoir une figure
rouge, une cravate mauve comme Mme Sazerat, et l’ovale de ses joues me
fit tellement souvenir de personnes que j’avais vues à la maison que
le soupçon m’effleura, pour se dissiper d’ailleurs aussitôt après, que
cette dame en son principe générateur, en toutes ses molécules,
n’était peut-être pas substantiellement la duchesse de Guermantes,
mais que son corps, ignorant du nom qu’on lui appliquait, appartenait
à un certain type féminin, qui comprenait aussi des femmes de médecins
et de commerçants" :start 1651 :end 2212) (sentence :text "«C’est cela, ce n’est que cela, Mme de Guermantes!»
disait la mine attentive et étonnée avec laquelle je contemplais cette
image qui naturellement n’avait aucun rapport avec celles qui sous le
même nom de Mme de Guermantes étaient apparues tant de fois dans mes
songes, puisque, elle, elle n’avait pas été comme les autres
arbitrairement formée par moi, mais qu’elle m’avait sauté aux yeux
pour la première fois il y a un moment seulement, dans l’église; qui
n’était pas de la même nature, n’était pas colorable à volonté comme
elles qui se laissaient imbiber de la teinte orangée d’une syllabe,
mais était si réelle que tout, jusqu’à ce petit bouton qui
s’enflammait au coin du nez, certifiait son assujettissement aux lois
de la vie, comme dans une apothéose de théâtre, un plissement de la
robe de la fée, un tremblement de son petit doigt, dénoncent la
présence matérielle d’une actrice vivante, là où nous étions
incertains si nous n’avions pas devant les yeux une simple projection
lumineuse" :start 2213 :end 3211)
 ))