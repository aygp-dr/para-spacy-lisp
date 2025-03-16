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
 :text "--«On me paierait bien cher que je ne laisserais pas entrer ça chez
moi», conclut Mme Verdurin, en regardant Swann d’un air impérieux."
 :tokens 23
 :processed-at "2025-03-16T02:18:14.454373"
 :entities (list
  (entity :text "--«On" :label "ORG" :start 0 :end 5) (entity :text "Verdurin," :label "ORG" :start 86 :end 95) (entity :text "Swann" :label "ORG" :start 109 :end 114)
 )
 :sentences (list
  (sentence :text "--«On me paierait bien cher que je ne laisserais pas entrer ça chez
moi», conclut Mme Verdurin, en regardant Swann d’un air impérieux" :start 0 :end 133)
 ))