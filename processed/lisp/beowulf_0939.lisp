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
 :text "--Oh! je voulais seulement savoir si c’est depuis que je te connais.
Mais ce serait si naturel, est-ce que ça se passait ici; tu ne peux
pas me dire un certain soir, que je me représente ce que je faisais ce
soir-là; tu comprends bien qu’il n’est pas possible que tu ne te
rappelles pas avec qui, Odette, mon amour."
 :tokens 60
 :processed-at "2025-03-16T02:18:14.784502"
 :entities (list
  (entity :text "--Oh!" :label "ORG" :start 0 :end 5) (entity :text "Mais" :label "ORG" :start 69 :end 73) (entity :text "Odette," :label "ORG" :start 297 :end 304)
 )
 :sentences (list
  (sentence :text "--Oh! je voulais seulement savoir si c’est depuis que je te connais" :start 0 :end 67) (sentence :text "Mais ce serait si naturel, est-ce que ça se passait ici; tu ne peux
pas me dire un certain soir, que je me représente ce que je faisais ce
soir-là; tu comprends bien qu’il n’est pas possible que tu ne te
rappelles pas avec qui, Odette, mon amour" :start 68 :end 314)
 ))