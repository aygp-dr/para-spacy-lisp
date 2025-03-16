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
 :text "--Tenez, ce pouf, c’est tout ce qu’il me faut. Cela me fera tenir
droite. Oh! mon Dieu, je fais encore du bruit, je vais me faire
conspuer."
 :tokens 27
 :processed-at "2025-03-16T02:18:14.689224"
 :entities (list
  (entity :text "--Tenez," :label "ORG" :start 0 :end 8) (entity :text "Cela" :label "ORG" :start 47 :end 51) (entity :text "Dieu," :label "ORG" :start 82 :end 87)
 )
 :sentences (list
  (sentence :text "--Tenez, ce pouf, c’est tout ce qu’il me faut" :start 0 :end 45) (sentence :text "Cela me fera tenir
droite" :start 46 :end 72) (sentence :text "Oh! mon Dieu, je fais encore du bruit, je vais me faire
conspuer" :start 73 :end 138)
 ))