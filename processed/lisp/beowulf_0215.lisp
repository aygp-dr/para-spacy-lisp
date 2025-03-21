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
 :text "--«Tiens, disait ma tante en se frappant le front, cela me fait penser
que je n’ai point su si elle était arrivée à l’église après
l’élévation. Il faudra que je pense à le demander à Eulalie...
Françoise, regardez-moi ce nuage noir derrière le clocher et ce
mauvais soleil sur les ardoises, bien sûr que la journée ne se passera
pas sans pluie. Ce n’était pas possible que ça reste comme ça, il
faisait trop chaud. Et le plus tôt sera le mieux, car tant que l’orage
n’aura pas éclaté, mon eau de Vichy ne descendra pas, ajoutait ma
tante dans l’esprit de qui le désir de hâter la descente de l’eau de
Vichy l’emportait infiniment sur la crainte de voir Mme Goupil gâter
sa robe.»"
 :tokens 125
 :processed-at "2025-03-16T02:18:14.004920"
 :entities (list
  (entity :text "--«Tiens," :label "ORG" :start 0 :end 9) (entity :text "Eulalie..." :label "ORG" :start 183 :end 193) (entity :text "Françoise," :label "ORG" :start 194 :end 204) (entity :text "Vichy" :label "ORG" :start 496 :end 501) (entity :text "Vichy" :label "ORG" :start 601 :end 606) (entity :text "Goupil" :label "ORG" :start 657 :end 663)
 )
 :sentences (list
  (sentence :text "--«Tiens, disait ma tante en se frappant le front, cela me fait penser
que je n’ai point su si elle était arrivée à l’église après
l’élévation" :start 0 :end 142) (sentence :text "Il faudra que je pense à le demander à Eulalie" :start 143 :end 190) (sentence :text "Françoise, regardez-moi ce nuage noir derrière le clocher et ce
mauvais soleil sur les ardoises, bien sûr que la journée ne se passera
pas sans pluie" :start 193 :end 343) (sentence :text "Ce n’était pas possible que ça reste comme ça, il
faisait trop chaud" :start 344 :end 413) (sentence :text "Et le plus tôt sera le mieux, car tant que l’orage
n’aura pas éclaté, mon eau de Vichy ne descendra pas, ajoutait ma
tante dans l’esprit de qui le désir de hâter la descente de l’eau de
Vichy l’emportait infiniment sur la crainte de voir Mme Goupil gâter
sa robe" :start 414 :end 677) (sentence :text "»" :start 678 :end 679)
 ))