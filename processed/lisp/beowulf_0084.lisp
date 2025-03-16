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
 :text "--«Mais non, Françoise, disait ma tante, c’est-à-dire si, vous savez
bien que maintenant les moments où je n’ai pas de faiblesse sont bien
rares; un jour je passerai comme Mme Rousseau sans avoir eu le temps
de me reconnaître; mais ce n’est pas pour cela que je sonne.
Croyez-vous pas que je viens de voir comme je vous vois Mme Goupil
avec une fillette que je ne connais point. Allez donc chercher deux
sous de sel chez Camus. C’est bien rare si Théodore ne peut pas vous
dire qui c’est.»"
 :tokens 90
 :processed-at "2025-03-16T02:18:13.873694"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Françoise," :label "ORG" :start 13 :end 23) (entity :text "Rousseau" :label "ORG" :start 176 :end 184) (entity :text "Goupil" :label "ORG" :start 329 :end 335) (entity :text "Camus." :label "ORG" :start 421 :end 427) (entity :text "Théodore" :label "ORG" :start 447 :end 455)
 )
 :sentences (list
  (sentence :text "--«Mais non, Françoise, disait ma tante, c’est-à-dire si, vous savez
bien que maintenant les moments où je n’ai pas de faiblesse sont bien
rares; un jour je passerai comme Mme Rousseau sans avoir eu le temps
de me reconnaître; mais ce n’est pas pour cela que je sonne" :start 0 :end 267) (sentence :text "Croyez-vous pas que je viens de voir comme je vous vois Mme Goupil
avec une fillette que je ne connais point" :start 268 :end 377) (sentence :text "Allez donc chercher deux
sous de sel chez Camus" :start 378 :end 426) (sentence :text "C’est bien rare si Théodore ne peut pas vous
dire qui c’est" :start 427 :end 487) (sentence :text "»" :start 488 :end 489)
 ))