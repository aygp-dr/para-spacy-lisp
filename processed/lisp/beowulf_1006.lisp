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
 :text "--Mais pourquoi parles-tu tout le temps de cette rue, elle n’a rien
d’extraordinaire, elle est très agréable à habiter parce qu’elle est à
deux pas du Bois, mais il y en a dix autres dans le même cas."
 :tokens 38
 :processed-at "2025-03-16T02:18:14.874648"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Bois," :label "ORG" :start 151 :end 156)
 )
 :sentences (list
  (sentence :text "--Mais pourquoi parles-tu tout le temps de cette rue, elle n’a rien
d’extraordinaire, elle est très agréable à habiter parce qu’elle est à
deux pas du Bois, mais il y en a dix autres dans le même cas" :start 0 :end 199)
 ))