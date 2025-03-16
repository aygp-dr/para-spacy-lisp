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
 :text "--«Ça a l’air fait avec rien, reprit le peintre, pas plus moyen de
découvrir le truc que dans la Ronde ou les Régentes et c’est encore
plus fort comme patte que Rembrandt et que Hals. Tout y est, mais non,
je vous jure.»"
 :tokens 43
 :processed-at "2025-03-16T02:18:14.435593"
 :entities (list
  (entity :text "--«Ça" :label "ORG" :start 0 :end 5) (entity :text "Ronde" :label "ORG" :start 97 :end 102) (entity :text "Régentes" :label "ORG" :start 110 :end 118) (entity :text "Rembrandt" :label "ORG" :start 161 :end 170) (entity :text "Hals." :label "ORG" :start 178 :end 183) (entity :text "Tout" :label "ORG" :start 184 :end 188)
 )
 :sentences (list
  (sentence :text "--«Ça a l’air fait avec rien, reprit le peintre, pas plus moyen de
découvrir le truc que dans la Ronde ou les Régentes et c’est encore
plus fort comme patte que Rembrandt et que Hals" :start 0 :end 182) (sentence :text "Tout y est, mais non,
je vous jure" :start 183 :end 218) (sentence :text "»" :start 219 :end 220)
 ))