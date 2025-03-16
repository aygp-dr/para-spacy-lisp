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
 :text "Françoise, en effet, qui était depuis des années a son service et ne
se doutait pas alors qu’elle entrerait un jour tout à fait au nôtre
délaissait un peu ma tante pendant les mois où nous étions là. Il y
avait eu dans mon enfance, avant que nous allions à Combray, quand ma
tante Léonie passait encore l’hiver à Paris chez sa mère, un temps où
je connaissais si peu Françoise que, le 1er janvier, avant d’entrer
chez ma grand’tante, ma mère me mettait dans la main une pièce de cinq
francs et me disait: «Surtout ne te trompe pas de personne. Attends
pour donner que tu m’entendes dire: «Bonjour Françoise»; en même temps
je te toucherai légèrement le bras. A peine arrivions-nous dans
l’obscure antichambre de ma tante que nous apercevions dans l’ombre,
sous les tuyaux d’un bonnet éblouissant, raide et fragile comme s’il
avait été de sucre filé, les remous concentriques d’un sourire de
reconnaissance anticipé. C’était Françoise, immobile et debout dans
l’encadrement de la petite porte du corridor comme une statue de
sainte dans sa niche. Quand on était un peu habitué à ces ténèbres de
chapelle, on distinguait sur son visage l’amour désintéressé de
l’humanité, le respect attendri pour les hautes classes qu’exaltait
dans les meilleures régions de son cœur l’espoir des étrennes. Maman
me pinçait le bras avec violence et disait d’une voix forte: «Bonjour
Françoise.» A ce signal mes doigts s’ouvraient et je lâchais la pièce
qui trouvait pour la recevoir une main confuse, mais tendue. Mais
depuis que nous allions à Combray je ne connaissais personne mieux que
Françoise; nous étions ses préférés, elle avait pour nous, au moins
pendant les premières années, avec autant de considération que pour ma
tante, un goût plus vif, parce que nous ajoutions, au prestige de
faire partie de la famille (elle avait pour les liens invisibles que
noue entre les membres d’une famille la circulation d’un même sang,
autant de respect qu’un tragique grec), le charme de n’être pas ses
maîtres habituels. Aussi, avec quelle joie elle nous recevait, nous
plaignant de n’avoir pas encore plus beau temps, le jour de notre
arrivée, la veille de Pâques, où souvent il faisait un vent glacial,
quand maman lui demandait des nouvelles de sa fille et de ses neveux,
si son petit-fils était gentil, ce qu’on comptait faire de lui, s’il
ressemblerait à sa grand’mère."
 :tokens 397
 :processed-at "2025-03-16T02:18:13.858874"
 :entities (list
  (entity :text "Françoise," :label "ORG" :start 0 :end 10) (entity :text "Combray," :label "ORG" :start 257 :end 265) (entity :text "Léonie" :label "ORG" :start 281 :end 287) (entity :text "Paris" :label "ORG" :start 313 :end 318) (entity :text "Françoise" :label "ORG" :start 367 :end 376) (entity :text "«Surtout" :label "ORG" :start 505 :end 513) (entity :text "«Bonjour" :label "ORG" :start 588 :end 596) (entity :text "Françoise»;" :label "ORG" :start 597 :end 608) (entity :text "Françoise," :label "ORG" :start 924 :end 934) (entity :text "Quand" :label "ORG" :start 1046 :end 1051) (entity :text "Maman" :label "ORG" :start 1289 :end 1294) (entity :text "«Bonjour" :label "ORG" :start 1356 :end 1364) (entity :text "Françoise.»" :label "ORG" :start 1365 :end 1376) (entity :text "Mais" :label "ORG" :start 1496 :end 1500) (entity :text "Combray" :label "ORG" :start 1527 :end 1534) (entity :text "Françoise;" :label "ORG" :start 1572 :end 1582) (entity :text "Pâques," :label "ORG" :start 2138 :end 2145)
 )
 :sentences (list
  (sentence :text "Françoise, en effet, qui était depuis des années a son service et ne
se doutait pas alors qu’elle entrerait un jour tout à fait au nôtre
délaissait un peu ma tante pendant les mois où nous étions là" :start 0 :end 198) (sentence :text "Il y
avait eu dans mon enfance, avant que nous allions à Combray, quand ma
tante Léonie passait encore l’hiver à Paris chez sa mère, un temps où
je connaissais si peu Françoise que, le 1er janvier, avant d’entrer
chez ma grand’tante, ma mère me mettait dans la main une pièce de cinq
francs et me disait: «Surtout ne te trompe pas de personne" :start 199 :end 542) (sentence :text "Attends
pour donner que tu m’entendes dire: «Bonjour Françoise»; en même temps
je te toucherai légèrement le bras" :start 543 :end 657) (sentence :text "A peine arrivions-nous dans
l’obscure antichambre de ma tante que nous apercevions dans l’ombre,
sous les tuyaux d’un bonnet éblouissant, raide et fragile comme s’il
avait été de sucre filé, les remous concentriques d’un sourire de
reconnaissance anticipé" :start 658 :end 914) (sentence :text "C’était Françoise, immobile et debout dans
l’encadrement de la petite porte du corridor comme une statue de
sainte dans sa niche" :start 915 :end 1044) (sentence :text "Quand on était un peu habitué à ces ténèbres de
chapelle, on distinguait sur son visage l’amour désintéressé de
l’humanité, le respect attendri pour les hautes classes qu’exaltait
dans les meilleures régions de son cœur l’espoir des étrennes" :start 1045 :end 1287) (sentence :text "Maman
me pinçait le bras avec violence et disait d’une voix forte: «Bonjour
Françoise" :start 1288 :end 1374) (sentence :text "» A ce signal mes doigts s’ouvraient et je lâchais la pièce
qui trouvait pour la recevoir une main confuse, mais tendue" :start 1375 :end 1494) (sentence :text "Mais
depuis que nous allions à Combray je ne connaissais personne mieux que
Françoise; nous étions ses préférés, elle avait pour nous, au moins
pendant les premières années, avec autant de considération que pour ma
tante, un goût plus vif, parce que nous ajoutions, au prestige de
faire partie de la famille (elle avait pour les liens invisibles que
noue entre les membres d’une famille la circulation d’un même sang,
autant de respect qu’un tragique grec), le charme de n’être pas ses
maîtres habituels" :start 1495 :end 1999) (sentence :text "Aussi, avec quelle joie elle nous recevait, nous
plaignant de n’avoir pas encore plus beau temps, le jour de notre
arrivée, la veille de Pâques, où souvent il faisait un vent glacial,
quand maman lui demandait des nouvelles de sa fille et de ses neveux,
si son petit-fils était gentil, ce qu’on comptait faire de lui, s’il
ressemblerait à sa grand’mère" :start 2000 :end 2353)
 ))