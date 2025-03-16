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
 :text "Ainsi le simple fonctionnement de cet organisme social qu’était le
petit «clan» prenait automatiquement pour Swann des rendez-vous
quotidiens avec Odette et lui permettait de feindre une indifférence à
la voir, ou même un désir de ne plus la voir, qui ne lui faisait pas
courir de grands risques, puisque, quoi qu’il lui eût écrit dans la
journée, il la verrait forcément le soir et la ramènerait chez elle."
 :tokens 69
 :processed-at "2025-03-16T02:18:14.344254"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 109 :end 114) (entity :text "Odette" :label "ORG" :start 147 :end 153)
 )
 :sentences (list
  (sentence :text "Ainsi le simple fonctionnement de cet organisme social qu’était le
petit «clan» prenait automatiquement pour Swann des rendez-vous
quotidiens avec Odette et lui permettait de feindre une indifférence à
la voir, ou même un désir de ne plus la voir, qui ne lui faisait pas
courir de grands risques, puisque, quoi qu’il lui eût écrit dans la
journée, il la verrait forcément le soir et la ramènerait chez elle" :start 0 :end 406)
 ))