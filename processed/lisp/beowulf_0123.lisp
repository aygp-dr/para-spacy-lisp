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
 :text "Une ou deux fois par mois, à Paris, on m’envoyait lui faire une
visite, comme il finissait de déjeuner, en simple vareuse, servi par
son domestique en veste de travail de coutil rayé violet et blanc. Il
se plaignait en ronchonnant que je n’étais pas venu depuis longtemps,
qu’on l’abandonnait; il m’offrait un massepain ou une mandarine, nous
traversions un salon dans lequel on ne s’arrêtait jamais, où on ne
faisait jamais de feu, dont les murs étaient ornés de moulures dorées,
les plafonds peints d’un bleu qui prétendait imiter le ciel et les
meubles capitonnés en satin comme chez mes grands-parents, mais jaune;
puis nous passions dans ce qu’il appelait son cabinet de «travail» aux
murs duquel étaient accrochées de ces gravures représentant sur fond
noir une déesse charnue et rose conduisant un char, montée sur un
globe, ou une étoile au front, qu’on aimait sous le second Empire
parce qu’on leur trouvait un air pompéien, puis qu’on détesta, et
qu’on recommence à aimer pour une seule et même raison, malgré les
autres qu’on donne et qui est qu’elles ont l’air second Empire. Et je
restais avec mon oncle jusqu’à ce que son valet de chambre vînt lui
demander, de la part du cocher, pour quelle heure celui-ci devait
atteler. Mon oncle se plongeait alors dans une méditation qu’aurait
craint de troubler d’un seul mouvement son valet de chambre
émerveillé, et dont il attendait avec curiosité le résultat, toujours
identique. Enfin, après une hésitation suprême, mon oncle prononçait
infailliblement ces mots: «Deux heures et quart», que le valet de
chambre répétait avec étonnement, mais sans discuter: «Deux heures et
quart? bien...je vais le dire...»"
 :tokens 275
 :processed-at "2025-03-16T02:18:13.917596"
 :entities (list
  (entity :text "Paris," :label "ORG" :start 29 :end 35) (entity :text "Empire" :label "ORG" :start 884 :end 890) (entity :text "Empire." :label "ORG" :start 1080 :end 1087) (entity :text "Enfin," :label "ORG" :start 1437 :end 1443) (entity :text "«Deux" :label "ORG" :start 1521 :end 1526) (entity :text "«Deux" :label "ORG" :start 1615 :end 1620)
 )
 :sentences (list
  (sentence :text "Une ou deux fois par mois, à Paris, on m’envoyait lui faire une
visite, comme il finissait de déjeuner, en simple vareuse, servi par
son domestique en veste de travail de coutil rayé violet et blanc" :start 0 :end 198) (sentence :text "Il
se plaignait en ronchonnant que je n’étais pas venu depuis longtemps,
qu’on l’abandonnait; il m’offrait un massepain ou une mandarine, nous
traversions un salon dans lequel on ne s’arrêtait jamais, où on ne
faisait jamais de feu, dont les murs étaient ornés de moulures dorées,
les plafonds peints d’un bleu qui prétendait imiter le ciel et les
meubles capitonnés en satin comme chez mes grands-parents, mais jaune;
puis nous passions dans ce qu’il appelait son cabinet de «travail» aux
murs duquel étaient accrochées de ces gravures représentant sur fond
noir une déesse charnue et rose conduisant un char, montée sur un
globe, ou une étoile au front, qu’on aimait sous le second Empire
parce qu’on leur trouvait un air pompéien, puis qu’on détesta, et
qu’on recommence à aimer pour une seule et même raison, malgré les
autres qu’on donne et qui est qu’elles ont l’air second Empire" :start 199 :end 1086) (sentence :text "Et je
restais avec mon oncle jusqu’à ce que son valet de chambre vînt lui
demander, de la part du cocher, pour quelle heure celui-ci devait
atteler" :start 1087 :end 1235) (sentence :text "Mon oncle se plongeait alors dans une méditation qu’aurait
craint de troubler d’un seul mouvement son valet de chambre
émerveillé, et dont il attendait avec curiosité le résultat, toujours
identique" :start 1236 :end 1435) (sentence :text "Enfin, après une hésitation suprême, mon oncle prononçait
infailliblement ces mots: «Deux heures et quart», que le valet de
chambre répétait avec étonnement, mais sans discuter: «Deux heures et
quart? bien" :start 1436 :end 1642) (sentence :text "je vais le dire" :start 1645 :end 1660) (sentence :text "»" :start 684 :end 685)
 ))