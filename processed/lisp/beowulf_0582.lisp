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
 :text "Il aurait pourtant pu se dire qu’il y avait des anciens amis de ses
parents aussi simples que les Verdurin, des camarades de sa jeunesse
aussi épris d’art, qu’il connaissait d’autres êtres d’un grand cœur,
et que, pourtant, depuis qu’il avait opté pour la simplicité, les arts
et la magnanimité, il ne les voyait plus jamais. Mais ceux-là ne
connaissaient pas Odette, et, s’ils l’avaient connue, ne se seraient
pas souciés de la rapprocher de lui."
 :tokens 76
 :processed-at "2025-03-16T02:18:14.412137"
 :entities (list
  (entity :text "Verdurin," :label "ORG" :start 98 :end 107) (entity :text "Mais" :label "ORG" :start 326 :end 330) (entity :text "Odette," :label "ORG" :start 360 :end 367)
 )
 :sentences (list
  (sentence :text "Il aurait pourtant pu se dire qu’il y avait des anciens amis de ses
parents aussi simples que les Verdurin, des camarades de sa jeunesse
aussi épris d’art, qu’il connaissait d’autres êtres d’un grand cœur,
et que, pourtant, depuis qu’il avait opté pour la simplicité, les arts
et la magnanimité, il ne les voyait plus jamais" :start 0 :end 324) (sentence :text "Mais ceux-là ne
connaissaient pas Odette, et, s’ils l’avaient connue, ne se seraient
pas souciés de la rapprocher de lui" :start 325 :end 446)
 ))