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
 :text "--Voyez-vous ça? Ce qui m’étonne, c’est qu’ils trouvent encore des
personnes qui consentent à leur causer; il me semble que j’aurais
peur: un mauvais coup est si vite reçu! Comment y a-t-il encore du
peuple assez brute pour leur courir après."
 :tokens 41
 :processed-at "2025-03-16T02:18:14.455873"
 :entities (list
  (entity :text "Comment" :label "ORG" :start 173 :end 180)
 )
 :sentences (list
  (sentence :text "--Voyez-vous ça? Ce qui m’étonne, c’est qu’ils trouvent encore des
personnes qui consentent à leur causer; il me semble que j’aurais
peur: un mauvais coup est si vite reçu! Comment y a-t-il encore du
peuple assez brute pour leur courir après" :start 0 :end 241)
 ))