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
 :text "J’avais toujours à portée de ma main un plan de Paris qui, parce qu’on
pouvait y distinguer la rue où habitaient M. et Mme Swann, me semblait
contenir un trésor. Et par plaisir, par une sorte de fidélité
chevaleresque aussi, à propos de n’importe quoi, je disais le nom de
cette rue, si bien que mon père me demandait, n’étant pas comme ma
mère et ma grand’mère au courant de mon amour:"
 :tokens 72
 :processed-at "2025-03-16T02:18:14.873839"
 :entities (list
  (entity :text "Paris" :label "ORG" :start 48 :end 53) (entity :text "Swann," :label "ORG" :start 123 :end 129)
 )
 :sentences (list
  (sentence :text "J’avais toujours à portée de ma main un plan de Paris qui, parce qu’on
pouvait y distinguer la rue où habitaient M" :start 0 :end 114) (sentence :text "et Mme Swann, me semblait
contenir un trésor" :start 115 :end 160) (sentence :text "Et par plaisir, par une sorte de fidélité
chevaleresque aussi, à propos de n’importe quoi, je disais le nom de
cette rue, si bien que mon père me demandait, n’étant pas comme ma
mère et ma grand’mère au courant de mon amour:" :start 161 :end 386)
 ))