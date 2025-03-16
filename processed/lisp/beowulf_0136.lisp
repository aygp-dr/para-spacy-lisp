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
 :text "--«Je ne connais pas son père, dit la dame en rose avec une légère
inclinaison de la tête, et je n’ai jamais connu votre pauvre mère, mon
ami. Vous vous souvenez, c’est peu après votre grand chagrin que nous
nous sommes connus.»"
 :tokens 42
 :processed-at "2025-03-16T02:18:13.929526"
 :entities (list
  (entity :text "--«Je" :label "ORG" :start 0 :end 5) (entity :text "Vous" :label "ORG" :start 143 :end 147)
 )
 :sentences (list
  (sentence :text "--«Je ne connais pas son père, dit la dame en rose avec une légère
inclinaison de la tête, et je n’ai jamais connu votre pauvre mère, mon
ami" :start 0 :end 141) (sentence :text "Vous vous souvenez, c’est peu après votre grand chagrin que nous
nous sommes connus" :start 142 :end 226) (sentence :text "»" :start 227 :end 228)
 ))