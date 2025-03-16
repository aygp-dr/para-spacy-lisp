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
 :text "--«Quel joli Beauvais, dit avant de s’asseoir Swann qui cherchait à
être aimable.»"
 :tokens 13
 :processed-at "2025-03-16T02:18:14.270070"
 :entities (list
  (entity :text "--«Quel" :label "ORG" :start 0 :end 7) (entity :text "Beauvais," :label "ORG" :start 13 :end 22) (entity :text "Swann" :label "ORG" :start 46 :end 51)
 )
 :sentences (list
  (sentence :text "--«Quel joli Beauvais, dit avant de s’asseoir Swann qui cherchait à
être aimable" :start 0 :end 80) (sentence :text "»" :start 81 :end 82)
 ))