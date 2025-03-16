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
 :text "Ce n’était vraiment pas de chance qu’elle lui défendît le seul endroit
qui le tentait aujourd’hui. Aujourd’hui! S’il y allait, malgré son
interdiction, il pourrait la voir aujourd’hui même! Mais, alors que,
si elle eût retrouvé à Pierrefonds quelque indifférent, elle lui eût
dit joyeusement: «Tiens, vous ici!», et lui aurait demandé d’aller la
voir à l’hôtel où elle était descendue avec les Verdurin, au contraire
si elle l’y rencontrait, lui, Swann, elle serait froissée, elle se
dirait qu’elle était suivie, elle l’aimerait moins, peut-être se
détournerait-elle avec colère en l’apercevant. «Alors, je n’ai plus le
droit de voyager!», lui dirait-elle au retour, tandis qu’en somme
c’était lui qui n’avait plus le droit de voyager!"
 :tokens 115
 :processed-at "2025-03-16T02:18:14.587851"
 :entities (list
  (entity :text "Mais," :label "ORG" :start 190 :end 195) (entity :text "Pierrefonds" :label "ORG" :start 230 :end 241) (entity :text "«Tiens," :label "ORG" :start 293 :end 300) (entity :text "Verdurin," :label "ORG" :start 394 :end 403) (entity :text "Swann," :label "ORG" :start 447 :end 453) (entity :text "«Alors," :label "ORG" :start 596 :end 603)
 )
 :sentences (list
  (sentence :text "Ce n’était vraiment pas de chance qu’elle lui défendît le seul endroit
qui le tentait aujourd’hui" :start 0 :end 97) (sentence :text "Aujourd’hui! S’il y allait, malgré son
interdiction, il pourrait la voir aujourd’hui même! Mais, alors que,
si elle eût retrouvé à Pierrefonds quelque indifférent, elle lui eût
dit joyeusement: «Tiens, vous ici!», et lui aurait demandé d’aller la
voir à l’hôtel où elle était descendue avec les Verdurin, au contraire
si elle l’y rencontrait, lui, Swann, elle serait froissée, elle se
dirait qu’elle était suivie, elle l’aimerait moins, peut-être se
détournerait-elle avec colère en l’apercevant" :start 98 :end 594) (sentence :text "«Alors, je n’ai plus le
droit de voyager!», lui dirait-elle au retour, tandis qu’en somme
c’était lui qui n’avait plus le droit de voyager!" :start 595 :end 735)
 ))