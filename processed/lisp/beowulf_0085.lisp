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
 :text "--«Mais ça sera la fille à M. Pupin», disait Françoise qui préférait
s’en tenir à une explication immédiate, ayant été déjà deux fois
depuis le matin chez Camus."
 :tokens 28
 :processed-at "2025-03-16T02:18:13.874539"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Pupin»," :label "ORG" :start 30 :end 37) (entity :text "Françoise" :label "ORG" :start 45 :end 54) (entity :text "Camus." :label "ORG" :start 155 :end 161)
 )
 :sentences (list
  (sentence :text "--«Mais ça sera la fille à M" :start 0 :end 28) (sentence :text "Pupin», disait Françoise qui préférait
s’en tenir à une explication immédiate, ayant été déjà deux fois
depuis le matin chez Camus" :start 29 :end 160)
 ))