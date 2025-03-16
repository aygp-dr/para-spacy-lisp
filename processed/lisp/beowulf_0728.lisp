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
 :text "M. et Mme Verdurin firent monter avec eux Forcheville, la voiture de
Swann s’était rangée derrière la leur dont il attendait le départ pour
faire monter Odette dans la sienne."
 :tokens 30
 :processed-at "2025-03-16T02:18:14.555336"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 10 :end 18) (entity :text "Forcheville," :label "ORG" :start 42 :end 54) (entity :text "Swann" :label "ORG" :start 69 :end 74) (entity :text "Odette" :label "ORG" :start 153 :end 159)
 )
 :sentences (list
  (sentence :text "M" :start 0 :end 1) (sentence :text "et Mme Verdurin firent monter avec eux Forcheville, la voiture de
Swann s’était rangée derrière la leur dont il attendait le départ pour
faire monter Odette dans la sienne" :start 2 :end 174)
 ))