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
 :text "--«Monsieur, je ne puis absolument vous dire s’il a plu. Je vis si
résolument en dehors des contingences physiques que mes sens ne
prennent pas la peine de me les notifier.»"
 :tokens 31
 :processed-at "2025-03-16T02:18:13.979385"
 :entities (list
  (entity :text "--«Monsieur," :label "ORG" :start 0 :end 12)
 )
 :sentences (list
  (sentence :text "--«Monsieur, je ne puis absolument vous dire s’il a plu" :start 0 :end 55) (sentence :text "Je vis si
résolument en dehors des contingences physiques que mes sens ne
prennent pas la peine de me les notifier" :start 56 :end 171) (sentence :text "»" :start 172 :end 173)
 ))