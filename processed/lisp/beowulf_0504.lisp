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
 :text "Mais le prestige qu’avait à ses yeux le Président de la République
finit pourtant par triompher et de l’humilité de Swann et de la
malveillance de Mme Verdurin, et à chaque dîner, Cottard demandait
avec intérêt: «Verrons-nous ce soir M. Swann? Il a des relations
personnelles avec M. Grévy. C’est bien ce qu’on appelle un gentleman?»
Il alla même jusqu’à lui offrir une carte d’invitation pour
l’exposition dentaire."
 :tokens 68
 :processed-at "2025-03-16T02:18:14.323481"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Président" :label "ORG" :start 40 :end 49) (entity :text "République" :label "ORG" :start 56 :end 66) (entity :text "Swann" :label "ORG" :start 116 :end 121) (entity :text "Verdurin," :label "ORG" :start 151 :end 160) (entity :text "Cottard" :label "ORG" :start 180 :end 187) (entity :text "Swann?" :label "ORG" :start 237 :end 243) (entity :text "Grévy." :label "ORG" :start 284 :end 290)
 )
 :sentences (list
  (sentence :text "Mais le prestige qu’avait à ses yeux le Président de la République
finit pourtant par triompher et de l’humilité de Swann et de la
malveillance de Mme Verdurin, et à chaque dîner, Cottard demandait
avec intérêt: «Verrons-nous ce soir M" :start 0 :end 235) (sentence :text "Swann? Il a des relations
personnelles avec M" :start 236 :end 282) (sentence :text "Grévy" :start 283 :end 289) (sentence :text "C’est bien ce qu’on appelle un gentleman?»
Il alla même jusqu’à lui offrir une carte d’invitation pour
l’exposition dentaire" :start 290 :end 415)
 ))