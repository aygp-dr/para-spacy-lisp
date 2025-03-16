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
 :text "--«C’est malheureux. Vous devriez leur demander. La Berma dans Phèdre,
dans le Cid, ce n’est qu’une actrice si vous voulez, mais vous savez
je ne crois pas beaucoup à la «hiérarchie!» des arts; (et je
remarquai, comme cela m’avait souvent frappé dans ses conversations
avec les sœurs de ma grand’mère que quand il parlait de choses
sérieuses, quand il employait une expression qui semblait impliquer
une opinion sur un sujet important, il avait soin de l’isoler dans une
intonation spéciale, machinale et ironique, comme s’il l’avait mise
entre guillemets, semblant ne pas vouloir la prendre à son compte, et
dire: «la hiérarchie, vous savez, comme disent les gens ridicules»?
Mais alors, si c’était ridicule, pourquoi disait-il la hiérarchie?).
Un instant après il ajouta: «Cela vous donnera une vision aussi noble
que n’importe quel chef-d’œuvre, je ne sais pas moi... que»--et il se
mit à rire--«les Reines de Chartres!» Jusque-là cette horreur
d’exprimer sérieusement son opinion m’avait paru quelque chose qui
devait être élégant et parisien et qui s’opposait au dogmatisme
provincial des sœurs de ma grand’mère; et je soupçonnais aussi que
c’était une des formes de l’esprit dans la coterie où vivait Swann et
où par réaction sur le lyrisme des générations antérieures on
réhabilitait à l’excès les petits faits précis, réputés vulgaires
autrefois, et on proscrivait les «phrases». Mais maintenant je
trouvais quelque chose de choquant dans cette attitude de Swann en
face des choses. Il avait l’air de ne pas oser avoir une opinion et de
n’être tranquille que quand il pouvait donner méticuleusement des
renseignements précis. Mais il ne se rendait donc pas compte que
c’était professer l’opinion, postuler, que l’exactitude de ces détails
avait de l’importance. Je repensai alors à ce dîner où j’étais si
triste parce que maman ne devait pas monter dans ma chambre et où il
avait dit que les bals chez la princesse de Léon n’avaient aucune
importance. Mais c’était pourtant à ce genre de plaisirs qu’il
employait sa vie. Je trouvais tout cela contradictoire. Pour quelle
autre vie réservait-il de dire enfin sérieusement ce qu’il pensait des
choses, de formuler des jugements qu’il pût ne pas mettre entre
guillemets, et de ne plus se livrer avec une politesse pointilleuse à
des occupations dont il professait en même temps qu’elles sont
ridicules? Je remarquai aussi dans la façon dont Swann me parla de
Bergotte quelque chose qui en revanche ne lui était pas particulier
mais au contraire était dans ce temps-là commun à tous les admirateurs
de l’écrivain, à l’amie de ma mère, au docteur du Boulbon. Comme
Swann, ils disaient de Bergotte: «C’est un charmant esprit, si
particulier, il a une façon à lui de dire les choses un peu cherchée,
mais si agréable. On n’a pas besoin de voir la signature, on reconnaît
tout de suite que c’est de lui.» Mais aucun n’aurait été jusqu’à dire:
«C’est un grand écrivain, il a un grand talent.» Ils ne disaient même
pas qu’il avait du talent. Ils ne le disaient pas parce qu’ils ne le
savaient pas. Nous sommes très longs à reconnaître dans la physionomie
particulière d’un nouvel écrivain le modèle qui porte le nom de «grand
talent» dans notre musée des idées générales. Justement parce que
cette physionomie est nouvelle nous ne la trouvons pas tout à fait
ressemblante à ce que nous appelons talent. Nous disons plutôt
originalité, charme, délicatesse, force; et puis un jour nous nous
rendons compte que c’est justement tout cela le talent."
 :tokens 577
 :processed-at "2025-03-16T02:18:13.997237"
 :entities (list
  (entity :text "Vous" :label "ORG" :start 21 :end 25) (entity :text "Berma" :label "ORG" :start 52 :end 57) (entity :text "Phèdre," :label "ORG" :start 63 :end 70) (entity :text "Cid," :label "ORG" :start 79 :end 83) (entity :text "Mais" :label "ORG" :start 677 :end 681) (entity :text "«Cela" :label "ORG" :start 774 :end 779) (entity :text "Reines" :label "ORG" :start 903 :end 909) (entity :text "Chartres!»" :label "ORG" :start 913 :end 923) (entity :text "Swann" :label "ORG" :start 1207 :end 1212) (entity :text "Mais" :label "ORG" :start 1388 :end 1392) (entity :text "Swann" :label "ORG" :start 1465 :end 1470) (entity :text "Mais" :label "ORG" :start 1634 :end 1638) (entity :text "Léon" :label "ORG" :start 1926 :end 1930) (entity :text "Mais" :label "ORG" :start 1960 :end 1964) (entity :text "Pour" :label "ORG" :start 2067 :end 2071) (entity :text "Swann" :label "ORG" :start 2396 :end 2401) (entity :text "Bergotte" :label "ORG" :start 2414 :end 2422) (entity :text "Boulbon." :label "ORG" :start 2603 :end 2611) (entity :text "Comme" :label "ORG" :start 2612 :end 2617) (entity :text "Swann," :label "ORG" :start 2618 :end 2624) (entity :text "Bergotte:" :label "ORG" :start 2641 :end 2650) (entity :text "Mais" :label "ORG" :start 2855 :end 2859) (entity :text "Nous" :label "ORG" :start 3046 :end 3050) (entity :text "Justement" :label "ORG" :start 3220 :end 3229) (entity :text "Nous" :label "ORG" :start 3351 :end 3355)
 )
 :sentences (list
  (sentence :text "--«C’est malheureux" :start 0 :end 19) (sentence :text "Vous devriez leur demander" :start 20 :end 47) (sentence :text "La Berma dans Phèdre,
dans le Cid, ce n’est qu’une actrice si vous voulez, mais vous savez
je ne crois pas beaucoup à la «hiérarchie!» des arts; (et je
remarquai, comme cela m’avait souvent frappé dans ses conversations
avec les sœurs de ma grand’mère que quand il parlait de choses
sérieuses, quand il employait une expression qui semblait impliquer
une opinion sur un sujet important, il avait soin de l’isoler dans une
intonation spéciale, machinale et ironique, comme s’il l’avait mise
entre guillemets, semblant ne pas vouloir la prendre à son compte, et
dire: «la hiérarchie, vous savez, comme disent les gens ridicules»?
Mais alors, si c’était ridicule, pourquoi disait-il la hiérarchie?)" :start 48 :end 744) (sentence :text "Un instant après il ajouta: «Cela vous donnera une vision aussi noble
que n’importe quel chef-d’œuvre, je ne sais pas moi" :start 745 :end 867) (sentence :text "que»--et il se
mit à rire--«les Reines de Chartres!» Jusque-là cette horreur
d’exprimer sérieusement son opinion m’avait paru quelque chose qui
devait être élégant et parisien et qui s’opposait au dogmatisme
provincial des sœurs de ma grand’mère; et je soupçonnais aussi que
c’était une des formes de l’esprit dans la coterie où vivait Swann et
où par réaction sur le lyrisme des générations antérieures on
réhabilitait à l’excès les petits faits précis, réputés vulgaires
autrefois, et on proscrivait les «phrases»" :start 870 :end 1386) (sentence :text "Mais maintenant je
trouvais quelque chose de choquant dans cette attitude de Swann en
face des choses" :start 1387 :end 1489) (sentence :text "Il avait l’air de ne pas oser avoir une opinion et de
n’être tranquille que quand il pouvait donner méticuleusement des
renseignements précis" :start 1490 :end 1632) (sentence :text "Mais il ne se rendait donc pas compte que
c’était professer l’opinion, postuler, que l’exactitude de ces détails
avait de l’importance" :start 1633 :end 1768) (sentence :text "Je repensai alors à ce dîner où j’étais si
triste parce que maman ne devait pas monter dans ma chambre et où il
avait dit que les bals chez la princesse de Léon n’avaient aucune
importance" :start 1769 :end 1958) (sentence :text "Mais c’était pourtant à ce genre de plaisirs qu’il
employait sa vie" :start 1959 :end 2027) (sentence :text "Je trouvais tout cela contradictoire" :start 2028 :end 2065) (sentence :text "Pour quelle
autre vie réservait-il de dire enfin sérieusement ce qu’il pensait des
choses, de formuler des jugements qu’il pût ne pas mettre entre
guillemets, et de ne plus se livrer avec une politesse pointilleuse à
des occupations dont il professait en même temps qu’elles sont
ridicules? Je remarquai aussi dans la façon dont Swann me parla de
Bergotte quelque chose qui en revanche ne lui était pas particulier
mais au contraire était dans ce temps-là commun à tous les admirateurs
de l’écrivain, à l’amie de ma mère, au docteur du Boulbon" :start 2066 :end 2610) (sentence :text "Comme
Swann, ils disaient de Bergotte: «C’est un charmant esprit, si
particulier, il a une façon à lui de dire les choses un peu cherchée,
mais si agréable" :start 2611 :end 2767) (sentence :text "On n’a pas besoin de voir la signature, on reconnaît
tout de suite que c’est de lui" :start 2768 :end 2852) (sentence :text "» Mais aucun n’aurait été jusqu’à dire:
«C’est un grand écrivain, il a un grand talent" :start 2853 :end 2939) (sentence :text "» Ils ne disaient même
pas qu’il avait du talent" :start 2940 :end 2988) (sentence :text "Ils ne le disaient pas parce qu’ils ne le
savaient pas" :start 2989 :end 3044) (sentence :text "Nous sommes très longs à reconnaître dans la physionomie
particulière d’un nouvel écrivain le modèle qui porte le nom de «grand
talent» dans notre musée des idées générales" :start 3045 :end 3218) (sentence :text "Justement parce que
cette physionomie est nouvelle nous ne la trouvons pas tout à fait
ressemblante à ce que nous appelons talent" :start 3219 :end 3349) (sentence :text "Nous disons plutôt
originalité, charme, délicatesse, force; et puis un jour nous nous
rendons compte que c’est justement tout cela le talent" :start 3350 :end 3491)
 ))