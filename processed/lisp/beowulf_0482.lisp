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
 :text "--Mais, Madame, il est de l’Académie, répliqua le docteur d’un ton air
ironique. Si un malade préfère mourir de la main d’un des princes de
la science... C’est beaucoup plus chic de pouvoir dire: «C’est Potain
qui me soigne.»"
 :tokens 39
 :processed-at "2025-03-16T02:18:14.300624"
 :entities (list
  (entity :text "--Mais," :label "ORG" :start 0 :end 7) (entity :text "Madame," :label "ORG" :start 8 :end 15) (entity :text "Potain" :label "ORG" :start 203 :end 209)
 )
 :sentences (list
  (sentence :text "--Mais, Madame, il est de l’Académie, répliqua le docteur d’un ton air
ironique" :start 0 :end 79) (sentence :text "Si un malade préfère mourir de la main d’un des princes de
la science" :start 80 :end 150) (sentence :text "C’est beaucoup plus chic de pouvoir dire: «C’est Potain
qui me soigne" :start 153 :end 223) (sentence :text "»" :start 224 :end 225)
 ))