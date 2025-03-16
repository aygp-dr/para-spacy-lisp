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
 :text "--«Tiens, ce n’est pas Lorédan qui est sur le siège?», avec quelle joie
mélancolique Swann lui répondait:"
 :tokens 17
 :processed-at "2025-03-16T02:18:14.647196"
 :entities (list
  (entity :text "--«Tiens," :label "ORG" :start 0 :end 9) (entity :text "Lorédan" :label "ORG" :start 23 :end 30) (entity :text "Swann" :label "ORG" :start 85 :end 90)
 )
 :sentences (list
  (sentence :text "--«Tiens, ce n’est pas Lorédan qui est sur le siège?», avec quelle joie
mélancolique Swann lui répondait:" :start 0 :end 105)
 ))