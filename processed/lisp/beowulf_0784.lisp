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
 :text "Aussi Odette, sûre de le voir venir après quelques jours, aussi tendre
et soumis qu’avant, lui demander une réconciliation, prenait-elle
l’habitude de ne plus craindre de lui déplaire et même de l’irriter et
lui refusait-elle, quand cela lui était commode, les faveurs
auxquelles il tenait le plus."
 :tokens 47
 :processed-at "2025-03-16T02:18:14.615424"
 :entities (list
  (entity :text "Odette," :label "ORG" :start 6 :end 13)
 )
 :sentences (list
  (sentence :text "Aussi Odette, sûre de le voir venir après quelques jours, aussi tendre
et soumis qu’avant, lui demander une réconciliation, prenait-elle
l’habitude de ne plus craindre de lui déplaire et même de l’irriter et
lui refusait-elle, quand cela lui était commode, les faveurs
auxquelles il tenait le plus" :start 0 :end 297)
 ))