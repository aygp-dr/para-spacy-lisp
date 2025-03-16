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
 :text "--Ce ne sont pas les Cambremer, c’étaient ses parents à elle; elle est
une demoiselle Legrandin qui venait à Combray. Je ne sais pas si vous
savez que vous êtes la comtesse de Combray et que le chapitre vous
doit une redevance."
 :tokens 42
 :processed-at "2025-03-16T02:18:14.715805"
 :entities (list
  (entity :text "--Ce" :label "ORG" :start 0 :end 4) (entity :text "Cambremer," :label "ORG" :start 21 :end 31) (entity :text "Legrandin" :label "ORG" :start 86 :end 95) (entity :text "Combray." :label "ORG" :start 109 :end 117) (entity :text "Combray" :label "ORG" :start 176 :end 183)
 )
 :sentences (list
  (sentence :text "--Ce ne sont pas les Cambremer, c’étaient ses parents à elle; elle est
une demoiselle Legrandin qui venait à Combray" :start 0 :end 116) (sentence :text "Je ne sais pas si vous
savez que vous êtes la comtesse de Combray et que le chapitre vous
doit une redevance" :start 117 :end 226)
 ))