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
 :text "--Naturellement, c’est comme avec moi, dit Odette d’un ton boudeur, je
ne suis pas fâchée de voir que je ne suis pas la seule qu’il ne trouve
pas à la hauteur."
 :tokens 31
 :processed-at "2025-03-16T02:18:14.469181"
 :entities (list
  (entity :text "--Naturellement," :label "ORG" :start 0 :end 16) (entity :text "Odette" :label "ORG" :start 43 :end 49)
 )
 :sentences (list
  (sentence :text "--Naturellement, c’est comme avec moi, dit Odette d’un ton boudeur, je
ne suis pas fâchée de voir que je ne suis pas la seule qu’il ne trouve
pas à la hauteur" :start 0 :end 158)
 ))