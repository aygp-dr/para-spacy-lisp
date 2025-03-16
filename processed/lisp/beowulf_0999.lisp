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
 :text "--Ça n’est pas étonnant, dit Françoise, ce n’est pas un temps de
saison, il fait trop chaud. Hélas! mon Dieu, de partout il doit y
avoir bien des pauvres malades, c’est à croire que là-haut aussi tout
se détraque."
 :tokens 39
 :processed-at "2025-03-16T02:18:14.866294"
 :entities (list
  (entity :text "--Ça" :label "ORG" :start 0 :end 4) (entity :text "Françoise," :label "ORG" :start 29 :end 39) (entity :text "Hélas!" :label "ORG" :start 93 :end 99) (entity :text "Dieu," :label "ORG" :start 104 :end 109)
 )
 :sentences (list
  (sentence :text "--Ça n’est pas étonnant, dit Françoise, ce n’est pas un temps de
saison, il fait trop chaud" :start 0 :end 91) (sentence :text "Hélas! mon Dieu, de partout il doit y
avoir bien des pauvres malades, c’est à croire que là-haut aussi tout
se détraque" :start 92 :end 212)
 ))