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
 :text "--«Là, Françoise, disait ma tante, quand je vous le disais, qu’ils
seraient allés du côté de Guermantes! Mon dieu! ils doivent avoir une
faim! et votre gigot qui doit être tout desséché après ce qu’il a
attendu. Aussi est-ce une heure pour rentrer! comment, vous êtes allés
du côté de Guermantes!»"
 :tokens 51
 :processed-at "2025-03-16T02:18:14.098295"
 :entities (list
  (entity :text "--«Là," :label "ORG" :start 0 :end 6) (entity :text "Françoise," :label "ORG" :start 7 :end 17) (entity :text "Guermantes!" :label "ORG" :start 93 :end 104) (entity :text "Guermantes!»" :label "ORG" :start 285 :end 297)
 )
 :sentences (list
  (sentence :text "--«Là, Françoise, disait ma tante, quand je vous le disais, qu’ils
seraient allés du côté de Guermantes! Mon dieu! ils doivent avoir une
faim! et votre gigot qui doit être tout desséché après ce qu’il a
attendu" :start 0 :end 210) (sentence :text "Aussi est-ce une heure pour rentrer! comment, vous êtes allés
du côté de Guermantes!»" :start 211 :end 297)
 ))