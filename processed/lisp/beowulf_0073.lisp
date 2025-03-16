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
 :text "--«Françoise, vous seriez venue cinq minutes plus tôt, vous auriez vu
passer Mme Imbert qui tenait des asperges deux fois grosses comme
celles de la mère Callot; tâchez donc de savoir par sa bonne où elle
les a eues. Vous qui, cette année, nous mettez des asperges à toutes
les sauces, vous auriez pu en prendre de pareilles pour nos
voyageurs.»"
 :tokens 61
 :processed-at "2025-03-16T02:18:13.864588"
 :entities (list
  (entity :text "--«Françoise," :label "ORG" :start 0 :end 13) (entity :text "Imbert" :label "ORG" :start 81 :end 87) (entity :text "Callot;" :label "ORG" :start 154 :end 161) (entity :text "Vous" :label "ORG" :start 217 :end 221)
 )
 :sentences (list
  (sentence :text "--«Françoise, vous seriez venue cinq minutes plus tôt, vous auriez vu
passer Mme Imbert qui tenait des asperges deux fois grosses comme
celles de la mère Callot; tâchez donc de savoir par sa bonne où elle
les a eues" :start 0 :end 215) (sentence :text "Vous qui, cette année, nous mettez des asperges à toutes
les sauces, vous auriez pu en prendre de pareilles pour nos
voyageurs" :start 216 :end 343) (sentence :text "»" :start 344 :end 345)
 ))