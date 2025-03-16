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
 :text "Même quand il ne pouvait savoir où elle était allée, il lui aurait
suffi pour calmer l’angoisse qu’il éprouvait alors, et contre laquelle
la présence d’Odette, la douceur d’être auprès d’elle était le seul
spécifique (un spécifique qui à la longue aggravait le mal avec bien
des remèdes, mais du moins calmait momentanément la souffrance), il
lui aurait suffi, si Odette l’avait seulement permis, de rester chez
elle tant qu’elle ne serait pas là, de l’attendre jusqu’à cette heure
du retour dans l’apaisement de laquelle seraient venues se confondre
les heures qu’un prestige, un maléfice lui avaient fait croire
différentes des autres. Mais elle ne le voulait pas; il revenait chez
lui; il se forçait en chemin à former divers projets, il cessait de
songer à Odette; même il arrivait, tout en se déshabillant, à rouler
en lui des pensées assez joyeuses; c’est le cœur plein de l’espoir
d’aller le lendemain voir quelque chef-d’œuvre qu’il se mettait au lit
et éteignait sa lumière; mais, dès que, pour se préparer à dormir, il
cessait d’exercer sur lui-même une contrainte dont il n’avait même pas
conscience tant elle était devenue habituelle, au même instant un
frisson glacé refluait en lui et il se mettait à sangloter. Il ne
voulait même pas savoir pourquoi, s’essuyait les yeux, se disait en
riant: «C’est charmant, je deviens névropathe.» Puis il ne pouvait
penser sans une grande lassitude que le lendemain il faudrait
recommencer de chercher à savoir ce qu’Odette avait fait, à mettre en
jeu des influences pour tâcher de la voir. Cette nécessité d’une
activité sans trêve, sans variété, sans résultats, lui était si
cruelle qu’un jour apercevant une grosseur sur son ventre, il
ressentit une véritable joie à la pensée qu’il avait peut-être une
tumeur mortelle, qu’il n’allait plus avoir à s’occuper de rien, que
c’était la maladie qui allait le gouverner, faire de lui son jouet,
jusqu’à la fin prochaine. Et en effet si, à cette époque, il lui
arriva souvent sans se l’avouer de désirer la mort, c’était pour
échapper moins à l’acuité de ses souffrances qu’à la monotonie de son
effort."
 :tokens 351
 :processed-at "2025-03-16T02:18:14.633772"
 :entities (list
  (entity :text "Même" :label "ORG" :start 0 :end 4) (entity :text "Odette" :label "ORG" :start 152 :end 158) (entity :text "Mais" :label "ORG" :start 638 :end 642) (entity :text "Odette;" :label "ORG" :start 761 :end 768) (entity :text "Puis" :label "ORG" :start 1348 :end 1352) (entity :text "Cette" :label "ORG" :start 1542 :end 1547)
 )
 :sentences (list
  (sentence :text "Même quand il ne pouvait savoir où elle était allée, il lui aurait
suffi pour calmer l’angoisse qu’il éprouvait alors, et contre laquelle
la présence d’Odette, la douceur d’être auprès d’elle était le seul
spécifique (un spécifique qui à la longue aggravait le mal avec bien
des remèdes, mais du moins calmait momentanément la souffrance), il
lui aurait suffi, si Odette l’avait seulement permis, de rester chez
elle tant qu’elle ne serait pas là, de l’attendre jusqu’à cette heure
du retour dans l’apaisement de laquelle seraient venues se confondre
les heures qu’un prestige, un maléfice lui avaient fait croire
différentes des autres" :start 0 :end 636) (sentence :text "Mais elle ne le voulait pas; il revenait chez
lui; il se forçait en chemin à former divers projets, il cessait de
songer à Odette; même il arrivait, tout en se déshabillant, à rouler
en lui des pensées assez joyeuses; c’est le cœur plein de l’espoir
d’aller le lendemain voir quelque chef-d’œuvre qu’il se mettait au lit
et éteignait sa lumière; mais, dès que, pour se préparer à dormir, il
cessait d’exercer sur lui-même une contrainte dont il n’avait même pas
conscience tant elle était devenue habituelle, au même instant un
frisson glacé refluait en lui et il se mettait à sangloter" :start 637 :end 1224) (sentence :text "Il ne
voulait même pas savoir pourquoi, s’essuyait les yeux, se disait en
riant: «C’est charmant, je deviens névropathe" :start 1225 :end 1345) (sentence :text "» Puis il ne pouvait
penser sans une grande lassitude que le lendemain il faudrait
recommencer de chercher à savoir ce qu’Odette avait fait, à mettre en
jeu des influences pour tâcher de la voir" :start 1346 :end 1540) (sentence :text "Cette nécessité d’une
activité sans trêve, sans variété, sans résultats, lui était si
cruelle qu’un jour apercevant une grosseur sur son ventre, il
ressentit une véritable joie à la pensée qu’il avait peut-être une
tumeur mortelle, qu’il n’allait plus avoir à s’occuper de rien, que
c’était la maladie qui allait le gouverner, faire de lui son jouet,
jusqu’à la fin prochaine" :start 1541 :end 1917) (sentence :text "Et en effet si, à cette époque, il lui
arriva souvent sans se l’avouer de désirer la mort, c’était pour
échapper moins à l’acuité de ses souffrances qu’à la monotonie de son
effort" :start 1918 :end 2099)
 ))