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
 :text "--«Mais j’espère bien que non! s’écria Mme Verdurin, Dieu nous en
préserve, il est assommant, bête et mal élevé.»"
 :tokens 19
 :processed-at "2025-03-16T02:18:14.574759"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Verdurin," :label "ORG" :start 43 :end 52) (entity :text "Dieu" :label "ORG" :start 53 :end 57)
 )
 :sentences (list
  (sentence :text "--«Mais j’espère bien que non! s’écria Mme Verdurin, Dieu nous en
préserve, il est assommant, bête et mal élevé" :start 0 :end 111) (sentence :text "»" :start 112 :end 113)
 ))