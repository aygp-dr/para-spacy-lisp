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
 :text "--«L’acteur, je ne sais pas. Mais je sais qu’il n’égale aucun artiste
homme à la Berma qu’il met au-dessus de tout. L’avez-vous entendue?»"
 :tokens 23
 :processed-at "2025-03-16T02:18:13.995083"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 29 :end 33) (entity :text "Berma" :label "ORG" :start 81 :end 86)
 )
 :sentences (list
  (sentence :text "--«L’acteur, je ne sais pas" :start 0 :end 27) (sentence :text "Mais je sais qu’il n’égale aucun artiste
homme à la Berma qu’il met au-dessus de tout" :start 28 :end 114) (sentence :text "L’avez-vous entendue?»" :start 115 :end 138)
 ))