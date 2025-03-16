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
 :text "Jadis ayant souvent pensé avec terreur qu’un jour il cesserait d’être
épris d’Odette, il s’était promis d’être vigilant, et dès qu’il
sentirait que son amour commencerait à le quitter, de s’accrocher à
lui, de le retenir. Mais voici qu’à l’affaiblissement de son amour
correspondait simultanément un affaiblissement du désir de rester
amoureux. Car on ne peut pas changer, c’est-à-dire devenir une autre
personne, tout en continuant à obéir aux sentiments de celle qu’on
n’est plus. Parfois le nom aperçu dans un journal, d’un des hommes
qu’il supposait avoir pu être les amants d’Odette, lui redonnait de la
jalousie. Mais elle était bien légère et comme elle lui prouvait qu’il
n’était pas encore complètement sorti de ce temps où il avait tant
souffert--mais aussi où il avait connu une manière de sentir si
voluptueuse,--et que les hasards de la route lui permettraient
peut-être d’en apercevoir encore furtivement et de loin les beautés,
cette jalousie lui procurait plutôt une excitation agréable comme au
morne Parisien qui quitte Venise pour retrouver la France, un dernier
moustique prouve que l’Italie et l’été ne sont pas encore bien loin.
Mais le plus souvent le temps si particulier de sa vie d’où il
sortait, quand il faisait effort sinon pour y rester, du moins pour en
avoir une vision claire pendant qu’il le pouvait encore, il
s’apercevait qu’il ne le pouvait déjà plus; il aurait voulu apercevoir
comme un paysage qui allait disparaître cet amour qu’il venait de
quitter; mais il est si difficile d’être double et de se donner le
spectacle véridique d’un sentiment qu’on a cessé de posséder, que
bientôt l’obscurité se faisant dans son cerveau, il ne voyait plus
rien, renonçait à regarder, retirait son lorgnon, en essuyait les
verres; et il se disait qu’il valait mieux se reposer un peu, qu’il
serait encore temps tout à l’heure, et se rencognait, avec
l’incuriosité, dans l’engourdissement, du voyageur ensommeillé qui
rabat son chapeau sur ses yeux pour dormir dans le wagon qu’il sent
l’entraîner de plus en plus vite, loin du pays, où il a si longtemps
vécu et qu’il s’était promis de ne pas laisser fuir sans lui donner un
dernier adieu. Même, comme ce voyageur s’il se réveille seulement en
France, quand Swann ramassa par hasard près de lui la preuve que
Forcheville avait été l’amant d’Odette, il s’aperçut qu’il n’en
ressentait aucune douleur, que l’amour était loin maintenant et
regretta de n’avoir pas été averti du moment où il le quittait pour
toujours. Et de même qu’avant d’embrasser Odette pour la première fois
il avait cherché à imprimer dans sa mémoire le visage qu’elle avait eu
si longtemps pour lui et qu’allait transformer le souvenir de ce
baiser, de même il eût voulu, en pensée au moins, avoir pu faire ses
adieux, pendant qu’elle existait encore, à cette Odette lui inspirant
de l’amour, de la jalousie, à cette Odette lui causant des souffrances
et que maintenant il ne reverrait jamais. Il se trompait. Il devait la
revoir une fois encore, quelques semaines plus tard. Ce fut en
dormant, dans le crépuscule d’un rêve. Il se promenait avec Mme
Verdurin, le docteur Cottard, un jeune homme en fez qu’il ne pouvait
identifier, le peintre, Odette, Napoléon III et mon grand-père, sur un
chemin qui suivait la mer et la surplombait à pic tantôt de très haut,
tantôt de quelques mètres seulement, de sorte qu’on montait et
redescendait constamment; ceux des promeneurs qui redescendaient déjà
n’étaient plus visibles à ceux qui montaient encore, le peu de jour
qui restât faiblissait et il semblait alors qu’une nuit noire allait
s’étendre immédiatement. Par moment les vagues sautaient jusqu’au bord
et Swann sentait sur sa joue des éclaboussures glacées. Odette lui
disait de les essuyer, il ne pouvait pas et en était confus vis-à-vis
d’elle, ainsi que d’être en chemise de nuit. Il espérait qu’à cause de
l’obscurité on ne s’en rendait pas compté, mais cependant Mme Verdurin
le fixa d’un regard étonné durant un long moment pendant lequel il vit
sa figure se déformer, son nez s’allonger et qu’elle avait de grandes
moustaches. Il se détourna pour regarder Odette, ses joues étaient
pâles, avec des petits points rouges, ses traits tirés, cernés, mais
elle le regardait avec des yeux pleins de tendresse prêts à se
détacher comme des larmes pour tomber sur lui et il se sentait l’aimer
tellement qu’il aurait voulu l’emmener tout de suite. Tout d’un coup
Odette tourna son poignet, regarda une petite montre et dit: «Il faut
que je m’en aille», elle prenait congé de tout le monde, de la même
façon, sans prendre à part à Swann, sans lui dire où elle le reverrait
le soir ou un autre jour. Il n’osa pas le lui demander, il aurait
voulu la suivre et était obligé, sans se retourner vers elle, de
répondre en souriant à une question de Mme Verdurin, mais son cœur
battait horriblement, il éprouvait de la haine pour Odette, il aurait
voulu crever ses yeux qu’il aimait tant tout à l’heure, écraser ses
joues sans fraîcheur. Il continuait à monter avec Mme Verdurin,
c’est-à-dire à s’éloigner à chaque pas d’Odette, qui descendait en
sens inverse. Au bout d’une seconde il y eut beaucoup d’heures qu’elle
était partie. Le peintre fit remarquer à Swann que Napoléon III
s’était éclipsé un instant après elle. «C’était certainement entendu
entre eux, ajouta-t-il, ils ont dû se rejoindre en bas de la côte mais
n’ont pas voulu dire adieu ensemble à cause des convenances. Elle est
sa maîtresse.» Le jeune homme inconnu se mit à pleurer. Swann essaya
de le consoler. «Après tout elle a raison, lui dit-il en lui essuyant
les yeux et en lui ôtant son fez pour qu’il fût plus à son aise. Je le
lui ai conseillé dix fois. Pourquoi en être triste? C’était bien
l’homme qui pouvait la comprendre.» Ainsi Swann se parlait-il à
lui-même, car le jeune homme qu’il n’avait pu identifier d’abord était
aussi lui; comme certains romanciers, il avait distribué sa
personnalité à deux personnages, celui qui faisait le rêve, et un
qu’il voyait devant lui coiffé d’un fez."
 :tokens 1014
 :processed-at "2025-03-16T02:18:14.814317"
 :entities (list
  (entity :text "Jadis" :label "ORG" :start 0 :end 5) (entity :text "Mais" :label "ORG" :start 222 :end 226) (entity :text "Parfois" :label "ORG" :start 483 :end 490) (entity :text "Mais" :label "ORG" :start 619 :end 623) (entity :text "Parisien" :label "ORG" :start 1018 :end 1026) (entity :text "Venise" :label "ORG" :start 1038 :end 1044) (entity :text "France," :label "ORG" :start 1063 :end 1070) (entity :text "Mais" :label "ORG" :start 1151 :end 1155) (entity :text "Même," :label "ORG" :start 2165 :end 2170) (entity :text "France," :label "ORG" :start 2219 :end 2226) (entity :text "Swann" :label "ORG" :start 2233 :end 2238) (entity :text "Forcheville" :label "ORG" :start 2284 :end 2295) (entity :text "Odette" :label "ORG" :start 2316 :end 2322) (entity :text "Odette" :label "ORG" :start 2522 :end 2528) (entity :text "Odette" :label "ORG" :start 2805 :end 2811) (entity :text "Verdurin," :label "ORG" :start 3095 :end 3104) (entity :text "Cottard," :label "ORG" :start 3116 :end 3124) (entity :text "Odette," :label "ORG" :start 3188 :end 3195) (entity :text "Napoléon" :label "ORG" :start 3196 :end 3204) (entity :text "Swann" :label "ORG" :start 3650 :end 3655) (entity :text "Odette" :label "ORG" :start 3703 :end 3709) (entity :text "Verdurin" :label "ORG" :start 3917 :end 3925) (entity :text "Odette," :label "ORG" :start 4108 :end 4115) (entity :text "Tout" :label "ORG" :start 4391 :end 4395) (entity :text "Odette" :label "ORG" :start 4406 :end 4412) (entity :text "Swann," :label "ORG" :start 4573 :end 4579) (entity :text "Verdurin," :label "ORG" :start 4789 :end 4798) (entity :text "Odette," :label "ORG" :start 4865 :end 4872) (entity :text "Verdurin," :label "ORG" :start 5005 :end 5014) (entity :text "Swann" :label "ORG" :start 5194 :end 5199) (entity :text "Napoléon" :label "ORG" :start 5204 :end 5212) (entity :text "Elle" :label "ORG" :start 5418 :end 5422) (entity :text "Swann" :label "ORG" :start 5483 :end 5488) (entity :text "«Après" :label "ORG" :start 5512 :end 5518) (entity :text "Pourquoi" :label "ORG" :start 5664 :end 5672) (entity :text "Swann" :label "ORG" :start 5744 :end 5749)
 )
 :sentences (list
  (sentence :text "Jadis ayant souvent pensé avec terreur qu’un jour il cesserait d’être
épris d’Odette, il s’était promis d’être vigilant, et dès qu’il
sentirait que son amour commencerait à le quitter, de s’accrocher à
lui, de le retenir" :start 0 :end 220) (sentence :text "Mais voici qu’à l’affaiblissement de son amour
correspondait simultanément un affaiblissement du désir de rester
amoureux" :start 221 :end 343) (sentence :text "Car on ne peut pas changer, c’est-à-dire devenir une autre
personne, tout en continuant à obéir aux sentiments de celle qu’on
n’est plus" :start 344 :end 481) (sentence :text "Parfois le nom aperçu dans un journal, d’un des hommes
qu’il supposait avoir pu être les amants d’Odette, lui redonnait de la
jalousie" :start 482 :end 617) (sentence :text "Mais elle était bien légère et comme elle lui prouvait qu’il
n’était pas encore complètement sorti de ce temps où il avait tant
souffert--mais aussi où il avait connu une manière de sentir si
voluptueuse,--et que les hasards de la route lui permettraient
peut-être d’en apercevoir encore furtivement et de loin les beautés,
cette jalousie lui procurait plutôt une excitation agréable comme au
morne Parisien qui quitte Venise pour retrouver la France, un dernier
moustique prouve que l’Italie et l’été ne sont pas encore bien loin" :start 618 :end 1149) (sentence :text "Mais le plus souvent le temps si particulier de sa vie d’où il
sortait, quand il faisait effort sinon pour y rester, du moins pour en
avoir une vision claire pendant qu’il le pouvait encore, il
s’apercevait qu’il ne le pouvait déjà plus; il aurait voulu apercevoir
comme un paysage qui allait disparaître cet amour qu’il venait de
quitter; mais il est si difficile d’être double et de se donner le
spectacle véridique d’un sentiment qu’on a cessé de posséder, que
bientôt l’obscurité se faisant dans son cerveau, il ne voyait plus
rien, renonçait à regarder, retirait son lorgnon, en essuyait les
verres; et il se disait qu’il valait mieux se reposer un peu, qu’il
serait encore temps tout à l’heure, et se rencognait, avec
l’incuriosité, dans l’engourdissement, du voyageur ensommeillé qui
rabat son chapeau sur ses yeux pour dormir dans le wagon qu’il sent
l’entraîner de plus en plus vite, loin du pays, où il a si longtemps
vécu et qu’il s’était promis de ne pas laisser fuir sans lui donner un
dernier adieu" :start 1150 :end 2163) (sentence :text "Même, comme ce voyageur s’il se réveille seulement en
France, quand Swann ramassa par hasard près de lui la preuve que
Forcheville avait été l’amant d’Odette, il s’aperçut qu’il n’en
ressentait aucune douleur, que l’amour était loin maintenant et
regretta de n’avoir pas été averti du moment où il le quittait pour
toujours" :start 2164 :end 2488) (sentence :text "Et de même qu’avant d’embrasser Odette pour la première fois
il avait cherché à imprimer dans sa mémoire le visage qu’elle avait eu
si longtemps pour lui et qu’allait transformer le souvenir de ce
baiser, de même il eût voulu, en pensée au moins, avoir pu faire ses
adieux, pendant qu’elle existait encore, à cette Odette lui inspirant
de l’amour, de la jalousie, à cette Odette lui causant des souffrances
et que maintenant il ne reverrait jamais" :start 2489 :end 2937) (sentence :text "Il se trompait" :start 2938 :end 2953) (sentence :text "Il devait la
revoir une fois encore, quelques semaines plus tard" :start 2954 :end 3019) (sentence :text "Ce fut en
dormant, dans le crépuscule d’un rêve" :start 3020 :end 3068) (sentence :text "Il se promenait avec Mme
Verdurin, le docteur Cottard, un jeune homme en fez qu’il ne pouvait
identifier, le peintre, Odette, Napoléon III et mon grand-père, sur un
chemin qui suivait la mer et la surplombait à pic tantôt de très haut,
tantôt de quelques mètres seulement, de sorte qu’on montait et
redescendait constamment; ceux des promeneurs qui redescendaient déjà
n’étaient plus visibles à ceux qui montaient encore, le peu de jour
qui restât faiblissait et il semblait alors qu’une nuit noire allait
s’étendre immédiatement" :start 3069 :end 3599) (sentence :text "Par moment les vagues sautaient jusqu’au bord
et Swann sentait sur sa joue des éclaboussures glacées" :start 3600 :end 3701) (sentence :text "Odette lui
disait de les essuyer, il ne pouvait pas et en était confus vis-à-vis
d’elle, ainsi que d’être en chemise de nuit" :start 3702 :end 3827) (sentence :text "Il espérait qu’à cause de
l’obscurité on ne s’en rendait pas compté, mais cependant Mme Verdurin
le fixa d’un regard étonné durant un long moment pendant lequel il vit
sa figure se déformer, son nez s’allonger et qu’elle avait de grandes
moustaches" :start 3828 :end 4077) (sentence :text "Il se détourna pour regarder Odette, ses joues étaient
pâles, avec des petits points rouges, ses traits tirés, cernés, mais
elle le regardait avec des yeux pleins de tendresse prêts à se
détacher comme des larmes pour tomber sur lui et il se sentait l’aimer
tellement qu’il aurait voulu l’emmener tout de suite" :start 4078 :end 4389) (sentence :text "Tout d’un coup
Odette tourna son poignet, regarda une petite montre et dit: «Il faut
que je m’en aille», elle prenait congé de tout le monde, de la même
façon, sans prendre à part à Swann, sans lui dire où elle le reverrait
le soir ou un autre jour" :start 4390 :end 4639) (sentence :text "Il n’osa pas le lui demander, il aurait
voulu la suivre et était obligé, sans se retourner vers elle, de
répondre en souriant à une question de Mme Verdurin, mais son cœur
battait horriblement, il éprouvait de la haine pour Odette, il aurait
voulu crever ses yeux qu’il aimait tant tout à l’heure, écraser ses
joues sans fraîcheur" :start 4640 :end 4971) (sentence :text "Il continuait à monter avec Mme Verdurin,
c’est-à-dire à s’éloigner à chaque pas d’Odette, qui descendait en
sens inverse" :start 4972 :end 5094) (sentence :text "Au bout d’une seconde il y eut beaucoup d’heures qu’elle
était partie" :start 5095 :end 5165) (sentence :text "Le peintre fit remarquer à Swann que Napoléon III
s’était éclipsé un instant après elle" :start 5166 :end 5254) (sentence :text "«C’était certainement entendu
entre eux, ajouta-t-il, ils ont dû se rejoindre en bas de la côte mais
n’ont pas voulu dire adieu ensemble à cause des convenances" :start 5255 :end 5416) (sentence :text "Elle est
sa maîtresse" :start 5417 :end 5439) (sentence :text "» Le jeune homme inconnu se mit à pleurer" :start 5440 :end 5481) (sentence :text "Swann essaya
de le consoler" :start 5482 :end 5510) (sentence :text "«Après tout elle a raison, lui dit-il en lui essuyant
les yeux et en lui ôtant son fez pour qu’il fût plus à son aise" :start 5511 :end 5629) (sentence :text "Je le
lui ai conseillé dix fois" :start 5630 :end 5662) (sentence :text "Pourquoi en être triste? C’était bien
l’homme qui pouvait la comprendre" :start 5663 :end 5735) (sentence :text "» Ainsi Swann se parlait-il à
lui-même, car le jeune homme qu’il n’avait pu identifier d’abord était
aussi lui; comme certains romanciers, il avait distribué sa
personnalité à deux personnages, celui qui faisait le rêve, et un
qu’il voyait devant lui coiffé d’un fez" :start 5736 :end 6002)
 ))