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
 :text "Enfin, en continuant à suivre du dedans au dehors les états
simultanément juxtaposés dans ma conscience, et avant d’arriver
jusqu’à l’horizon réel qui les enveloppait, je trouve des plaisirs
d’un autre genre, celui d’être bien assis, de sentir la bonne odeur de
l’air, de ne pas être dérangé par une visite; et, quand une heure
sonnait au clocher de Saint-Hilaire, de voir tomber morceau par
morceau ce qui de l’après-midi était déjà consommé, jusqu’à ce que
j’entendisse le dernier coup qui me permettait de faire le total et
après lequel, le long silence qui le suivait, semblait faire
commencer, dans le ciel bleu, toute la partie qui m’était encore
concédée pour lire jusqu’au bon dîner qu’apprêtait Françoise et qui me
réconforterait des fatigues prises, pendant la lecture du livre, à la
suite de son héros. Et à chaque heure il me semblait que c’était
quelques instants seulement auparavant que la précédente avait sonné;
la plus récente venait s’inscrire tout près de l’autre dans le ciel et
je ne pouvais croire que soixante minutes eussent tenu dans ce petit
arc bleu qui était compris entre leurs deux marques d’or. Quelquefois
même cette heure prématurée sonnait deux coups de plus que la
dernière; il y en avait donc une que je n’avais pas entendue, quelque
chose qui avait eu lieu n’avait pas eu lieu pour moi; l’intérêt de la
lecture, magique comme un profond sommeil, avait donné le change à mes
oreilles hallucinées et effacé la cloche d’or sur la surface azurée du
silence. Beaux après-midi du dimanche sous le marronnier du jardin de
Combray, soigneusement vidés par moi des incidents médiocres de mon
existence personnelle que j’y avais remplacés par une vie d’aventures
et d’aspirations étranges au sein d’un pays arrosé d’eaux vives, vous
m’évoquez encore cette vie quand je pense à vous et vous la contenez
en effet pour l’avoir peu à peu contournée et enclose--tandis que je
progressais dans ma lecture et que tombait la chaleur du jour--dans le
cristal successif, lentement changeant et traversé de feuillages, de
vos heures silencieuses, sonores, odorantes et limpides."
 :tokens 346
 :processed-at "2025-03-16T02:18:13.952400"
 :entities (list
  (entity :text "Enfin," :label "ORG" :start 0 :end 6) (entity :text "Saint-Hilaire," :label "ORG" :start 350 :end 364) (entity :text "Françoise" :label "ORG" :start 704 :end 713) (entity :text "Quelquefois" :label "ORG" :start 1127 :end 1138) (entity :text "Beaux" :label "ORG" :start 1492 :end 1497) (entity :text "Combray," :label "ORG" :start 1553 :end 1561)
 )
 :sentences (list
  (sentence :text "Enfin, en continuant à suivre du dedans au dehors les états
simultanément juxtaposés dans ma conscience, et avant d’arriver
jusqu’à l’horizon réel qui les enveloppait, je trouve des plaisirs
d’un autre genre, celui d’être bien assis, de sentir la bonne odeur de
l’air, de ne pas être dérangé par une visite; et, quand une heure
sonnait au clocher de Saint-Hilaire, de voir tomber morceau par
morceau ce qui de l’après-midi était déjà consommé, jusqu’à ce que
j’entendisse le dernier coup qui me permettait de faire le total et
après lequel, le long silence qui le suivait, semblait faire
commencer, dans le ciel bleu, toute la partie qui m’était encore
concédée pour lire jusqu’au bon dîner qu’apprêtait Françoise et qui me
réconforterait des fatigues prises, pendant la lecture du livre, à la
suite de son héros" :start 0 :end 812) (sentence :text "Et à chaque heure il me semblait que c’était
quelques instants seulement auparavant que la précédente avait sonné;
la plus récente venait s’inscrire tout près de l’autre dans le ciel et
je ne pouvais croire que soixante minutes eussent tenu dans ce petit
arc bleu qui était compris entre leurs deux marques d’or" :start 813 :end 1125) (sentence :text "Quelquefois
même cette heure prématurée sonnait deux coups de plus que la
dernière; il y en avait donc une que je n’avais pas entendue, quelque
chose qui avait eu lieu n’avait pas eu lieu pour moi; l’intérêt de la
lecture, magique comme un profond sommeil, avait donné le change à mes
oreilles hallucinées et effacé la cloche d’or sur la surface azurée du
silence" :start 1126 :end 1490) (sentence :text "Beaux après-midi du dimanche sous le marronnier du jardin de
Combray, soigneusement vidés par moi des incidents médiocres de mon
existence personnelle que j’y avais remplacés par une vie d’aventures
et d’aspirations étranges au sein d’un pays arrosé d’eaux vives, vous
m’évoquez encore cette vie quand je pense à vous et vous la contenez
en effet pour l’avoir peu à peu contournée et enclose--tandis que je
progressais dans ma lecture et que tombait la chaleur du jour--dans le
cristal successif, lentement changeant et traversé de feuillages, de
vos heures silencieuses, sonores, odorantes et limpides" :start 1491 :end 2094)
 ))