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
 :text "Swann ayant répondu qu’il n’avait pas vu ce portrait, Mme Cottard eut
peur de l’avoir blessé en l’obligeant à le confesser."
 :tokens 21
 :processed-at "2025-03-16T02:18:14.803609"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 0 :end 5) (entity :text "Cottard" :label "ORG" :start 58 :end 65)
 )
 :sentences (list
  (sentence :text "Swann ayant répondu qu’il n’avait pas vu ce portrait, Mme Cottard eut
peur de l’avoir blessé en l’obligeant à le confesser" :start 0 :end 122)
 ))