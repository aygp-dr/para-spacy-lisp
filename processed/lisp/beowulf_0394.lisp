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
 :text "De même si un «fidèle» avait un ami, ou une «habituée» un flirt qui
serait capable de faire «lâcher» quelquefois, les Verdurin qui ne
s’effrayaient pas qu’une femme eût un amant pourvu qu’elle l’eût chez
eux, l’aimât en eux, et ne le leur préférât pas, disaient: «Eh bien!
amenez-le votre ami.» Et on l’engageait à l’essai, pour voir s’il
était capable de ne pas avoir de secrets pour Mme Verdurin, s’il était
susceptible d’être agrégé au «petit clan». S’il ne l’était pas on
prenait à part le fidèle qui l’avait présenté et on lui rendait le
service de le brouiller avec son ami ou avec sa maîtresse. Dans le cas
contraire, le «nouveau» devenait à son tour un fidèle. Aussi quand
cette année-là, la demi-mondaine raconta à M. Verdurin qu’elle avait
fait la connaissance d’un homme charmant, M. Swann, et insinua qu’il
serait très heureux d’être reçu chez eux, M. Verdurin transmit-il
séance tenante la requête à sa femme. (Il n’avait jamais d’avis
qu’après sa femme, dont son rôle particulier était de mettre à
exécution les désirs, ainsi que les désirs des fidèles, avec de
grandes ressources d’ingéniosité.)"
 :tokens 188
 :processed-at "2025-03-16T02:18:14.213055"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 118 :end 126) (entity :text "Verdurin," :label "ORG" :start 389 :end 398) (entity :text "Dans" :label "ORG" :start 602 :end 606) (entity :text "Verdurin" :label "ORG" :start 727 :end 735) (entity :text "Swann," :label "ORG" :start 795 :end 801) (entity :text "Verdurin" :label "ORG" :start 864 :end 872)
 )
 :sentences (list
  (sentence :text "De même si un «fidèle» avait un ami, ou une «habituée» un flirt qui
serait capable de faire «lâcher» quelquefois, les Verdurin qui ne
s’effrayaient pas qu’une femme eût un amant pourvu qu’elle l’eût chez
eux, l’aimât en eux, et ne le leur préférât pas, disaient: «Eh bien!
amenez-le votre ami" :start 0 :end 292) (sentence :text "» Et on l’engageait à l’essai, pour voir s’il
était capable de ne pas avoir de secrets pour Mme Verdurin, s’il était
susceptible d’être agrégé au «petit clan»" :start 293 :end 451) (sentence :text "S’il ne l’était pas on
prenait à part le fidèle qui l’avait présenté et on lui rendait le
service de le brouiller avec son ami ou avec sa maîtresse" :start 452 :end 600) (sentence :text "Dans le cas
contraire, le «nouveau» devenait à son tour un fidèle" :start 601 :end 667) (sentence :text "Aussi quand
cette année-là, la demi-mondaine raconta à M" :start 668 :end 725) (sentence :text "Verdurin qu’elle avait
fait la connaissance d’un homme charmant, M" :start 726 :end 793) (sentence :text "Swann, et insinua qu’il
serait très heureux d’être reçu chez eux, M" :start 794 :end 862) (sentence :text "Verdurin transmit-il
séance tenante la requête à sa femme" :start 863 :end 921) (sentence :text "(Il n’avait jamais d’avis
qu’après sa femme, dont son rôle particulier était de mettre à
exécution les désirs, ainsi que les désirs des fidèles, avec de
grandes ressources d’ingéniosité" :start 922 :end 1108) (sentence :text ")" :start 1109 :end 1110)
 ))