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
 :text "--Il s’est senti un peu dépaysé, cet homme, répondit Mme Verdurin, tu
ne voudrais pourtant pas que, la première fois, il ait déjà le ton de
la maison comme Cottard qui fait partie de notre petit clan depuis
plusieurs années. La première fois ne compte pas, c’était utile pour
prendre langue. Odette, il est convenu qu’il viendra nous retrouver
demain au Châtelet. Si vous alliez le prendre?"
 :tokens 67
 :processed-at "2025-03-16T02:18:14.307122"
 :entities (list
  (entity :text "--Il" :label "ORG" :start 0 :end 4) (entity :text "Verdurin," :label "ORG" :start 57 :end 66) (entity :text "Cottard" :label "ORG" :start 156 :end 163) (entity :text "Odette," :label "ORG" :start 292 :end 299) (entity :text "Châtelet." :label "ORG" :start 354 :end 363)
 )
 :sentences (list
  (sentence :text "--Il s’est senti un peu dépaysé, cet homme, répondit Mme Verdurin, tu
ne voudrais pourtant pas que, la première fois, il ait déjà le ton de
la maison comme Cottard qui fait partie de notre petit clan depuis
plusieurs années" :start 0 :end 223) (sentence :text "La première fois ne compte pas, c’était utile pour
prendre langue" :start 224 :end 290) (sentence :text "Odette, il est convenu qu’il viendra nous retrouver
demain au Châtelet" :start 291 :end 362) (sentence :text "Si vous alliez le prendre?" :start 363 :end 390)
 ))