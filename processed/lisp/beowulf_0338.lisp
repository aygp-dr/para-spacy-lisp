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
 :text "Mais elle devina sans doute que son amie penserait qu’elle n’avait dit
ces mots que pour la provoquer à lui répondre par certains autres
qu’elle avait en effet le désir d’entendre, mais que par discrétion
elle voulait lui laisser l’initiative de prononcer. Aussi son regard
que je ne pouvais distinguer, dut-il prendre l’expression qui plaisait
tant à ma grand’mère, quand elle ajouta vivement:"
 :tokens 63
 :processed-at "2025-03-16T02:18:14.152666"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4)
 )
 :sentences (list
  (sentence :text "Mais elle devina sans doute que son amie penserait qu’elle n’avait dit
ces mots que pour la provoquer à lui répondre par certains autres
qu’elle avait en effet le désir d’entendre, mais que par discrétion
elle voulait lui laisser l’initiative de prononcer" :start 0 :end 255) (sentence :text "Aussi son regard
que je ne pouvais distinguer, dut-il prendre l’expression qui plaisait
tant à ma grand’mère, quand elle ajouta vivement:" :start 256 :end 394)
 ))