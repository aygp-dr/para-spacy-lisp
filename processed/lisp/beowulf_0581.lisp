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
 :text "Et comme les qualités qu’il croyait intrinsèques aux Verdurin
n’étaient que le reflet sur eux de plaisirs qu’avait goûtés chez eux
son amour pour Odette, ces qualités devenaient plus sérieuses, plus
profondes, plus vitales, quand ces plaisirs l’étaient aussi. Comme Mme
Verdurin donnait parfois à Swann ce qui seul pouvait constituer pour
lui le bonheur; comme, tel soir où il se sentait anxieux parce
qu’Odette avait causé avec un invité plus qu’avec un autre, et où,
irrité contre elle, il ne voulait pas prendre l’initiative de lui
demander si elle reviendrait avec lui, Mme Verdurin lui apportait la
paix et la joie en disant spontanément: «Odette, vous allez ramener M.
Swann, n’est-ce pas»? comme cet été qui venait et où il s’était
d’abord demandé avec inquiétude si Odette ne s’absenterait pas sans
lui, s’il pourrait continuer à la voir tous les jours, Mme Verdurin
allait les inviter à le passer tous deux chez elle à la
campagne,--Swann laissant à son insu la reconnaissance et l’intérêt
s’infiltrer dans son intelligence et influer sur ses idées, allait
jusqu’à proclamer que Mme Verdurin était une grande âme. De quelques
gens exquis ou éminents que tel de ses anciens camarades de l’école du
Louvre lui parlât: «Je préfère cent fois les Verdurin, lui
répondait-il.» Et, avec une solennité qui était nouvelle chez lui: «Ce
sont des êtres magnanimes, et la magnanimité est, au fond, la seule
chose qui importe et qui distingue ici-bas. Vois-tu, il n’y a que deux
classes d’êtres: les magnanimes et les autres; et je suis arrivé à un
âge où il faut prendre parti, décider une fois pour toutes qui on veut
aimer et qui on veut dédaigner, se tenir à ceux qu’on aime et, pour
réparer le temps qu’on a gâché avec les autres, ne plus les quitter
jusqu’à sa mort. Eh bien! ajoutait-il avec cette légère émotion qu’on
éprouve quand même sans bien s’en rendre compte, on dit une chose non
parce qu’elle est vraie, mais parce qu’on a plaisir à la dire et qu’on
l’écoute dans sa propre voix comme si elle venait d’ailleurs que de
nous-mêmes, le sort en est jeté, j’ai choisi d’aimer les seuls cœurs
magnanimes et de ne plus vivre que dans la magnanimité. Tu me demandes
si Mme Verdurin est véritablement intelligente. Je t’assure qu’elle
m’a donné les preuves d’une noblesse de cœur, d’une hauteur d’âme où,
que veux-tu, on n’atteint pas sans une hauteur égale de pensée. Certes
elle a la profonde intelligence des arts. Mais ce n’est peut-être pas
là qu’elle est le plus admirable; et telle petite action
ingénieusement, exquisement bonne, qu’elle a accomplie pour moi, telle
géniale attention, tel geste familièrement sublime, révèlent une
compréhension plus profonde de l’existence que tous les traités de
philosophie.»"
 :tokens 457
 :processed-at "2025-03-16T02:18:14.410049"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 53 :end 61) (entity :text "Odette," :label "ORG" :start 146 :end 153) (entity :text "Comme" :label "ORG" :start 260 :end 265) (entity :text "Verdurin" :label "ORG" :start 270 :end 278) (entity :text "Swann" :label "ORG" :start 297 :end 302) (entity :text "Verdurin" :label "ORG" :start 578 :end 586) (entity :text "«Odette," :label "ORG" :start 644 :end 652) (entity :text "Swann," :label "ORG" :start 675 :end 681) (entity :text "Odette" :label "ORG" :start 774 :end 780) (entity :text "Verdurin" :label "ORG" :start 866 :end 874) (entity :text "Verdurin" :label "ORG" :start 1092 :end 1100) (entity :text "Louvre" :label "ORG" :start 1206 :end 1212) (entity :text "Verdurin," :label "ORG" :start 1251 :end 1260) (entity :text "Verdurin" :label "ORG" :start 2178 :end 2186) (entity :text "Certes" :label "ORG" :start 2373 :end 2379) (entity :text "Mais" :label "ORG" :start 2422 :end 2426)
 )
 :sentences (list
  (sentence :text "Et comme les qualités qu’il croyait intrinsèques aux Verdurin
n’étaient que le reflet sur eux de plaisirs qu’avait goûtés chez eux
son amour pour Odette, ces qualités devenaient plus sérieuses, plus
profondes, plus vitales, quand ces plaisirs l’étaient aussi" :start 0 :end 258) (sentence :text "Comme Mme
Verdurin donnait parfois à Swann ce qui seul pouvait constituer pour
lui le bonheur; comme, tel soir où il se sentait anxieux parce
qu’Odette avait causé avec un invité plus qu’avec un autre, et où,
irrité contre elle, il ne voulait pas prendre l’initiative de lui
demander si elle reviendrait avec lui, Mme Verdurin lui apportait la
paix et la joie en disant spontanément: «Odette, vous allez ramener M" :start 259 :end 673) (sentence :text "Swann, n’est-ce pas»? comme cet été qui venait et où il s’était
d’abord demandé avec inquiétude si Odette ne s’absenterait pas sans
lui, s’il pourrait continuer à la voir tous les jours, Mme Verdurin
allait les inviter à le passer tous deux chez elle à la
campagne,--Swann laissant à son insu la reconnaissance et l’intérêt
s’infiltrer dans son intelligence et influer sur ses idées, allait
jusqu’à proclamer que Mme Verdurin était une grande âme" :start 674 :end 1121) (sentence :text "De quelques
gens exquis ou éminents que tel de ses anciens camarades de l’école du
Louvre lui parlât: «Je préfère cent fois les Verdurin, lui
répondait-il" :start 1122 :end 1277) (sentence :text "» Et, avec une solennité qui était nouvelle chez lui: «Ce
sont des êtres magnanimes, et la magnanimité est, au fond, la seule
chose qui importe et qui distingue ici-bas" :start 1278 :end 1446) (sentence :text "Vois-tu, il n’y a que deux
classes d’êtres: les magnanimes et les autres; et je suis arrivé à un
âge où il faut prendre parti, décider une fois pour toutes qui on veut
aimer et qui on veut dédaigner, se tenir à ceux qu’on aime et, pour
réparer le temps qu’on a gâché avec les autres, ne plus les quitter
jusqu’à sa mort" :start 1447 :end 1767) (sentence :text "Eh bien! ajoutait-il avec cette légère émotion qu’on
éprouve quand même sans bien s’en rendre compte, on dit une chose non
parce qu’elle est vraie, mais parce qu’on a plaisir à la dire et qu’on
l’écoute dans sa propre voix comme si elle venait d’ailleurs que de
nous-mêmes, le sort en est jeté, j’ai choisi d’aimer les seuls cœurs
magnanimes et de ne plus vivre que dans la magnanimité" :start 1768 :end 2154) (sentence :text "Tu me demandes
si Mme Verdurin est véritablement intelligente" :start 2155 :end 2217) (sentence :text "Je t’assure qu’elle
m’a donné les preuves d’une noblesse de cœur, d’une hauteur d’âme où,
que veux-tu, on n’atteint pas sans une hauteur égale de pensée" :start 2218 :end 2371) (sentence :text "Certes
elle a la profonde intelligence des arts" :start 2372 :end 2420) (sentence :text "Mais ce n’est peut-être pas
là qu’elle est le plus admirable; et telle petite action
ingénieusement, exquisement bonne, qu’elle a accomplie pour moi, telle
géniale attention, tel geste familièrement sublime, révèlent une
compréhension plus profonde de l’existence que tous les traités de
philosophie" :start 2421 :end 2721) (sentence :text "»" :start 694 :end 695)
 ))