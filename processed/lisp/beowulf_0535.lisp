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
 :text "Mme Verdurin s’immobilisa, prit une expression inerte comme si elle
était devenue une statue, fiction qui lui permit d’être censée ne pas
avoir entendu ce mot insupportable de poseur qui avait l’air
d’impliquer qu’on pouvait «poser» avec eux, donc qu’on était «plus
qu’eux»."
 :tokens 43
 :processed-at "2025-03-16T02:18:14.354381"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 4 :end 12)
 )
 :sentences (list
  (sentence :text "Mme Verdurin s’immobilisa, prit une expression inerte comme si elle
était devenue une statue, fiction qui lui permit d’être censée ne pas
avoir entendu ce mot insupportable de poseur qui avait l’air
d’impliquer qu’on pouvait «poser» avec eux, donc qu’on était «plus
qu’eux»" :start 0 :end 273)
 ))