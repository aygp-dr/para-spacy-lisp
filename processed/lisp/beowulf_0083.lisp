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
 :text "--«Mais, madame Octave, ce n’est pas encore l’heure de la pepsine,
disait Françoise. Est-ce que vous vous êtes senti une faiblesse?»"
 :tokens 21
 :processed-at "2025-03-16T02:18:13.872733"
 :entities (list
  (entity :text "--«Mais," :label "ORG" :start 0 :end 8) (entity :text "Octave," :label "ORG" :start 16 :end 23) (entity :text "Françoise." :label "ORG" :start 74 :end 84)
 )
 :sentences (list
  (sentence :text "--«Mais, madame Octave, ce n’est pas encore l’heure de la pepsine,
disait Françoise" :start 0 :end 83) (sentence :text "Est-ce que vous vous êtes senti une faiblesse?»" :start 84 :end 132)
 ))