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
 :text "--«Odette de Crécy? Mais je me disais aussi, ces yeux tristes... Mais
savez-vous qu’elle ne doit plus être de la première jeunesse! Je me
rappelle que j’ai couché avec elle le jour de la démission de
Mac-Mahon.»"
 :tokens 37
 :processed-at "2025-03-16T02:18:14.901352"
 :entities (list
  (entity :text "--«Odette" :label "ORG" :start 0 :end 9) (entity :text "Crécy?" :label "ORG" :start 13 :end 19) (entity :text "Mais" :label "ORG" :start 20 :end 24) (entity :text "Mais" :label "ORG" :start 65 :end 69) (entity :text "Mac-Mahon.»" :label "ORG" :start 200 :end 211)
 )
 :sentences (list
  (sentence :text "--«Odette de Crécy? Mais je me disais aussi, ces yeux tristes" :start 0 :end 61) (sentence :text "Mais
savez-vous qu’elle ne doit plus être de la première jeunesse! Je me
rappelle que j’ai couché avec elle le jour de la démission de
Mac-Mahon" :start 64 :end 209) (sentence :text "»" :start 210 :end 211)
 ))