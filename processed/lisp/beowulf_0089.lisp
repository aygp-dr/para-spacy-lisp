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
 :text "--«Dès l’instant que Mme Goupil a de la visite, madame Octave, vous
n’allez pas tarder à voir tout son monde rentrer pour le déjeuner, car
il commence à ne plus être de bonne heure», disait Françoise qui,
pressé de redescendre s’occuper du déjeuner, n’était pas fâchée de
laisser à ma tante cette distraction en perspective."
 :tokens 55
 :processed-at "2025-03-16T02:18:13.877837"
 :entities (list
  (entity :text "--«Dès" :label "ORG" :start 0 :end 6) (entity :text "Goupil" :label "ORG" :start 25 :end 31) (entity :text "Octave," :label "ORG" :start 55 :end 62) (entity :text "Françoise" :label "ORG" :start 190 :end 199)
 )
 :sentences (list
  (sentence :text "--«Dès l’instant que Mme Goupil a de la visite, madame Octave, vous
n’allez pas tarder à voir tout son monde rentrer pour le déjeuner, car
il commence à ne plus être de bonne heure», disait Françoise qui,
pressé de redescendre s’occuper du déjeuner, n’était pas fâchée de
laisser à ma tante cette distraction en perspective" :start 0 :end 323)
 ))