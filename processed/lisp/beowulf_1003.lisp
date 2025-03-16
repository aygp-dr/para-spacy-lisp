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
 :text "Il disait enfin, l’ordre nouveau dessiné par l’ouvrière invisible, que
si nous pouvons désirer que les actions d’une personne qui nous a
peinés jusqu’ici n’aient pas été sincères, il y a dans leur suite une
clarté contre quoi notre désir ne peut rien et à laquelle, plutôt qu’à
lui, nous devons demander quelles seront ses actions de demain."
 :tokens 58
 :processed-at "2025-03-16T02:18:14.871848"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Il disait enfin, l’ordre nouveau dessiné par l’ouvrière invisible, que
si nous pouvons désirer que les actions d’une personne qui nous a
peinés jusqu’ici n’aient pas été sincères, il y a dans leur suite une
clarté contre quoi notre désir ne peut rien et à laquelle, plutôt qu’à
lui, nous devons demander quelles seront ses actions de demain" :start 0 :end 340)
 ))