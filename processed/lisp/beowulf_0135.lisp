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
 :text "--«Il ressemble surtout à son père, grogna mon oncle qui ne se souciait
pas plus de faire des présentations à distance en disant le nom de
maman que d’en faire de près. C’est tout à fait son père et aussi ma
pauvre mère.»"
 :tokens 43
 :processed-at "2025-03-16T02:18:13.928716"
 :entities (list
  (entity :text "--«Il" :label "ORG" :start 0 :end 5)
 )
 :sentences (list
  (sentence :text "--«Il ressemble surtout à son père, grogna mon oncle qui ne se souciait
pas plus de faire des présentations à distance en disant le nom de
maman que d’en faire de près" :start 0 :end 167) (sentence :text "C’est tout à fait son père et aussi ma
pauvre mère" :start 168 :end 219) (sentence :text "»" :start 220 :end 221)
 ))