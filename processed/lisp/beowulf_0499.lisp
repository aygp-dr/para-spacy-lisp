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
 :text "--Je le connais un peu, nous avons des amis communs (il n’osa pas dire
que c’était le prince de Galles), du reste il invite très facilement
et je vous assure que ces déjeuners n’ont rien d’amusant, ils sont
d’ailleurs très simples, on n’est jamais plus de huit à table,
répondit Swann qui tâchait d’effacer ce que semblaient avoir de trop
éclatant aux yeux de son interlocuteur, des relations avec le
Président de la République."
 :tokens 74
 :processed-at "2025-03-16T02:18:14.318970"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Galles)," :label "ORG" :start 96 :end 104) (entity :text "Swann" :label "ORG" :start 279 :end 284) (entity :text "Président" :label "ORG" :start 401 :end 410) (entity :text "République." :label "ORG" :start 417 :end 428)
 )
 :sentences (list
  (sentence :text "--Je le connais un peu, nous avons des amis communs (il n’osa pas dire
que c’était le prince de Galles), du reste il invite très facilement
et je vous assure que ces déjeuners n’ont rien d’amusant, ils sont
d’ailleurs très simples, on n’est jamais plus de huit à table,
répondit Swann qui tâchait d’effacer ce que semblaient avoir de trop
éclatant aux yeux de son interlocuteur, des relations avec le
Président de la République" :start 0 :end 427)
 ))