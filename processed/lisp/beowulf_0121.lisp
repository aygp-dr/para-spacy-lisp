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
 :text "Enfin ma mère me disait: «Voyons, ne reste pas ici indéfiniment, monte
dans ta chambre si tu as trop chaud dehors, mais va d’abord prendre
l’air un instant pour ne pas lier en sortant de table.» J’allais
m’asseoir près de la pompe et de son auge, souvent ornée, comme un
fond gothique, d’une salamandre, qui sculptait sur la pierre fruste le
relief mobile de son corps allégorique et fuselé, sur le banc sans
dossier ombragé d’un lilas, dans ce petit coin du jardin qui s’ouvrait
par une porte de service sur la rue du Saint-Esprit et de la terre peu
soignée duquel s’élevait par deux degrés, en saillie de la maison, et
comme une construction indépendante, l’arrière-cuisine. On apercevait
son dallage rouge et luisant comme du porphyre. Elle avait moins l’air
de l’antre de Françoise que d’un petit temple à Vénus. Elle regorgeait
des offrandes du crémier, du fruitier, de la marchande de légumes,
venus parfois de hameaux assez lointains pour lui dédier les prémices
de leurs champs. Et son faîte était toujours couronné du roucoulement
d’une colombe."
 :tokens 178
 :processed-at "2025-03-16T02:18:13.915487"
 :entities (list
  (entity :text "Enfin" :label "ORG" :start 0 :end 5) (entity :text "«Voyons," :label "ORG" :start 25 :end 33) (entity :text "Saint-Esprit" :label "ORG" :start 519 :end 531) (entity :text "Elle" :label "ORG" :start 739 :end 743) (entity :text "Françoise" :label "ORG" :start 776 :end 785) (entity :text "Vénus." :label "ORG" :start 810 :end 816) (entity :text "Elle" :label "ORG" :start 817 :end 821)
 )
 :sentences (list
  (sentence :text "Enfin ma mère me disait: «Voyons, ne reste pas ici indéfiniment, monte
dans ta chambre si tu as trop chaud dehors, mais va d’abord prendre
l’air un instant pour ne pas lier en sortant de table" :start 0 :end 192) (sentence :text "» J’allais
m’asseoir près de la pompe et de son auge, souvent ornée, comme un
fond gothique, d’une salamandre, qui sculptait sur la pierre fruste le
relief mobile de son corps allégorique et fuselé, sur le banc sans
dossier ombragé d’un lilas, dans ce petit coin du jardin qui s’ouvrait
par une porte de service sur la rue du Saint-Esprit et de la terre peu
soignée duquel s’élevait par deux degrés, en saillie de la maison, et
comme une construction indépendante, l’arrière-cuisine" :start 193 :end 675) (sentence :text "On apercevait
son dallage rouge et luisant comme du porphyre" :start 676 :end 737) (sentence :text "Elle avait moins l’air
de l’antre de Françoise que d’un petit temple à Vénus" :start 738 :end 815) (sentence :text "Elle regorgeait
des offrandes du crémier, du fruitier, de la marchande de légumes,
venus parfois de hameaux assez lointains pour lui dédier les prémices
de leurs champs" :start 816 :end 985) (sentence :text "Et son faîte était toujours couronné du roucoulement
d’une colombe" :start 986 :end 1053)
 ))