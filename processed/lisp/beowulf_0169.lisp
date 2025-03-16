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
 :text "Et le jardinier: «Ah! ils sont malins», car il n’admettait pas que la
guerre ne fût pas une espèce de mauvais tour que l’État essayait de
jouer au peuple et que, si on avait eu le moyen de le faire, il n’est
pas une seule personne qui n’eût filé."
 :tokens 49
 :processed-at "2025-03-16T02:18:13.961758"
 :entities (list
  (entity :text "«Ah!" :label "ORG" :start 17 :end 21)
 )
 :sentences (list
  (sentence :text "Et le jardinier: «Ah! ils sont malins», car il n’admettait pas que la
guerre ne fût pas une espèce de mauvais tour que l’État essayait de
jouer au peuple et que, si on avait eu le moyen de le faire, il n’est
pas une seule personne qui n’eût filé" :start 0 :end 245)
 ))