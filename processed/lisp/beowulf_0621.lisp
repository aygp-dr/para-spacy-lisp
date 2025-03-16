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
 :text "Elle fut interrompue par Forcheville qui interpellait Swann. En effet,
tandis que Mme Cottard parlait de Francillon, Forcheville avait
exprimé à Mme Verdurin son admiration pour ce qu’il avait appelé le
petit «speech» du peintre."
 :tokens 35
 :processed-at "2025-03-16T02:18:14.449988"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Forcheville" :label "ORG" :start 25 :end 36) (entity :text "Swann." :label "ORG" :start 54 :end 60) (entity :text "Cottard" :label "ORG" :start 86 :end 93) (entity :text "Francillon," :label "ORG" :start 105 :end 116) (entity :text "Forcheville" :label "ORG" :start 117 :end 128) (entity :text "Verdurin" :label "ORG" :start 149 :end 157)
 )
 :sentences (list
  (sentence :text "Elle fut interrompue par Forcheville qui interpellait Swann" :start 0 :end 59) (sentence :text "En effet,
tandis que Mme Cottard parlait de Francillon, Forcheville avait
exprimé à Mme Verdurin son admiration pour ce qu’il avait appelé le
petit «speech» du peintre" :start 60 :end 228)
 ))