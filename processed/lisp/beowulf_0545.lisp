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
 :text "--«Mais pas du tout, s’écria-t-il, il faut que nous trouvions cette
dame; c’est de la plus haute importance. Elle serait extrêmement
ennuyée, pour une affaire, et froissée, si elle ne m’avait pas vu.»"
 :tokens 33
 :processed-at "2025-03-16T02:18:14.364159"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Elle" :label "ORG" :start 109 :end 113)
 )
 :sentences (list
  (sentence :text "--«Mais pas du tout, s’écria-t-il, il faut que nous trouvions cette
dame; c’est de la plus haute importance" :start 0 :end 107) (sentence :text "Elle serait extrêmement
ennuyée, pour une affaire, et froissée, si elle ne m’avait pas vu" :start 108 :end 198) (sentence :text "»" :start 199 :end 200)
 ))