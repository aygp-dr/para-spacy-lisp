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
 :text "Par une générosité instinctive et une politesse involontaire elle
taisait les mots prémédités qu’elle avait jugés indispensables à la
pleine réalisation de son désir. Et à tous moments au fond d’elle-même
une vierge timide et suppliante implorait et faisait reculer un
soudard fruste et vainqueur."
 :tokens 45
 :processed-at "2025-03-16T02:18:14.154295"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Par une générosité instinctive et une politesse involontaire elle
taisait les mots prémédités qu’elle avait jugés indispensables à la
pleine réalisation de son désir" :start 0 :end 165) (sentence :text "Et à tous moments au fond d’elle-même
une vierge timide et suppliante implorait et faisait reculer un
soudard fruste et vainqueur" :start 166 :end 296)
 ))