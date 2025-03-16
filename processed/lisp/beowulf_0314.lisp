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
 :text "Cette année-là, quand, un peu plus tôt que d’habitude, mes parents
eurent fixé le jour de rentrer à Paris, le matin du départ, comme on
m’avait fait friser pour être photographié, coiffer avec précaution un
chapeau que je n’avais encore jamais mis et revêtir une douillette de
velours, après m’avoir cherché partout, ma mère me trouva en larmes
dans le petit raidillon, contigu à Tansonville, en train de dire adieu
aux aubépines, entourant de mes bras les branches piquantes, et, comme
une princesse de tragédie à qui pèseraient ces vains ornements, ingrat
envers l’importune main qui en formant tous ces nœuds avait pris soin
sur mon front d’assembler mes cheveux, foulant aux pieds mes
papillotes arrachées et mon chapeau neuf. Ma mère ne fut pas touchée
par mes larmes, mais elle ne put retenir un cri à la vue de la coiffe
défoncée et de la douillette perdue. Je ne l’entendis pas: «O mes
pauvres petites aubépines, disais-je en pleurant, ce n’est pas vous
qui voudriez me faire du chagrin, me forcer à partir. Vous, vous ne
m’avez jamais fait de peine! Aussi je vous aimerai toujours.» Et,
essuyant mes larmes, je leur promettais, quand je serais grand, de ne
pas imiter la vie insensée des autres hommes et, même à Paris, les
jours de printemps, au lieu d’aller faire des visites et écouter des
niaiseries, de partir dans la campagne voir les premières aubépines."
 :tokens 235
 :processed-at "2025-03-16T02:18:14.118415"
 :entities (list
  (entity :text "Cette" :label "ORG" :start 0 :end 5) (entity :text "Paris," :label "ORG" :start 100 :end 106) (entity :text "Tansonville," :label "ORG" :start 380 :end 392) (entity :text "Vous," :label "ORG" :start 1016 :end 1021) (entity :text "Paris," :label "ORG" :start 1222 :end 1228)
 )
 :sentences (list
  (sentence :text "Cette année-là, quand, un peu plus tôt que d’habitude, mes parents
eurent fixé le jour de rentrer à Paris, le matin du départ, comme on
m’avait fait friser pour être photographié, coiffer avec précaution un
chapeau que je n’avais encore jamais mis et revêtir une douillette de
velours, après m’avoir cherché partout, ma mère me trouva en larmes
dans le petit raidillon, contigu à Tansonville, en train de dire adieu
aux aubépines, entourant de mes bras les branches piquantes, et, comme
une princesse de tragédie à qui pèseraient ces vains ornements, ingrat
envers l’importune main qui en formant tous ces nœuds avait pris soin
sur mon front d’assembler mes cheveux, foulant aux pieds mes
papillotes arrachées et mon chapeau neuf" :start 0 :end 729) (sentence :text "Ma mère ne fut pas touchée
par mes larmes, mais elle ne put retenir un cri à la vue de la coiffe
défoncée et de la douillette perdue" :start 730 :end 863) (sentence :text "Je ne l’entendis pas: «O mes
pauvres petites aubépines, disais-je en pleurant, ce n’est pas vous
qui voudriez me faire du chagrin, me forcer à partir" :start 864 :end 1014) (sentence :text "Vous, vous ne
m’avez jamais fait de peine! Aussi je vous aimerai toujours" :start 1015 :end 1089) (sentence :text "» Et,
essuyant mes larmes, je leur promettais, quand je serais grand, de ne
pas imiter la vie insensée des autres hommes et, même à Paris, les
jours de printemps, au lieu d’aller faire des visites et écouter des
niaiseries, de partir dans la campagne voir les premières aubépines" :start 1090 :end 1369)
 ))