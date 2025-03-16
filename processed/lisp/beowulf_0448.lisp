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
 :text "--«Vous n’êtes pas bien là, allez donc vous mettre à côté d’Odette,
n’est-ce pas Odette, vous ferez bien une place à M. Swann?»"
 :tokens 23
 :processed-at "2025-03-16T02:18:14.269244"
 :entities (list
  (entity :text "--«Vous" :label "ORG" :start 0 :end 7) (entity :text "Odette," :label "ORG" :start 60 :end 67) (entity :text "Swann?»" :label "ORG" :start 120 :end 127)
 )
 :sentences (list
  (sentence :text "--«Vous n’êtes pas bien là, allez donc vous mettre à côté d’Odette,
n’est-ce pas Odette, vous ferez bien une place à M" :start 0 :end 118) (sentence :text "Swann?»" :start 119 :end 127)
 ))