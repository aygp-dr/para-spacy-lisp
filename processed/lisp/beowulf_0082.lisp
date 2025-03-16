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
 :text "Ainsi Françoise et ma tante appréciaient-elles ensemble au cours de
cette séance matinale, les premiers événements du jour. Mais
quelquefois ces événements revêtaient un caractère si mystérieux et si
grave que ma tante sentait qu’elle ne pourrait pas attendre le moment
où Françoise monterait, et quatre coups de sonnette formidables
retentissaient dans la maison."
 :tokens 54
 :processed-at "2025-03-16T02:18:13.871809"
 :entities (list
  (entity :text "Françoise" :label "ORG" :start 6 :end 15) (entity :text "Mais" :label "ORG" :start 124 :end 128) (entity :text "Françoise" :label "ORG" :start 273 :end 282)
 )
 :sentences (list
  (sentence :text "Ainsi Françoise et ma tante appréciaient-elles ensemble au cours de
cette séance matinale, les premiers événements du jour" :start 0 :end 122) (sentence :text "Mais
quelquefois ces événements revêtaient un caractère si mystérieux et si
grave que ma tante sentait qu’elle ne pourrait pas attendre le moment
où Françoise monterait, et quatre coups de sonnette formidables
retentissaient dans la maison" :start 123 :end 363)
 ))