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
 :text "--«Je veux profiter, dit-il, de ce que toute la famille est réunie pour
vous faire un récit sans avoir besoin de le recommencer à chacun. J’ai
peur que nous ne soyons fâchés avec Legrandin: il m’a à peine dit
bonjour ce matin.»"
 :tokens 42
 :processed-at "2025-03-16T02:18:14.062487"
 :entities (list
  (entity :text "--«Je" :label "ORG" :start 0 :end 5) (entity :text "Legrandin:" :label "ORG" :start 179 :end 189)
 )
 :sentences (list
  (sentence :text "--«Je veux profiter, dit-il, de ce que toute la famille est réunie pour
vous faire un récit sans avoir besoin de le recommencer à chacun" :start 0 :end 136) (sentence :text "J’ai
peur que nous ne soyons fâchés avec Legrandin: il m’a à peine dit
bonjour ce matin" :start 137 :end 225) (sentence :text "»" :start 226 :end 227)
 ))