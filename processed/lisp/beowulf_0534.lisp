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
 :text "--«Tu me permettras de ne pas être de ton avis, dit M. Verdurin, il ne
me revient qu’à demi ce monsieur; je le trouve poseur.»"
 :tokens 25
 :processed-at "2025-03-16T02:18:14.353563"
 :entities (list
  (entity :text "--«Tu" :label "ORG" :start 0 :end 5) (entity :text "Verdurin," :label "ORG" :start 55 :end 64)
 )
 :sentences (list
  (sentence :text "--«Tu me permettras de ne pas être de ton avis, dit M" :start 0 :end 53) (sentence :text "Verdurin, il ne
me revient qu’à demi ce monsieur; je le trouve poseur" :start 54 :end 124) (sentence :text "»" :start 125 :end 126)
 ))