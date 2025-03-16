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
 :text "--«Que l’andante, comme tu y vas» s’écria Mme Verdurin. «C’est
justement l’andante qui me casse bras et jambes. Il est vraiment
superbe le Patron! C’est comme si dans la «Neuvième» il disait: nous
n’entendrons que le finale, ou dans «les Maîtres» que l’ouverture.»"
 :tokens 43
 :processed-at "2025-03-16T02:18:14.263622"
 :entities (list
  (entity :text "--«Que" :label "ORG" :start 0 :end 6) (entity :text "Verdurin." :label "ORG" :start 46 :end 55) (entity :text "Patron!" :label "ORG" :start 139 :end 146) (entity :text "«Neuvième»" :label "ORG" :start 170 :end 180) (entity :text "Maîtres»" :label "ORG" :start 238 :end 246)
 )
 :sentences (list
  (sentence :text "--«Que l’andante, comme tu y vas» s’écria Mme Verdurin" :start 0 :end 54) (sentence :text "«C’est
justement l’andante qui me casse bras et jambes" :start 55 :end 110) (sentence :text "Il est vraiment
superbe le Patron! C’est comme si dans la «Neuvième» il disait: nous
n’entendrons que le finale, ou dans «les Maîtres» que l’ouverture" :start 111 :end 262) (sentence :text "»" :start 32 :end 33)
 ))