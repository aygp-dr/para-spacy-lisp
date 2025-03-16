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
 :text "Quand après la messe, on entrait dire à Théodore d’apporter une
brioche plus grosse que d’habitude parce que nos cousins avaient
profité du beau temps pour venir de Thiberzy déjeuner avec nous, on
avait devant soi le clocher qui, doré et cuit lui-même comme une plus
grande brioche bénie, avec des écailles et des égouttements gommeux de
soleil, piquait sa pointe aiguë dans le ciel bleu. Et le soir, quand
je rentrais de promenade et pensais au moment où il faudrait tout à
l’heure dire bonsoir à ma mère et ne plus la voir, il était au
contraire si doux, dans la journée finissante, qu’il avait l’air
d’être posé et enfoncé comme un coussin de velours brun sur le ciel
pâli qui avait cédé sous sa pression, s’était creusé légèrement pour
lui faire sa place et refluait sur ses bords; et les cris des oiseaux
qui tournaient autour de lui semblaient accroître son silence, élancer
encore sa flèche et lui donner quelque chose d’ineffable."
 :tokens 164
 :processed-at "2025-03-16T02:18:13.901769"
 :entities (list
  (entity :text "Quand" :label "ORG" :start 0 :end 5) (entity :text "Théodore" :label "ORG" :start 40 :end 48) (entity :text "Thiberzy" :label "ORG" :start 165 :end 173)
 )
 :sentences (list
  (sentence :text "Quand après la messe, on entrait dire à Théodore d’apporter une
brioche plus grosse que d’habitude parce que nos cousins avaient
profité du beau temps pour venir de Thiberzy déjeuner avec nous, on
avait devant soi le clocher qui, doré et cuit lui-même comme une plus
grande brioche bénie, avec des écailles et des égouttements gommeux de
soleil, piquait sa pointe aiguë dans le ciel bleu" :start 0 :end 387) (sentence :text "Et le soir, quand
je rentrais de promenade et pensais au moment où il faudrait tout à
l’heure dire bonsoir à ma mère et ne plus la voir, il était au
contraire si doux, dans la journée finissante, qu’il avait l’air
d’être posé et enfoncé comme un coussin de velours brun sur le ciel
pâli qui avait cédé sous sa pression, s’était creusé légèrement pour
lui faire sa place et refluait sur ses bords; et les cris des oiseaux
qui tournaient autour de lui semblaient accroître son silence, élancer
encore sa flèche et lui donner quelque chose d’ineffable" :start 388 :end 937)
 ))