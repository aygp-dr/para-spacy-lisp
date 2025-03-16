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
 :text "--«Mais à l’église, ils doivent y être déjà; vous ferez bien de ne pas
perdre de temps. Allez surveiller votre déjeuner.»"
 :tokens 21
 :processed-at "2025-03-16T02:18:13.891488"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7)
 )
 :sentences (list
  (sentence :text "--«Mais à l’église, ils doivent y être déjà; vous ferez bien de ne pas
perdre de temps" :start 0 :end 86) (sentence :text "Allez surveiller votre déjeuner" :start 87 :end 119) (sentence :text "»" :start 120 :end 121)
 ))