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
 :text "Il en avait eu souvent la pensée. Maintenant qu’il s’était remis à son
étude sur Ver Meer il aurait eu besoin de retourner au moins quelques
jours à la Haye, à Dresde, à Brunswick. Il était persuadé qu’une
«Toilette de Diane» qui avait été achetée par le Mauritshuis à la
vente Goldschmidt comme un Nicolas Maes était en réalité de Ver Meer.
Et il aurait voulu pouvoir étudier le tableau sur place pour étayer sa
conviction. Mais quitter Paris pendant qu’Odette y était et même quand
elle était absente--car dans des lieux nouveaux où les sensations ne
sont pas amorties par l’habitude, on retrempe, on ranime une
douleur--c’était pour lui un projet si cruel, qu’il ne se sentait
capable d’y penser sans cesse que parce qu’il se savait résolu à ne
l’exécuter jamais. Mais il arrivait qu’en dormant, l’intention du
voyage renaissait en lui,--sans qu’il se rappelât que ce voyage était
impossible--et elle s’y réalisait. Un jour il rêva qu’il partait pour
un an; penché à la portière du wagon vers un jeune homme qui sur le
quai lui disait adieu en pleurant, Swann cherchait à le convaincre de
partir avec lui. Le train s’ébranlant, l’anxiété le réveilla, il se
rappela qu’il ne partait pas, qu’il verrait Odette ce soir-là, le
lendemain et presque chaque jour. Alors encore tout ému de son rêve,
il bénit les circonstances particulières qui le rendaient indépendant,
grâce auxquelles il pouvait rester près d’Odette, et aussi réussir à
ce qu’elle lui permît de la voir quelquefois; et, récapitulant tous
ces avantages: sa situation,--sa fortune, dont elle avait souvent trop
besoin pour ne pas reculer devant une rupture (ayant même, disait-on,
une arrière-pensée de se faire épouser par lui),--cette amitié de M. de
Charlus, qui à vrai dire ne lui avait jamais fait obtenir grand’chose
d’Odette, mais lui donnait la douceur de sentir qu’elle entendait
parler de lui d’une manière flatteuse par cet ami commun pour qui elle
avait une si grande estime--et jusqu’à son intelligence enfin, qu’il
employait tout entière à combiner chaque jour une intrigue nouvelle
qui rendît sa présence sinon agréable, du moins nécessaire à Odette--il
songea à ce qu’il serait devenu si tout cela lui avait manqué, il
songea que s’il avait été, comme tant d’autres, pauvre, humble, dénué,
obligé d’accepter toute besogne, ou lié à des parents, à une épouse,
il aurait pu être obligé de quitter Odette, que ce rêve dont l’effroi
était encore si proche aurait pu être vrai, et il se dit: «On ne
connaît pas son bonheur. On n’est jamais aussi malheureux qu’on
croit.» Mais il compta que cette existence durait déjà depuis
plusieurs années, que tout ce qu’il pouvait espérer c’est qu’elle
durât toujours, qu’il sacrifierait ses travaux, ses plaisirs, ses
amis, finalement toute sa vie à l’attente quotidienne d’un rendez-vous
qui ne pouvait rien lui apporter d’heureux, et il se demanda s’il ne
se trompait pas, si ce qui avait favorisé sa liaison et en avait
empêché la rupture n’avait pas desservi sa destinée, si l’événement
désirable, ce n’aurait pas été celui dont il se réjouissait tant qu’il
n’eût eu lieu qu’en rêve: son départ; il se dit qu’on ne connaît pas
son malheur, qu’on n’est jamais si heureux qu’on croit."
 :tokens 536
 :processed-at "2025-03-16T02:18:14.756141"
 :entities (list
  (entity :text "Maintenant" :label "ORG" :start 34 :end 44) (entity :text "Meer" :label "ORG" :start 85 :end 89) (entity :text "Haye," :label "ORG" :start 152 :end 157) (entity :text "Dresde," :label "ORG" :start 160 :end 167) (entity :text "Brunswick." :label "ORG" :start 170 :end 180) (entity :text "«Toilette" :label "ORG" :start 206 :end 215) (entity :text "Diane»" :label "ORG" :start 219 :end 225) (entity :text "Mauritshuis" :label "ORG" :start 255 :end 266) (entity :text "Goldschmidt" :label "ORG" :start 278 :end 289) (entity :text "Nicolas" :label "ORG" :start 299 :end 306) (entity :text "Maes" :label "ORG" :start 307 :end 311) (entity :text "Meer." :label "ORG" :start 336 :end 341) (entity :text "Mais" :label "ORG" :start 425 :end 429) (entity :text "Paris" :label "ORG" :start 438 :end 443) (entity :text "Mais" :label "ORG" :start 767 :end 771) (entity :text "Swann" :label "ORG" :start 1057 :end 1062) (entity :text "Odette" :label "ORG" :start 1204 :end 1210) (entity :text "Charlus," :label "ORG" :start 1716 :end 1724) (entity :text "Odette," :label "ORG" :start 1788 :end 1795) (entity :text "Mais" :label "ORG" :start 2545 :end 2549)
 )
 :sentences (list
  (sentence :text "Il en avait eu souvent la pensée" :start 0 :end 32) (sentence :text "Maintenant qu’il s’était remis à son
étude sur Ver Meer il aurait eu besoin de retourner au moins quelques
jours à la Haye, à Dresde, à Brunswick" :start 33 :end 179) (sentence :text "Il était persuadé qu’une
«Toilette de Diane» qui avait été achetée par le Mauritshuis à la
vente Goldschmidt comme un Nicolas Maes était en réalité de Ver Meer" :start 180 :end 340) (sentence :text "Et il aurait voulu pouvoir étudier le tableau sur place pour étayer sa
conviction" :start 341 :end 423) (sentence :text "Mais quitter Paris pendant qu’Odette y était et même quand
elle était absente--car dans des lieux nouveaux où les sensations ne
sont pas amorties par l’habitude, on retrempe, on ranime une
douleur--c’était pour lui un projet si cruel, qu’il ne se sentait
capable d’y penser sans cesse que parce qu’il se savait résolu à ne
l’exécuter jamais" :start 424 :end 765) (sentence :text "Mais il arrivait qu’en dormant, l’intention du
voyage renaissait en lui,--sans qu’il se rappelât que ce voyage était
impossible--et elle s’y réalisait" :start 766 :end 917) (sentence :text "Un jour il rêva qu’il partait pour
un an; penché à la portière du wagon vers un jeune homme qui sur le
quai lui disait adieu en pleurant, Swann cherchait à le convaincre de
partir avec lui" :start 918 :end 1107) (sentence :text "Le train s’ébranlant, l’anxiété le réveilla, il se
rappela qu’il ne partait pas, qu’il verrait Odette ce soir-là, le
lendemain et presque chaque jour" :start 1108 :end 1258) (sentence :text "Alors encore tout ému de son rêve,
il bénit les circonstances particulières qui le rendaient indépendant,
grâce auxquelles il pouvait rester près d’Odette, et aussi réussir à
ce qu’elle lui permît de la voir quelquefois; et, récapitulant tous
ces avantages: sa situation,--sa fortune, dont elle avait souvent trop
besoin pour ne pas reculer devant une rupture (ayant même, disait-on,
une arrière-pensée de se faire épouser par lui),--cette amitié de M" :start 1259 :end 1711) (sentence :text "de
Charlus, qui à vrai dire ne lui avait jamais fait obtenir grand’chose
d’Odette, mais lui donnait la douceur de sentir qu’elle entendait
parler de lui d’une manière flatteuse par cet ami commun pour qui elle
avait une si grande estime--et jusqu’à son intelligence enfin, qu’il
employait tout entière à combiner chaque jour une intrigue nouvelle
qui rendît sa présence sinon agréable, du moins nécessaire à Odette--il
songea à ce qu’il serait devenu si tout cela lui avait manqué, il
songea que s’il avait été, comme tant d’autres, pauvre, humble, dénué,
obligé d’accepter toute besogne, ou lié à des parents, à une épouse,
il aurait pu être obligé de quitter Odette, que ce rêve dont l’effroi
était encore si proche aurait pu être vrai, et il se dit: «On ne
connaît pas son bonheur" :start 1712 :end 2496) (sentence :text "On n’est jamais aussi malheureux qu’on
croit" :start 2497 :end 2542) (sentence :text "» Mais il compta que cette existence durait déjà depuis
plusieurs années, que tout ce qu’il pouvait espérer c’est qu’elle
durât toujours, qu’il sacrifierait ses travaux, ses plaisirs, ses
amis, finalement toute sa vie à l’attente quotidienne d’un rendez-vous
qui ne pouvait rien lui apporter d’heureux, et il se demanda s’il ne
se trompait pas, si ce qui avait favorisé sa liaison et en avait
empêché la rupture n’avait pas desservi sa destinée, si l’événement
désirable, ce n’aurait pas été celui dont il se réjouissait tant qu’il
n’eût eu lieu qu’en rêve: son départ; il se dit qu’on ne connaît pas
son malheur, qu’on n’est jamais si heureux qu’on croit" :start 2543 :end 3198)
 ))