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
 :text "Ces paroles nouvelles, mon amour les entendait; elles le persuadaient
que le lendemain ne serait pas différent de ce qu’avaient été tous les
autres jours; que le sentiment de Gilberte pour moi, trop ancien déjà
pour pouvoir changer, c’était l’indifférence; que dans mon amitié avec
Gilberte, c’est moi seul qui aimais. «C’est vrai, répondait mon amour,
il n’y a plus rien à faire de cette amitié-là, elle ne changera pas.»
Alors dès le lendemain (ou attendant une fête s’il y en avait une
prochaine, un anniversaire, le nouvel an peut-être, un de ces jours
qui ne sont pas pareils aux autres, où le temps recommence sur de
nouveaux frais en rejetant l’héritage du passé, en n’acceptant pas le
legs de ses tristesses) je demandais à Gilberte de renoncer à notre
amitié ancienne et de jeter les bases d’une nouvelle amitié."
 :tokens 140
 :processed-at "2025-03-16T02:18:14.872839"
 :entities (list
  (entity :text "Gilberte" :label "ORG" :start 175 :end 183) (entity :text "Gilberte," :label "ORG" :start 282 :end 291) (entity :text "Gilberte" :label "ORG" :start 732 :end 740)
 )
 :sentences (list
  (sentence :text "Ces paroles nouvelles, mon amour les entendait; elles le persuadaient
que le lendemain ne serait pas différent de ce qu’avaient été tous les
autres jours; que le sentiment de Gilberte pour moi, trop ancien déjà
pour pouvoir changer, c’était l’indifférence; que dans mon amitié avec
Gilberte, c’est moi seul qui aimais" :start 0 :end 317) (sentence :text "«C’est vrai, répondait mon amour,
il n’y a plus rien à faire de cette amitié-là, elle ne changera pas" :start 318 :end 420) (sentence :text "»
Alors dès le lendemain (ou attendant une fête s’il y en avait une
prochaine, un anniversaire, le nouvel an peut-être, un de ces jours
qui ne sont pas pareils aux autres, où le temps recommence sur de
nouveaux frais en rejetant l’héritage du passé, en n’acceptant pas le
legs de ses tristesses) je demandais à Gilberte de renoncer à notre
amitié ancienne et de jeter les bases d’une nouvelle amitié" :start 421 :end 820)
 ))