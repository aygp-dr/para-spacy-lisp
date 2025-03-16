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
 :text "--Voici Mme de Crécy qui a quelque chose à te demander. Elle désirerait
te présenter un de ses amis, M. Swann. Qu’en dis-tu?"
 :tokens 23
 :processed-at "2025-03-16T02:18:14.214119"
 :entities (list
  (entity :text "--Voici" :label "ORG" :start 0 :end 7) (entity :text "Crécy" :label "ORG" :start 15 :end 20) (entity :text "Elle" :label "ORG" :start 56 :end 60) (entity :text "Swann." :label "ORG" :start 104 :end 110)
 )
 :sentences (list
  (sentence :text "--Voici Mme de Crécy qui a quelque chose à te demander" :start 0 :end 54) (sentence :text "Elle désirerait
te présenter un de ses amis, M" :start 55 :end 102) (sentence :text "Swann" :start 103 :end 109) (sentence :text "Qu’en dis-tu?" :start 110 :end 124)
 ))