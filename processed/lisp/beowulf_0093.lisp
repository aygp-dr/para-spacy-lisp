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
 :text "Mais ma tante savait bien que ce n’était pas pour rien qu’elle avait
sonné Françoise, car, à Combray, une personne «qu’on ne connaissait
point» était un être aussi peu croyable qu’un dieu de la mythologie,
et de fait on ne se souvenait pas que, chaque fois que s’était
produite, dans la rue de Saint-Esprit ou sur la place, une de ces
apparitions stupéfiantes, des recherches bien conduites n’eussent pas
fini par réduire le personnage fabuleux aux proportions d’une
«personne qu’on connaissait», soit personnellement, soit
abstraitement, dans son état civil, en tant qu’ayant tel degré de
parenté avec des gens de Combray. C’était le fils de Mme Sauton qui
rentrait du service, la nièce de l’abbé Perdreau qui sortait de
couvent, le frère du curé, percepteur à Châteaudun qui venait de
prendre sa retraite ou qui était venu passer les fêtes. On avait eu en
les apercevant l’émotion de croire qu’il y avait à Combray des gens
qu’on ne connaissait point simplement parce qu’on ne les avait pas
reconnus ou identifiés tout de suite. Et pourtant, longtemps à
l’avance, Mme Sauton et le curé avaient prévenu qu’ils attendaient
leurs «voyageurs». Quand le soir, je montais, en rentrant, raconter
notre promenade à ma tante, si j’avais l’imprudence de lui dire que
nous avions rencontré près du Pont-Vieux, un homme que mon grand-père
ne connaissait pas: «Un homme que grand-père ne connaissait point,
s’écriait elle. Ah! je te crois bien!» Néanmoins un peu émue de cette
nouvelle, elle voulait en avoir le cœur net, mon grand-père était
mandé. «Qui donc est-ce que vous avez rencontré près du Pont-Vieux,
mon oncle? un homme que vous ne connaissiez point?»--«Mais si,
répondait mon grand-père, c’était Prosper le frère du jardinier de Mme
Bouillebœuf.»--«Ah! bien», disait ma tante, tranquillisée et un peu
rouge; haussant les épaules avec un sourire ironique, elle ajoutait:
«Aussi il me disait que vous aviez rencontré un homme que vous ne
connaissiez point!» Et on me recommandait d’être plus circonspect une
autre fois et de ne plus agiter ainsi ma tante par des paroles
irréfléchies. On connaissait tellement bien tout le monde, à Combray,
bêtes et gens, que si ma tante avait vu par hasard passer un chien
«qu’elle ne connaissait point», elle ne cessait d’y penser et de
consacrer à ce fait incompréhensible ses talents d’induction et ses
heures de liberté."
 :tokens 389
 :processed-at "2025-03-16T02:18:13.881588"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Françoise," :label "ORG" :start 75 :end 85) (entity :text "Combray," :label "ORG" :start 93 :end 101) (entity :text "Saint-Esprit" :label "ORG" :start 294 :end 306) (entity :text "Combray." :label "ORG" :start 615 :end 623) (entity :text "Sauton" :label "ORG" :start 647 :end 653) (entity :text "Perdreau" :label "ORG" :start 698 :end 706) (entity :text "Châteaudun" :label "ORG" :start 762 :end 772) (entity :text "Combray" :label "ORG" :start 909 :end 916) (entity :text "Sauton" :label "ORG" :start 1070 :end 1076) (entity :text "Quand" :label "ORG" :start 1142 :end 1147) (entity :text "Pont-Vieux," :label "ORG" :start 1289 :end 1300) (entity :text "Néanmoins" :label "ORG" :start 1435 :end 1444) (entity :text "«Qui" :label "ORG" :start 1539 :end 1543) (entity :text "Pont-Vieux," :label "ORG" :start 1588 :end 1599) (entity :text "Prosper" :label "ORG" :start 1697 :end 1704) (entity :text "Bouillebœuf.»--«Ah!" :label "ORG" :start 1734 :end 1753) (entity :text "«Aussi" :label "ORG" :start 1871 :end 1877) (entity :text "Combray," :label "ORG" :start 2131 :end 2139)
 )
 :sentences (list
  (sentence :text "Mais ma tante savait bien que ce n’était pas pour rien qu’elle avait
sonné Françoise, car, à Combray, une personne «qu’on ne connaissait
point» était un être aussi peu croyable qu’un dieu de la mythologie,
et de fait on ne se souvenait pas que, chaque fois que s’était
produite, dans la rue de Saint-Esprit ou sur la place, une de ces
apparitions stupéfiantes, des recherches bien conduites n’eussent pas
fini par réduire le personnage fabuleux aux proportions d’une
«personne qu’on connaissait», soit personnellement, soit
abstraitement, dans son état civil, en tant qu’ayant tel degré de
parenté avec des gens de Combray" :start 0 :end 622) (sentence :text "C’était le fils de Mme Sauton qui
rentrait du service, la nièce de l’abbé Perdreau qui sortait de
couvent, le frère du curé, percepteur à Châteaudun qui venait de
prendre sa retraite ou qui était venu passer les fêtes" :start 623 :end 841) (sentence :text "On avait eu en
les apercevant l’émotion de croire qu’il y avait à Combray des gens
qu’on ne connaissait point simplement parce qu’on ne les avait pas
reconnus ou identifiés tout de suite" :start 842 :end 1029) (sentence :text "Et pourtant, longtemps à
l’avance, Mme Sauton et le curé avaient prévenu qu’ils attendaient
leurs «voyageurs»" :start 1030 :end 1140) (sentence :text "Quand le soir, je montais, en rentrant, raconter
notre promenade à ma tante, si j’avais l’imprudence de lui dire que
nous avions rencontré près du Pont-Vieux, un homme que mon grand-père
ne connaissait pas: «Un homme que grand-père ne connaissait point,
s’écriait elle" :start 1141 :end 1410) (sentence :text "Ah! je te crois bien!» Néanmoins un peu émue de cette
nouvelle, elle voulait en avoir le cœur net, mon grand-père était
mandé" :start 1411 :end 1537) (sentence :text "«Qui donc est-ce que vous avez rencontré près du Pont-Vieux,
mon oncle? un homme que vous ne connaissiez point?»--«Mais si,
répondait mon grand-père, c’était Prosper le frère du jardinier de Mme
Bouillebœuf" :start 1538 :end 1745) (sentence :text "»--«Ah! bien», disait ma tante, tranquillisée et un peu
rouge; haussant les épaules avec un sourire ironique, elle ajoutait:
«Aussi il me disait que vous aviez rencontré un homme que vous ne
connaissiez point!» Et on me recommandait d’être plus circonspect une
autre fois et de ne plus agiter ainsi ma tante par des paroles
irréfléchies" :start 1746 :end 2082) (sentence :text "On connaissait tellement bien tout le monde, à Combray,
bêtes et gens, que si ma tante avait vu par hasard passer un chien
«qu’elle ne connaissait point», elle ne cessait d’y penser et de
consacrer à ce fait incompréhensible ses talents d’induction et ses
heures de liberté" :start 2083 :end 2357)
 ))