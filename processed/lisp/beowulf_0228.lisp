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
 :text "--Que quatre heures et demie? et j’ai été obligée de relever les petits
rideaux pour avoir un méchant rayon de jour. A quatre heures et demie!
Huit jours avant les Rogations! Ah! ma pauvre Françoise, il faut que
le bon Dieu soit bien en colère après nous. Aussi, le monde
d’aujourd’hui en fait trop! Comme disait mon pauvre Octave, on a trop
oublié le bon Dieu et il se venge."
 :tokens 70
 :processed-at "2025-03-16T02:18:14.022203"
 :entities (list
  (entity :text "--Que" :label "ORG" :start 0 :end 5) (entity :text "Huit" :label "ORG" :start 143 :end 147) (entity :text "Rogations!" :label "ORG" :start 164 :end 174) (entity :text "Françoise," :label "ORG" :start 189 :end 199) (entity :text "Dieu" :label "ORG" :start 219 :end 223) (entity :text "Comme" :label "ORG" :start 300 :end 305) (entity :text "Octave," :label "ORG" :start 324 :end 331) (entity :text "Dieu" :label "ORG" :start 356 :end 360)
 )
 :sentences (list
  (sentence :text "--Que quatre heures et demie? et j’ai été obligée de relever les petits
rideaux pour avoir un méchant rayon de jour" :start 0 :end 115) (sentence :text "A quatre heures et demie!
Huit jours avant les Rogations! Ah! ma pauvre Françoise, il faut que
le bon Dieu soit bien en colère après nous" :start 116 :end 254) (sentence :text "Aussi, le monde
d’aujourd’hui en fait trop! Comme disait mon pauvre Octave, on a trop
oublié le bon Dieu et il se venge" :start 255 :end 375)
 ))