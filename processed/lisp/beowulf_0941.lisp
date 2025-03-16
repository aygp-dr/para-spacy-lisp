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
 :text "Odette racontait cela presque en riant, soit que cela lui parût tout
naturel, ou parce qu’elle croyait en atténuer ainsi l’importance, ou
pour ne pas avoir l’air humilié. En voyant le visage de Swann, elle
changea de ton:"
 :tokens 38
 :processed-at "2025-03-16T02:18:14.786441"
 :entities (list
  (entity :text "Odette" :label "ORG" :start 0 :end 6) (entity :text "Swann," :label "ORG" :start 194 :end 200)
 )
 :sentences (list
  (sentence :text "Odette racontait cela presque en riant, soit que cela lui parût tout
naturel, ou parce qu’elle croyait en atténuer ainsi l’importance, ou
pour ne pas avoir l’air humilié" :start 0 :end 169) (sentence :text "En voyant le visage de Swann, elle
changea de ton:" :start 170 :end 221)
 ))