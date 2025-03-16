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
 :text "--«Qu’est-ce que vous lisez, on peut regarder? Tiens, du Bergotte? Qui
donc vous a indiqué ses ouvrages?» Je lui dis que c’était Bloch."
 :tokens 23
 :processed-at "2025-03-16T02:18:13.992329"
 :entities (list
  (entity :text "Tiens," :label "ORG" :start 47 :end 53) (entity :text "Bergotte?" :label "ORG" :start 57 :end 66) (entity :text "Bloch." :label "ORG" :start 129 :end 135)
 )
 :sentences (list
  (sentence :text "--«Qu’est-ce que vous lisez, on peut regarder? Tiens, du Bergotte? Qui
donc vous a indiqué ses ouvrages?» Je lui dis que c’était Bloch" :start 0 :end 134)
 ))