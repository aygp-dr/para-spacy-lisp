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
 :text "--«Mais je ne veux pas dire la grande, madame Octave, je veux dire la
gamine, celle qui est en pension à Jouy. Il me ressemble de l’avoir
déjà vue ce matin.»"
 :tokens 31
 :processed-at "2025-03-16T02:18:13.876107"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Octave," :label "ORG" :start 46 :end 53) (entity :text "Jouy." :label "ORG" :start 105 :end 110)
 )
 :sentences (list
  (sentence :text "--«Mais je ne veux pas dire la grande, madame Octave, je veux dire la
gamine, celle qui est en pension à Jouy" :start 0 :end 109) (sentence :text "Il me ressemble de l’avoir
déjà vue ce matin" :start 110 :end 155) (sentence :text "»" :start 156 :end 157)
 ))