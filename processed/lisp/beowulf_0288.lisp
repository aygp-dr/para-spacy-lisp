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
 :text "Dans un dernier effort désespéré, le regard souriant de Legrandin
atteignit son maximum de tendresse, de vague, de sincérité et de
distraction, mais, pensant sans doute qu’il n’y avait plus qu’à
répondre, il nous dit:"
 :tokens 35
 :processed-at "2025-03-16T02:18:14.090200"
 :entities (list
  (entity :text "Dans" :label "ORG" :start 0 :end 4) (entity :text "Legrandin" :label "ORG" :start 56 :end 65)
 )
 :sentences (list
  (sentence :text "Dans un dernier effort désespéré, le regard souriant de Legrandin
atteignit son maximum de tendresse, de vague, de sincérité et de
distraction, mais, pensant sans doute qu’il n’y avait plus qu’à
répondre, il nous dit:" :start 0 :end 217)
 ))