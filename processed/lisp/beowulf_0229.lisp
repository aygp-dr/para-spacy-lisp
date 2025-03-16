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
 :text "Une vive rougeur animait les joues de ma tante, c’était Eulalie.
Malheureusement, à peine venait-elle d’être introduite que Françoise
rentrait et avec un sourire qui avait pour but de se mettre elle-même
à l’unisson de la joie qu’elle ne doutait pas que ses paroles allaient
causer à ma tante, articulant les syllabes pour montrer que, malgré
l’emploi du style indirect, elle rapportait, en bonne domestique, les
paroles mêmes dont avait daigné se servir le visiteur:"
 :tokens 75
 :processed-at "2025-03-16T02:18:14.023098"
 :entities (list
  (entity :text "Eulalie." :label "ORG" :start 56 :end 64) (entity :text "Malheureusement," :label "ORG" :start 65 :end 81) (entity :text "Françoise" :label "ORG" :start 124 :end 133)
 )
 :sentences (list
  (sentence :text "Une vive rougeur animait les joues de ma tante, c’était Eulalie" :start 0 :end 63) (sentence :text "Malheureusement, à peine venait-elle d’être introduite que Françoise
rentrait et avec un sourire qui avait pour but de se mettre elle-même
à l’unisson de la joie qu’elle ne doutait pas que ses paroles allaient
causer à ma tante, articulant les syllabes pour montrer que, malgré
l’emploi du style indirect, elle rapportait, en bonne domestique, les
paroles mêmes dont avait daigné se servir le visiteur:" :start 64 :end 467)
 ))