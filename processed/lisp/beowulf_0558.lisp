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
 :text "Mais lui, intimidé par sa réponse, peut-être aussi pour avoir l’air
d’avoir été sincère quand il avait pris ce prétexte, ou même,
commençant déjà à croire qu’il l’avait été, s’écria:"
 :tokens 30
 :processed-at "2025-03-16T02:18:14.379836"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4)
 )
 :sentences (list
  (sentence :text "Mais lui, intimidé par sa réponse, peut-être aussi pour avoir l’air
d’avoir été sincère quand il avait pris ce prétexte, ou même,
commençant déjà à croire qu’il l’avait été, s’écria:" :start 0 :end 182)
 ))