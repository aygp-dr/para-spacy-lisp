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
 :text "--Voilà le salut passé! Eulalie ne viendra plus, soupirait ma tante; ce
sera le temps qui lui aura fait peur.»"
 :tokens 20
 :processed-at "2025-03-16T02:18:14.020362"
 :entities (list
  (entity :text "--Voilà" :label "ORG" :start 0 :end 7) (entity :text "Eulalie" :label "ORG" :start 24 :end 31)
 )
 :sentences (list
  (sentence :text "--Voilà le salut passé! Eulalie ne viendra plus, soupirait ma tante; ce
sera le temps qui lui aura fait peur" :start 0 :end 108) (sentence :text "»" :start 109 :end 110)
 ))