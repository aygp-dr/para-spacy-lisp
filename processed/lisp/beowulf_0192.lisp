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
 :text "--«Mais, mon pauvre fils, il est idiot ton ami, m’avait dit mon père
quand Bloch fut parti. Comment! il ne peut même pas me dire le temps
qu’il fait! Mais il n’y a rien de plus intéressant! C’est un imbécile."
 :tokens 40
 :processed-at "2025-03-16T02:18:13.980148"
 :entities (list
  (entity :text "--«Mais," :label "ORG" :start 0 :end 8) (entity :text "Bloch" :label "ORG" :start 75 :end 80) (entity :text "Comment!" :label "ORG" :start 92 :end 100) (entity :text "Mais" :label "ORG" :start 150 :end 154)
 )
 :sentences (list
  (sentence :text "--«Mais, mon pauvre fils, il est idiot ton ami, m’avait dit mon père
quand Bloch fut parti" :start 0 :end 90) (sentence :text "Comment! il ne peut même pas me dire le temps
qu’il fait! Mais il n’y a rien de plus intéressant! C’est un imbécile" :start 91 :end 207)
 ))