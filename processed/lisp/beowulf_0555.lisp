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
 :text "--Surtout, ne me parlez pas, ne me répondez que par signes pour ne pas
vous essouffler encore davantage. Cela ne vous gêne pas que je remette
droites les fleurs de votre corsage qui ont été déplacées par le choc.
J’ai peur que vous ne les perdiez, je voudrais les enfoncer un peu."
 :tokens 52
 :processed-at "2025-03-16T02:18:14.377179"
 :entities (list
  (entity :text "--Surtout," :label "ORG" :start 0 :end 10) (entity :text "Cela" :label "ORG" :start 105 :end 109)
 )
 :sentences (list
  (sentence :text "--Surtout, ne me parlez pas, ne me répondez que par signes pour ne pas
vous essouffler encore davantage" :start 0 :end 103) (sentence :text "Cela ne vous gêne pas que je remette
droites les fleurs de votre corsage qui ont été déplacées par le choc" :start 104 :end 211) (sentence :text "J’ai peur que vous ne les perdiez, je voudrais les enfoncer un peu" :start 212 :end 279)
 ))