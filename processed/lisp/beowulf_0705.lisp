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
 :text "Sur le point de frapper contre les volets, il eut un moment de honte
en pensant qu’Odette allait savoir qu’il avait eu des soupçons, qu’il
était revenu, qu’il s’était posté dans la rue. Elle lui avait dit
souvent l’horreur qu’elle avait des jaloux, des amants qui espionnent.
Ce qu’il allait faire était bien maladroit, et elle allait le détester
désormais, tandis qu’en ce moment encore, tant qu’il n’avait pas
frappé, peut-être, même en le trompant, l’aimait-elle. Que de bonheurs
possibles dont on sacrifie ainsi la réalisation à l’impatience d’un
plaisir immédiat. Mais le désir de connaître la vérité était plus fort
et lui sembla plus noble. Il savait que la réalité de circonstances
qu’il eût donné sa vie pour restituer exactement, était lisible
derrière cette fenêtre striée de lumière, comme sous la couverture
enluminée d’or d’un de ces manuscrits précieux à la richesse
artistique elle-même desquels le savant qui les consulte ne peut
rester indifférent. Il éprouvait une volupté à connaître la vérité qui
le passionnait dans cet exemplaire unique, éphémère et précieux, d’une
matière translucide, si chaude et si belle. Et puis l’avantage qu’il
se sentait,--qu’il avait tant besoin de se sentir,--sur eux, était
peut-être moins de savoir, que de pouvoir leur montrer qu’il savait.
Il se haussa sur la pointe des pieds. Il frappa. On n’avait pas
entendu, il refrappa plus fort, la conversation s’arrêta. Une voix
d’homme dont il chercha à distinguer auquel de ceux des amis d’Odette
qu’il connaissait elle pouvait appartenir, demanda:"
 :tokens 247
 :processed-at "2025-03-16T02:18:14.530070"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 186 :end 190) (entity :text "Mais" :label "ORG" :start 569 :end 573)
 )
 :sentences (list
  (sentence :text "Sur le point de frapper contre les volets, il eut un moment de honte
en pensant qu’Odette allait savoir qu’il avait eu des soupçons, qu’il
était revenu, qu’il s’était posté dans la rue" :start 0 :end 184) (sentence :text "Elle lui avait dit
souvent l’horreur qu’elle avait des jaloux, des amants qui espionnent" :start 185 :end 274) (sentence :text "Ce qu’il allait faire était bien maladroit, et elle allait le détester
désormais, tandis qu’en ce moment encore, tant qu’il n’avait pas
frappé, peut-être, même en le trompant, l’aimait-elle" :start 275 :end 465) (sentence :text "Que de bonheurs
possibles dont on sacrifie ainsi la réalisation à l’impatience d’un
plaisir immédiat" :start 466 :end 567) (sentence :text "Mais le désir de connaître la vérité était plus fort
et lui sembla plus noble" :start 568 :end 646) (sentence :text "Il savait que la réalité de circonstances
qu’il eût donné sa vie pour restituer exactement, était lisible
derrière cette fenêtre striée de lumière, comme sous la couverture
enluminée d’or d’un de ces manuscrits précieux à la richesse
artistique elle-même desquels le savant qui les consulte ne peut
rester indifférent" :start 647 :end 965) (sentence :text "Il éprouvait une volupté à connaître la vérité qui
le passionnait dans cet exemplaire unique, éphémère et précieux, d’une
matière translucide, si chaude et si belle" :start 966 :end 1131) (sentence :text "Et puis l’avantage qu’il
se sentait,--qu’il avait tant besoin de se sentir,--sur eux, était
peut-être moins de savoir, que de pouvoir leur montrer qu’il savait" :start 1132 :end 1292) (sentence :text "Il se haussa sur la pointe des pieds" :start 1293 :end 1330) (sentence :text "Il frappa" :start 1331 :end 1341) (sentence :text "On n’avait pas
entendu, il refrappa plus fort, la conversation s’arrêta" :start 1342 :end 1414) (sentence :text "Une voix
d’homme dont il chercha à distinguer auquel de ceux des amis d’Odette
qu’il connaissait elle pouvait appartenir, demanda:" :start 1415 :end 1546)
 ))