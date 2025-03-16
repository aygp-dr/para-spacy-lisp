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
 :text "--«Ta, ta, ta, dit M. Verdurin, qu’est-ce que tu en sais qu’il n’y a
rien, nous n’avons pas été y voir, n’est-ce pas.»"
 :tokens 23
 :processed-at "2025-03-16T02:18:14.351672"
 :entities (list
  (entity :text "--«Ta," :label "ORG" :start 0 :end 6) (entity :text "Verdurin," :label "ORG" :start 22 :end 31)
 )
 :sentences (list
  (sentence :text "--«Ta, ta, ta, dit M" :start 0 :end 20) (sentence :text "Verdurin, qu’est-ce que tu en sais qu’il n’y a
rien, nous n’avons pas été y voir, n’est-ce pas" :start 21 :end 116) (sentence :text "»" :start 117 :end 118)
 ))