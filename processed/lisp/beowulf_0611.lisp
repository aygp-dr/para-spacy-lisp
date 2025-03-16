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
 :text "--Mais nous ne croyons pas que vous exagérez, nous voulons seulement
que vous mangiez, et que mon mari mange aussi; redonnez de la sole
normande à Monsieur, vous voyez bien que la sienne est froide. Nous ne
sommes pas si pressés, vous servez comme s’il y avait le feu, attendez
donc un peu pour donner la salade."
 :tokens 57
 :processed-at "2025-03-16T02:18:14.440854"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Monsieur," :label "ORG" :start 147 :end 156) (entity :text "Nous" :label "ORG" :start 199 :end 203)
 )
 :sentences (list
  (sentence :text "--Mais nous ne croyons pas que vous exagérez, nous voulons seulement
que vous mangiez, et que mon mari mange aussi; redonnez de la sole
normande à Monsieur, vous voyez bien que la sienne est froide" :start 0 :end 197) (sentence :text "Nous ne
sommes pas si pressés, vous servez comme s’il y avait le feu, attendez
donc un peu pour donner la salade" :start 198 :end 311)
 ))