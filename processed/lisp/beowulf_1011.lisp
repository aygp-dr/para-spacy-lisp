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
 :text "--Mais naturellement, répondit ma mère qui avait toujours l’air de
craindre que si elle eût avoué que nous étions en froid avec Swann, on
eût cherché à les réconcilier plus qu’elle ne souhaitait, à cause de
Mme Swann qu’elle ne voulait pas connaître. «C’est lui qui est venu me
saluer, je ne le voyais pas."
 :tokens 55
 :processed-at "2025-03-16T02:18:14.881569"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Swann," :label "ORG" :start 128 :end 134) (entity :text "Swann" :label "ORG" :start 211 :end 216)
 )
 :sentences (list
  (sentence :text "--Mais naturellement, répondit ma mère qui avait toujours l’air de
craindre que si elle eût avoué que nous étions en froid avec Swann, on
eût cherché à les réconcilier plus qu’elle ne souhaitait, à cause de
Mme Swann qu’elle ne voulait pas connaître" :start 0 :end 249) (sentence :text "«C’est lui qui est venu me
saluer, je ne le voyais pas" :start 250 :end 305)
 ))