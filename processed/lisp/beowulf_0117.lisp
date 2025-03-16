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
 :text "Eulalie était une fille boiteuse, active et sourde qui s’était
«retirée» après la mort de Mme de la Bretonnerie où elle avait été en
place depuis son enfance et qui avait pris à côté de l’église une
chambre, d’où elle descendait tout le temps soit aux offices, soit, en
dehors des offices, dire une petite prière ou donner un coup de main à
Théodore; le reste du temps elle allait voir des personnes malades
comme ma tante Léonie à qui elle racontait ce qui s’était passé à la
messe ou aux vêpres. Elle ne dédaignait pas d’ajouter quelque casuel à
la petite rente que lui servait la famille de ses anciens maîtres en
allant de temps en temps visiter le linge du curé ou de quelque autre
personnalité marquante du monde clérical de Combray. Elle portait
au-dessus d’une mante de drap noir un petit béguin blanc, presque de
religieuse, et une maladie de peau donnait à une partie de ses joues
et à son nez recourbé, les tons rose vif de la balsamine. Ses visites
étaient la grande distraction de ma tante Léonie qui ne recevait plus
guère personne d’autre, en dehors de M. le Curé. Ma tante avait peu à
peu évincé tous les autres visiteurs parce qu’ils avaient le tort à
ses yeux de rentrer tous dans l’une ou l’autre des deux catégories de
gens qu’elle détestait. Les uns, les pires et dont elle s’était
débarrassée les premiers, étaient ceux qui lui conseillaient de ne pas
«s’écouter» et professaient, fût-ce négativement et en ne la
manifestant que par certains silences de désapprobation ou par
certains sourires de doute, la doctrine subversive qu’une petite
promenade au soleil et un bon bifteck saignant (quand elle gardait
quatorze heures sur l’estomac deux méchantes gorgées d’eau de Vichy!)
lui feraient plus de bien que son lit et ses médecines. L’autre
catégorie se composait des personnes qui avaient l’air de croire
qu’elle était plus gravement malade qu’elle ne pensait, était aussi
gravement malade qu’elle le disait. Aussi, ceux qu’elle avait laissé
monter après quelques hésitations et sur les officieuses instances de
Françoise et qui, au cours de leur visite, avaient montré combien ils
étaient indignes de la faveur qu’on leur faisait en risquant
timidement un: «Ne croyez-vous pas que si vous vous secouiez un peu
par un beau temps», ou qui, au contraire, quand elle leur avait dit:
«Je suis bien bas, bien bas, c’est la fin, mes pauvres amis», lui
avaient répondu: «Ah! quand on n’a pas la santé! Mais vous pouvez
durer encore comme ça», ceux-là, les uns comme les autres, étaient
sûrs de ne plus jamais être reçus. Et si Françoise s’amusait de l’air
épouvanté de ma tante quand de son lit elle avait aperçu dans la rue
du Saint-Esprit une de ces personnes qui avait l’air de venir chez
elle ou quand elle avait entendu un coup de sonnette, elle riait
encore bien plus, et comme d’un bon tour, des ruses toujours
victorieuses de ma tante pour arriver à les faire congédier et de leur
mine déconfite en s’en retournant sans l’avoir vue, et, au fond
admirait sa maîtresse qu’elle jugeait supérieure à tous ces gens
puisqu’elle ne voulait pas les recevoir. En somme, ma tante exigeait
à la fois qu’on l’approuvât dans son régime, qu’on la plaignît pour
ses souffrances et qu’on la rassurât sur son avenir."
 :tokens 559
 :processed-at "2025-03-16T02:18:13.910607"
 :entities (list
  (entity :text "Eulalie" :label "ORG" :start 0 :end 7) (entity :text "Bretonnerie" :label "ORG" :start 100 :end 111) (entity :text "Théodore;" :label "ORG" :start 341 :end 350) (entity :text "Léonie" :label "ORG" :start 423 :end 429) (entity :text "Elle" :label "ORG" :start 498 :end 502) (entity :text "Combray." :label "ORG" :start 731 :end 739) (entity :text "Elle" :label "ORG" :start 740 :end 744) (entity :text "Léonie" :label "ORG" :start 1003 :end 1009) (entity :text "Curé." :label "ORG" :start 1074 :end 1079) (entity :text "Vichy!)" :label "ORG" :start 1692 :end 1699) (entity :text "Françoise" :label "ORG" :start 2036 :end 2045) (entity :text "«Ah!" :label "ORG" :start 2387 :end 2391) (entity :text "Mais" :label "ORG" :start 2419 :end 2423) (entity :text "Françoise" :label "ORG" :start 2544 :end 2553) (entity :text "Saint-Esprit" :label "ORG" :start 2645 :end 2657)
 )
 :sentences (list
  (sentence :text "Eulalie était une fille boiteuse, active et sourde qui s’était
«retirée» après la mort de Mme de la Bretonnerie où elle avait été en
place depuis son enfance et qui avait pris à côté de l’église une
chambre, d’où elle descendait tout le temps soit aux offices, soit, en
dehors des offices, dire une petite prière ou donner un coup de main à
Théodore; le reste du temps elle allait voir des personnes malades
comme ma tante Léonie à qui elle racontait ce qui s’était passé à la
messe ou aux vêpres" :start 0 :end 496) (sentence :text "Elle ne dédaignait pas d’ajouter quelque casuel à
la petite rente que lui servait la famille de ses anciens maîtres en
allant de temps en temps visiter le linge du curé ou de quelque autre
personnalité marquante du monde clérical de Combray" :start 497 :end 738) (sentence :text "Elle portait
au-dessus d’une mante de drap noir un petit béguin blanc, presque de
religieuse, et une maladie de peau donnait à une partie de ses joues
et à son nez recourbé, les tons rose vif de la balsamine" :start 739 :end 947) (sentence :text "Ses visites
étaient la grande distraction de ma tante Léonie qui ne recevait plus
guère personne d’autre, en dehors de M" :start 948 :end 1069) (sentence :text "le Curé" :start 1070 :end 1078) (sentence :text "Ma tante avait peu à
peu évincé tous les autres visiteurs parce qu’ils avaient le tort à
ses yeux de rentrer tous dans l’une ou l’autre des deux catégories de
gens qu’elle détestait" :start 1079 :end 1261) (sentence :text "Les uns, les pires et dont elle s’était
débarrassée les premiers, étaient ceux qui lui conseillaient de ne pas
«s’écouter» et professaient, fût-ce négativement et en ne la
manifestant que par certains silences de désapprobation ou par
certains sourires de doute, la doctrine subversive qu’une petite
promenade au soleil et un bon bifteck saignant (quand elle gardait
quatorze heures sur l’estomac deux méchantes gorgées d’eau de Vichy!)
lui feraient plus de bien que son lit et ses médecines" :start 1262 :end 1754) (sentence :text "L’autre
catégorie se composait des personnes qui avaient l’air de croire
qu’elle était plus gravement malade qu’elle ne pensait, était aussi
gravement malade qu’elle le disait" :start 1755 :end 1931) (sentence :text "Aussi, ceux qu’elle avait laissé
monter après quelques hésitations et sur les officieuses instances de
Françoise et qui, au cours de leur visite, avaient montré combien ils
étaient indignes de la faveur qu’on leur faisait en risquant
timidement un: «Ne croyez-vous pas que si vous vous secouiez un peu
par un beau temps», ou qui, au contraire, quand elle leur avait dit:
«Je suis bien bas, bien bas, c’est la fin, mes pauvres amis», lui
avaient répondu: «Ah! quand on n’a pas la santé! Mais vous pouvez
durer encore comme ça», ceux-là, les uns comme les autres, étaient
sûrs de ne plus jamais être reçus" :start 1932 :end 2536) (sentence :text "Et si Françoise s’amusait de l’air
épouvanté de ma tante quand de son lit elle avait aperçu dans la rue
du Saint-Esprit une de ces personnes qui avait l’air de venir chez
elle ou quand elle avait entendu un coup de sonnette, elle riait
encore bien plus, et comme d’un bon tour, des ruses toujours
victorieuses de ma tante pour arriver à les faire congédier et de leur
mine déconfite en s’en retournant sans l’avoir vue, et, au fond
admirait sa maîtresse qu’elle jugeait supérieure à tous ces gens
puisqu’elle ne voulait pas les recevoir" :start 2537 :end 3074) (sentence :text "En somme, ma tante exigeait
à la fois qu’on l’approuvât dans son régime, qu’on la plaignît pour
ses souffrances et qu’on la rassurât sur son avenir" :start 3075 :end 3223)
 ))