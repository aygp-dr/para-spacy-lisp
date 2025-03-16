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
 :text "Quelquefois tel couple ami de mes grands-parents et qui jusque-là
s’était plaint de ne jamais voir Swann, leur annonçait avec
satisfaction et peut-être un peu le désir d’exciter l’envie, qu’il
était devenu tout ce qu’il y a de plus charmant pour eux, qu’il ne les
quittait plus. Mon grand-père ne voulait pas troubler leur plaisir
mais regardait ma grand’mère en fredonnant:"
 :tokens 61
 :processed-at "2025-03-16T02:18:14.222062"
 :entities (list
  (entity :text "Quelquefois" :label "ORG" :start 0 :end 11) (entity :text "Swann," :label "ORG" :start 99 :end 105)
 )
 :sentences (list
  (sentence :text "Quelquefois tel couple ami de mes grands-parents et qui jusque-là
s’était plaint de ne jamais voir Swann, leur annonçait avec
satisfaction et peut-être un peu le désir d’exciter l’envie, qu’il
était devenu tout ce qu’il y a de plus charmant pour eux, qu’il ne les
quittait plus" :start 0 :end 277) (sentence :text "Mon grand-père ne voulait pas troubler leur plaisir
mais regardait ma grand’mère en fredonnant:" :start 278 :end 374)
 ))