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
 :text "--Allons, vous les caresserez plus tard; maintenant c’est vous qu’on va
caresser, qu’on va caresser dans l’oreille; vous aimez cela, je pense;
voilà un petit jeune homme qui va s’en charger."
 :tokens 31
 :processed-at "2025-03-16T02:18:14.275332"
 :entities (list
  (entity :text "--Allons," :label "ORG" :start 0 :end 9)
 )
 :sentences (list
  (sentence :text "--Allons, vous les caresserez plus tard; maintenant c’est vous qu’on va
caresser, qu’on va caresser dans l’oreille; vous aimez cela, je pense;
voilà un petit jeune homme qui va s’en charger" :start 0 :end 189)
 ))