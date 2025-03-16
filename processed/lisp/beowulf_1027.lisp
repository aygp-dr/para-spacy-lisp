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
 :text "--«Je crois que vous ferez bien de ne pas le lui rappeler. Elle est
maintenant Mme Swann, la femme d’un monsieur du Jockey, ami du prince
de Galles. Elle est du reste encore superbe.»"
 :tokens 34
 :processed-at "2025-03-16T02:18:14.902587"
 :entities (list
  (entity :text "--«Je" :label "ORG" :start 0 :end 5) (entity :text "Elle" :label "ORG" :start 59 :end 63) (entity :text "Swann," :label "ORG" :start 83 :end 89) (entity :text "Jockey," :label "ORG" :start 116 :end 123) (entity :text "Galles." :label "ORG" :start 141 :end 148) (entity :text "Elle" :label "ORG" :start 149 :end 153)
 )
 :sentences (list
  (sentence :text "--«Je crois que vous ferez bien de ne pas le lui rappeler" :start 0 :end 57) (sentence :text "Elle est
maintenant Mme Swann, la femme d’un monsieur du Jockey, ami du prince
de Galles" :start 58 :end 147) (sentence :text "Elle est du reste encore superbe" :start 148 :end 181) (sentence :text "»" :start 182 :end 183)
 ))