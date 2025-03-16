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
 :text "Je me souvins que c’étaient les mots que M. Vinteuil avait dits à mon
père à propos du morceau de musique. Ce portrait leur servait sans
doute habituellement pour des profanations rituelles, car son amie lui
répondit par ces paroles qui devaient faire partie de ses réponses
liturgiques:"
 :tokens 48
 :processed-at "2025-03-16T02:18:14.159644"
 :entities (list
  (entity :text "Vinteuil" :label "ORG" :start 44 :end 52)
 )
 :sentences (list
  (sentence :text "Je me souvins que c’étaient les mots que M" :start 0 :end 42) (sentence :text "Vinteuil avait dits à mon
père à propos du morceau de musique" :start 43 :end 105) (sentence :text "Ce portrait leur servait sans
doute habituellement pour des profanations rituelles, car son amie lui
répondit par ces paroles qui devaient faire partie de ses réponses
liturgiques:" :start 106 :end 287)
 ))