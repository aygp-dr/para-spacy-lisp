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
 :text "--«Mais non, il n’y a absolument rien, et entre nous, je trouve qu’elle
a bien tort et qu’elle se conduit comme une fameuse cruche, qu’elle
est du reste.»"
 :tokens 28
 :processed-at "2025-03-16T02:18:14.350879"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7)
 )
 :sentences (list
  (sentence :text "--«Mais non, il n’y a absolument rien, et entre nous, je trouve qu’elle
a bien tort et qu’elle se conduit comme une fameuse cruche, qu’elle
est du reste" :start 0 :end 152) (sentence :text "»" :start 153 :end 154)
 ))