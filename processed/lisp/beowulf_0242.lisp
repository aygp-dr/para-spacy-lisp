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
 :text "--«Ah! mais, madame Octave, je ne sais pas si je dois, vous savez bien
que ce n’est pas pour cela que je viens!» disait Eulalie avec la même
hésitation et le même embarras, chaque fois, que si c’était la
première, et avec une apparence de mécontentement qui égayait ma tante
mais ne lui déplaisait pas, car si un jour Eulalie, en prenant la
pièce, avait un air un peu moins contrarié que de coutume, ma tante
disait:"
 :tokens 77
 :processed-at "2025-03-16T02:18:14.037407"
 :entities (list
  (entity :text "--«Ah!" :label "ORG" :start 0 :end 6) (entity :text "Octave," :label "ORG" :start 20 :end 27) (entity :text "Eulalie" :label "ORG" :start 120 :end 127) (entity :text "Eulalie," :label "ORG" :start 318 :end 326)
 )
 :sentences (list
  (sentence :text "--«Ah! mais, madame Octave, je ne sais pas si je dois, vous savez bien
que ce n’est pas pour cela que je viens!» disait Eulalie avec la même
hésitation et le même embarras, chaque fois, que si c’était la
première, et avec une apparence de mécontentement qui égayait ma tante
mais ne lui déplaisait pas, car si un jour Eulalie, en prenant la
pièce, avait un air un peu moins contrarié que de coutume, ma tante
disait:" :start 0 :end 416)
 ))