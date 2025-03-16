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
 :text "Pour ceux qui comme nous virent à cette époque M. Vinteuil éviter les
personnes qu’il connaissait, se détourner quand il les apercevait,
vieillir en quelques mois, s’absorber dans son chagrin, devenir
incapable de tout effort qui n’avait pas directement le bonheur de sa
fille pour but, passer des journées entières devant la tombe de sa
femme,--il eût été difficile de ne pas comprendre qu’il était en train
de mourir de chagrin, et de supposer qu’il ne se rendait pas compte
des propos qui couraient. Il les connaissait, peut-être même y
ajoutait-il foi. Il n’est peut-être pas une personne, si grande que
soit sa vertu, que la complexité des circonstances ne puisse amener à
vivre un jour dans la familiarité du vice qu’elle condamne le plus
formellement,--sans qu’elle le reconnaisse d’ailleurs tout à fait sous
le déguisement de faits particuliers qu’il revêt pour entrer en
contact avec elle et la faire souffrir: paroles bizarres, attitude
inexplicable, un certain soir, de tel être qu’elle a par ailleurs tant
de raisons pour aimer. Mais pour un homme comme M. Vinteuil il devait
entrer bien plus de souffrance que pour un autre dans la résignation à
une de ces situations qu’on croit à tort être l’apanage exclusif du
monde de la bohème: elles se produisent chaque fois qu’a besoin de se
réserver la place et la sécurité qui lui sont nécessaires, un vice que
la nature elle-même fait épanouir chez un enfant, parfois rien qu’en
mêlant les vertus de son père et de sa mère, comme la couleur de ses
yeux. Mais de ce que M. Vinteuil connaissait peut-être la conduite de
sa fille, il ne s’ensuit pas que son culte pour elle en eût été
diminué. Les faits ne pénètrent pas dans le monde où vivent nos
croyances, ils n’ont pas fait naître celles-ci, ils ne les détruisent
pas; ils peuvent leur infliger les plus constants démentis sans les
affaiblir, et une avalanche de malheurs ou de maladies se succédant
sans interruption dans une famille, ne la fera pas douter de la bonté
de son Dieu ou du talent de son médecin. Mais quand M. Vinteuil
songeait à sa fille et à lui-même du point de vue du monde, du point
de vue de leur réputation, quand il cherchait à se situer avec elle au
rang qu’ils occupaient dans l’estime générale, alors ce jugement
d’ordre social, il le portait exactement comme l’eût fait l’habitant
de Combray qui lui eût été le plus hostile, il se voyait avec sa fille
dans le dernier bas-fond, et ses manières en avaient reçu depuis peu
cette humilité, ce respect pour ceux qui se trouvaient au-dessus de
lui et qu’il voyait d’en bas (eussent-ils été fort au-dessous de lui
jusque-là), cette tendance à chercher à remonter jusqu’à eux, qui est
une résultante presque mécanique de toutes les déchéances. Un jour que
nous marchions avec Swann dans une rue de Combray, M. Vinteuil qui
débouchait d’une autre, s’était trouvé trop brusquement en face de
nous pour avoir le temps de nous éviter; et Swann avec cette
orgueilleuse charité de l’homme du monde qui, au milieu de la
dissolution de tous ses préjugés moraux, ne trouve dans l’infamie
d’autrui qu’une raison d’exercer envers lui une bienveillance dont les
témoignages chatouillent d’autant plus l’amour-propre de celui qui les
donne, qu’il les sent plus précieux à celui qui les reçoit, avait
longuement causé avec M. Vinteuil, à qui, jusque-là il n’adressait pas
la parole, et lui avait demandé avant de nous quitter s’il n’enverrait
pas un jour sa fille jouer à Tansonville. C’était une invitation qui,
il y a deux ans, eût indigné M. Vinteuil, mais qui, maintenant, le
remplissait de sentiments si reconnaissants qu’il se croyait obligé
par eux, à ne pas avoir l’indiscrétion de l’accepter. L’amabilité de
Swann envers sa fille lui semblait être en soi-même un appui si
honorable et si délicieux qu’il pensait qu’il valait peut-être mieux
ne pas s’en servir, pour avoir la douceur toute platonique de le
conserver."
 :tokens 662
 :processed-at "2025-03-16T02:18:14.125852"
 :entities (list
  (entity :text "Pour" :label "ORG" :start 0 :end 4) (entity :text "Vinteuil" :label "ORG" :start 50 :end 58) (entity :text "Mais" :label "ORG" :start 1041 :end 1045) (entity :text "Vinteuil" :label "ORG" :start 1069 :end 1077) (entity :text "Mais" :label "ORG" :start 1512 :end 1516) (entity :text "Vinteuil" :label "ORG" :start 1530 :end 1538) (entity :text "Dieu" :label "ORG" :start 1987 :end 1991) (entity :text "Mais" :label "ORG" :start 2021 :end 2025) (entity :text "Vinteuil" :label "ORG" :start 2035 :end 2043) (entity :text "Combray" :label "ORG" :start 2321 :end 2328) (entity :text "Swann" :label "ORG" :start 2756 :end 2761) (entity :text "Combray," :label "ORG" :start 2778 :end 2786) (entity :text "Vinteuil" :label "ORG" :start 2790 :end 2798) (entity :text "Swann" :label "ORG" :start 2914 :end 2919) (entity :text "Vinteuil," :label "ORG" :start 3292 :end 3301) (entity :text "Tansonville." :label "ORG" :start 3438 :end 3450) (entity :text "Vinteuil," :label "ORG" :start 3511 :end 3520) (entity :text "Swann" :label "ORG" :start 3683 :end 3688)
 )
 :sentences (list
  (sentence :text "Pour ceux qui comme nous virent à cette époque M" :start 0 :end 48) (sentence :text "Vinteuil éviter les
personnes qu’il connaissait, se détourner quand il les apercevait,
vieillir en quelques mois, s’absorber dans son chagrin, devenir
incapable de tout effort qui n’avait pas directement le bonheur de sa
fille pour but, passer des journées entières devant la tombe de sa
femme,--il eût été difficile de ne pas comprendre qu’il était en train
de mourir de chagrin, et de supposer qu’il ne se rendait pas compte
des propos qui couraient" :start 49 :end 501) (sentence :text "Il les connaissait, peut-être même y
ajoutait-il foi" :start 502 :end 555) (sentence :text "Il n’est peut-être pas une personne, si grande que
soit sa vertu, que la complexité des circonstances ne puisse amener à
vivre un jour dans la familiarité du vice qu’elle condamne le plus
formellement,--sans qu’elle le reconnaisse d’ailleurs tout à fait sous
le déguisement de faits particuliers qu’il revêt pour entrer en
contact avec elle et la faire souffrir: paroles bizarres, attitude
inexplicable, un certain soir, de tel être qu’elle a par ailleurs tant
de raisons pour aimer" :start 556 :end 1039) (sentence :text "Mais pour un homme comme M" :start 1040 :end 1067) (sentence :text "Vinteuil il devait
entrer bien plus de souffrance que pour un autre dans la résignation à
une de ces situations qu’on croit à tort être l’apanage exclusif du
monde de la bohème: elles se produisent chaque fois qu’a besoin de se
réserver la place et la sécurité qui lui sont nécessaires, un vice que
la nature elle-même fait épanouir chez un enfant, parfois rien qu’en
mêlant les vertus de son père et de sa mère, comme la couleur de ses
yeux" :start 1068 :end 1510) (sentence :text "Mais de ce que M" :start 1511 :end 1528) (sentence :text "Vinteuil connaissait peut-être la conduite de
sa fille, il ne s’ensuit pas que son culte pour elle en eût été
diminué" :start 1529 :end 1647) (sentence :text "Les faits ne pénètrent pas dans le monde où vivent nos
croyances, ils n’ont pas fait naître celles-ci, ils ne les détruisent
pas; ils peuvent leur infliger les plus constants démentis sans les
affaiblir, et une avalanche de malheurs ou de maladies se succédant
sans interruption dans une famille, ne la fera pas douter de la bonté
de son Dieu ou du talent de son médecin" :start 1648 :end 2019) (sentence :text "Mais quand M" :start 2020 :end 2033) (sentence :text "Vinteuil
songeait à sa fille et à lui-même du point de vue du monde, du point
de vue de leur réputation, quand il cherchait à se situer avec elle au
rang qu’ils occupaient dans l’estime générale, alors ce jugement
d’ordre social, il le portait exactement comme l’eût fait l’habitant
de Combray qui lui eût été le plus hostile, il se voyait avec sa fille
dans le dernier bas-fond, et ses manières en avaient reçu depuis peu
cette humilité, ce respect pour ceux qui se trouvaient au-dessus de
lui et qu’il voyait d’en bas (eussent-ils été fort au-dessous de lui
jusque-là), cette tendance à chercher à remonter jusqu’à eux, qui est
une résultante presque mécanique de toutes les déchéances" :start 2034 :end 2722) (sentence :text "Un jour que
nous marchions avec Swann dans une rue de Combray, M" :start 2723 :end 2788) (sentence :text "Vinteuil qui
débouchait d’une autre, s’était trouvé trop brusquement en face de
nous pour avoir le temps de nous éviter; et Swann avec cette
orgueilleuse charité de l’homme du monde qui, au milieu de la
dissolution de tous ses préjugés moraux, ne trouve dans l’infamie
d’autrui qu’une raison d’exercer envers lui une bienveillance dont les
témoignages chatouillent d’autant plus l’amour-propre de celui qui les
donne, qu’il les sent plus précieux à celui qui les reçoit, avait
longuement causé avec M" :start 2789 :end 3290) (sentence :text "Vinteuil, à qui, jusque-là il n’adressait pas
la parole, et lui avait demandé avant de nous quitter s’il n’enverrait
pas un jour sa fille jouer à Tansonville" :start 3291 :end 3449) (sentence :text "C’était une invitation qui,
il y a deux ans, eût indigné M" :start 3450 :end 3509) (sentence :text "Vinteuil, mais qui, maintenant, le
remplissait de sentiments si reconnaissants qu’il se croyait obligé
par eux, à ne pas avoir l’indiscrétion de l’accepter" :start 3510 :end 3666) (sentence :text "L’amabilité de
Swann envers sa fille lui semblait être en soi-même un appui si
honorable et si délicieux qu’il pensait qu’il valait peut-être mieux
ne pas s’en servir, pour avoir la douceur toute platonique de le
conserver" :start 3667 :end 3890)
 ))