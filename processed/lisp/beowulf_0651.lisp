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
 :text "M. Verdurin avait d’ailleurs fait sagement en ne retirant pas sa pipe
de sa bouche, car Cottard qui avait besoin de s’éloigner un instant
fit à mi-voix une plaisanterie qu’il avait apprise depuis peu et qu’il
renouvelait chaque fois qu’il avait à aller au même endroit: «Il faut
que j’aille entretenir un instant le duc d’Aumale», de sorte que la
quinte de M. Verdurin recommença."
 :tokens 65
 :processed-at "2025-03-16T02:18:14.476002"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 3 :end 11) (entity :text "Cottard" :label "ORG" :start 88 :end 95) (entity :text "Verdurin" :label "ORG" :start 360 :end 368)
 )
 :sentences (list
  (sentence :text "M" :start 0 :end 1) (sentence :text "Verdurin avait d’ailleurs fait sagement en ne retirant pas sa pipe
de sa bouche, car Cottard qui avait besoin de s’éloigner un instant
fit à mi-voix une plaisanterie qu’il avait apprise depuis peu et qu’il
renouvelait chaque fois qu’il avait à aller au même endroit: «Il faut
que j’aille entretenir un instant le duc d’Aumale», de sorte que la
quinte de M" :start 2 :end 358) (sentence :text "Verdurin recommença" :start 359 :end 379)
 ))