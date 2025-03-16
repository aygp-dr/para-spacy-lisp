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
 :text "Devant nous, une allée bordée de capucines montait en plein soleil
vers le château. A droite, au contraire, le parc s’étendait en terrain
plat. Obscurcie par l’ombre des grands arbres qui l’entouraient, une
pièce d’eau avait été creusée par les parents de Swann; mais dans ses
créations les plus factices, c’est sur la nature que l’homme
travaille; certains lieux font toujours régner autour d’eux leur
empire particulier, arborent leurs insignes immémoriaux au milieu d’un
parc comme ils auraient fait loin de toute intervention humaine, dans
une solitude qui revient partout les entourer, surgie des nécessités
de leur exposition et superposée à l’œuvre humaine. C’est ainsi qu’au
pied de l’allée qui dominait l’étang artificiel, s’était composée sur
deux rangs, tressés de fleurs de myosotis et de pervenches, la
couronne naturelle, délicate et bleue qui ceint le front clair-obscur
des eaux, et que le glaïeul, laissant fléchir ses glaives avec un
abandon royal, étendait sur l’eupatoire et la grenouillette au pied
mouillé, les fleurs de lis en lambeaux, violettes et jaunes, de son
sceptre lacustre."
 :tokens 173
 :processed-at "2025-03-16T02:18:14.105162"
 :entities (list
  (entity :text "Devant" :label "ORG" :start 0 :end 6) (entity :text "Obscurcie" :label "ORG" :start 144 :end 153) (entity :text "Swann;" :label "ORG" :start 256 :end 262)
 )
 :sentences (list
  (sentence :text "Devant nous, une allée bordée de capucines montait en plein soleil
vers le château" :start 0 :end 82) (sentence :text "A droite, au contraire, le parc s’étendait en terrain
plat" :start 83 :end 142) (sentence :text "Obscurcie par l’ombre des grands arbres qui l’entouraient, une
pièce d’eau avait été creusée par les parents de Swann; mais dans ses
créations les plus factices, c’est sur la nature que l’homme
travaille; certains lieux font toujours régner autour d’eux leur
empire particulier, arborent leurs insignes immémoriaux au milieu d’un
parc comme ils auraient fait loin de toute intervention humaine, dans
une solitude qui revient partout les entourer, surgie des nécessités
de leur exposition et superposée à l’œuvre humaine" :start 143 :end 663) (sentence :text "C’est ainsi qu’au
pied de l’allée qui dominait l’étang artificiel, s’était composée sur
deux rangs, tressés de fleurs de myosotis et de pervenches, la
couronne naturelle, délicate et bleue qui ceint le front clair-obscur
des eaux, et que le glaïeul, laissant fléchir ses glaives avec un
abandon royal, étendait sur l’eupatoire et la grenouillette au pied
mouillé, les fleurs de lis en lambeaux, violettes et jaunes, de son
sceptre lacustre" :start 664 :end 1104)
 ))