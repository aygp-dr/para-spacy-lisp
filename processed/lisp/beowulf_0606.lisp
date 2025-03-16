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
 :text "Et comme les chanteurs parvenus à la note la plus haute qu’ils
puissent donner continuent en voix de tête, piano, il se contenta de
murmurer, et en riant, comme si en effet cette peinture eût été
dérisoire à force de beauté:"
 :tokens 41
 :processed-at "2025-03-16T02:18:14.436337"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Et comme les chanteurs parvenus à la note la plus haute qu’ils
puissent donner continuent en voix de tête, piano, il se contenta de
murmurer, et en riant, comme si en effet cette peinture eût été
dérisoire à force de beauté:" :start 0 :end 224)
 ))