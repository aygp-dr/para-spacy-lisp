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
 :text "--Oui, chez M. Grévy, répondit Swann, un peu gêné de l’effet que sa
phrase avait produit."
 :tokens 16
 :processed-at "2025-03-16T02:18:14.314090"
 :entities (list
  (entity :text "--Oui," :label "ORG" :start 0 :end 6) (entity :text "Grévy," :label "ORG" :start 15 :end 21) (entity :text "Swann," :label "ORG" :start 31 :end 37)
 )
 :sentences (list
  (sentence :text "--Oui, chez M" :start 0 :end 13) (sentence :text "Grévy, répondit Swann, un peu gêné de l’effet que sa
phrase avait produit" :start 14 :end 88)
 ))