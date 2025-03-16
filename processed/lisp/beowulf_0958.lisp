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
 :text "--D’ailleurs, ajouta Mme Cottard, Mme de Crécy était là et c’est tout
dire. Quand Odette est quelque part elle ne peut jamais rester bien
longtemps sans parler de vous. Et vous pensez que ce n’est pas en mal.
Comment! vous en doutez, dit-elle, en voyant un geste sceptique de
Swann?"
 :tokens 50
 :processed-at "2025-03-16T02:18:14.808205"
 :entities (list
  (entity :text "Cottard," :label "ORG" :start 25 :end 33) (entity :text "Crécy" :label "ORG" :start 41 :end 46) (entity :text "Quand" :label "ORG" :start 76 :end 81) (entity :text "Odette" :label "ORG" :start 82 :end 88) (entity :text "Comment!" :label "ORG" :start 209 :end 217) (entity :text "Swann?" :label "ORG" :start 276 :end 282)
 )
 :sentences (list
  (sentence :text "--D’ailleurs, ajouta Mme Cottard, Mme de Crécy était là et c’est tout
dire" :start 0 :end 74) (sentence :text "Quand Odette est quelque part elle ne peut jamais rester bien
longtemps sans parler de vous" :start 75 :end 167) (sentence :text "Et vous pensez que ce n’est pas en mal" :start 168 :end 207) (sentence :text "Comment! vous en doutez, dit-elle, en voyant un geste sceptique de
Swann?" :start 208 :end 282)
 ))