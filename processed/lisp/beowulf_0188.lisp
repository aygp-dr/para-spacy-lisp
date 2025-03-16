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
 :text "Ces petites manies de mon grand-père n’impliquaient aucun sentiment
malveillant à l’endroit de mes camarades. Mais Bloch avait déplu à mes
parents pour d’autres raisons. Il avait commencé par agacer mon père
qui, le voyant mouillé, lui avait dit avec intérêt:"
 :tokens 41
 :processed-at "2025-03-16T02:18:13.977011"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 110 :end 114) (entity :text "Bloch" :label "ORG" :start 115 :end 120)
 )
 :sentences (list
  (sentence :text "Ces petites manies de mon grand-père n’impliquaient aucun sentiment
malveillant à l’endroit de mes camarades" :start 0 :end 108) (sentence :text "Mais Bloch avait déplu à mes
parents pour d’autres raisons" :start 109 :end 168) (sentence :text "Il avait commencé par agacer mon père
qui, le voyant mouillé, lui avait dit avec intérêt:" :start 169 :end 259)
 ))