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
 :text "--«M. le Curé serait enchanté, ravi, si Madame Octave ne repose pas et
pouvait le recevoir. M. le Curé ne veut pas déranger. M. le Curé est
en bas, j’y ai dit d’entrer dans la salle.»"
 :tokens 36
 :processed-at "2025-03-16T02:18:14.024158"
 :entities (list
  (entity :text "--«M." :label "ORG" :start 0 :end 5) (entity :text "Curé" :label "ORG" :start 9 :end 13) (entity :text "Madame" :label "ORG" :start 40 :end 46) (entity :text "Octave" :label "ORG" :start 47 :end 53) (entity :text "Curé" :label "ORG" :start 98 :end 102) (entity :text "Curé" :label "ORG" :start 131 :end 135)
 )
 :sentences (list
  (sentence :text "--«M" :start 0 :end 4) (sentence :text "le Curé serait enchanté, ravi, si Madame Octave ne repose pas et
pouvait le recevoir" :start 5 :end 90) (sentence :text "M" :start 39 :end 41) (sentence :text "le Curé ne veut pas déranger" :start 94 :end 123) (sentence :text "M" :start 39 :end 41) (sentence :text "le Curé est
en bas, j’y ai dit d’entrer dans la salle" :start 127 :end 181) (sentence :text "»" :start 182 :end 183)
 ))