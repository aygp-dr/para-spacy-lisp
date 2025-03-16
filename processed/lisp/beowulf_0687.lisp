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
 :text "Souvent elle avait des embarras d’argent et, pressée par une dette, le
priait de lui venir en aide. Il en était heureux comme de tout ce qui
pouvait donner à Odette une grande idée de l’amour qu’il avait pour
elle, ou simplement une grande idée de son influence, de l’utilité
dont il pouvait lui être. Sans doute si on lui avait dit au début:
«c’est ta situation qui lui plaît», et maintenant: «c’est pour ta
fortune qu’elle t’aime», il ne l’aurait pas cru, et n’aurait pas été
d’ailleurs très mécontent qu’on se la figurât tenant à lui,--qu’on les
sentît unis l’un à l’autre--par quelque chose d’aussi fort que le
snobisme ou l’argent. Mais, même s’il avait pensé que c’était vrai,
peut-être n’eût-il pas souffert de découvrir à l’amour d’Odette pour
lui cet état plus durable que l’agrément ou les qualités qu’elle
pouvait lui trouver: l’intérêt, l’intérêt qui empêcherait de venir
jamais le jour où elle aurait pu être tentée de cesser de le voir.
Pour l’instant, en la comblant de présents, en lui rendant des
services, il pouvait se reposer sur des avantages extérieurs à sa
personne, à son intelligence, du soin épuisant de lui plaire par
lui-même. Et cette volupté d’être amoureux, de ne vivre que d’amour,
de la réalité de laquelle il doutait parfois, le prix dont en somme il
la payait, en dilettante de sensations immatérielles, lui en
augmentait la valeur,--comme on voit des gens incertains si le
spectacle de la mer et le bruit de ses vagues sont délicieux, s’en
convaincre ainsi que de la rare qualité de leurs goûts désintéressés,
en louant cent francs par jour la chambre d’hôtel qui leur permet de
les goûter."
 :tokens 280
 :processed-at "2025-03-16T02:18:14.511714"
 :entities (list
  (entity :text "Souvent" :label "ORG" :start 0 :end 7) (entity :text "Odette" :label "ORG" :start 158 :end 164) (entity :text "Sans" :label "ORG" :start 302 :end 306) (entity :text "Mais," :label "ORG" :start 637 :end 642) (entity :text "Pour" :label "ORG" :start 951 :end 955)
 )
 :sentences (list
  (sentence :text "Souvent elle avait des embarras d’argent et, pressée par une dette, le
priait de lui venir en aide" :start 0 :end 98) (sentence :text "Il en était heureux comme de tout ce qui
pouvait donner à Odette une grande idée de l’amour qu’il avait pour
elle, ou simplement une grande idée de son influence, de l’utilité
dont il pouvait lui être" :start 99 :end 300) (sentence :text "Sans doute si on lui avait dit au début:
«c’est ta situation qui lui plaît», et maintenant: «c’est pour ta
fortune qu’elle t’aime», il ne l’aurait pas cru, et n’aurait pas été
d’ailleurs très mécontent qu’on se la figurât tenant à lui,--qu’on les
sentît unis l’un à l’autre--par quelque chose d’aussi fort que le
snobisme ou l’argent" :start 301 :end 635) (sentence :text "Mais, même s’il avait pensé que c’était vrai,
peut-être n’eût-il pas souffert de découvrir à l’amour d’Odette pour
lui cet état plus durable que l’agrément ou les qualités qu’elle
pouvait lui trouver: l’intérêt, l’intérêt qui empêcherait de venir
jamais le jour où elle aurait pu être tentée de cesser de le voir" :start 636 :end 949) (sentence :text "Pour l’instant, en la comblant de présents, en lui rendant des
services, il pouvait se reposer sur des avantages extérieurs à sa
personne, à son intelligence, du soin épuisant de lui plaire par
lui-même" :start 950 :end 1153) (sentence :text "Et cette volupté d’être amoureux, de ne vivre que d’amour,
de la réalité de laquelle il doutait parfois, le prix dont en somme il
la payait, en dilettante de sensations immatérielles, lui en
augmentait la valeur,--comme on voit des gens incertains si le
spectacle de la mer et le bruit de ses vagues sont délicieux, s’en
convaincre ainsi que de la rare qualité de leurs goûts désintéressés,
en louant cent francs par jour la chambre d’hôtel qui leur permet de
les goûter" :start 1154 :end 1625)
 ))