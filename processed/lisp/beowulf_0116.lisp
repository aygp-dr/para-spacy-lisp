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
 :text "--«Ah! soupirait ma tante, je voudrais que ce soit déjà l’heure
d’Eulalie. Il n’y a vraiment qu’elle qui pourra me dire cela.»"
 :tokens 22
 :processed-at "2025-03-16T02:18:13.909371"
 :entities (list
  (entity :text "--«Ah!" :label "ORG" :start 0 :end 6)
 )
 :sentences (list
  (sentence :text "--«Ah! soupirait ma tante, je voudrais que ce soit déjà l’heure
d’Eulalie" :start 0 :end 73) (sentence :text "Il n’y a vraiment qu’elle qui pourra me dire cela" :start 74 :end 124) (sentence :text "»" :start 125 :end 126)
 ))