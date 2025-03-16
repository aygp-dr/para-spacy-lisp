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
 :text "--«Mais non, madame Octave, mon temps n’est pas si cher; celui qui l’a
fait ne nous l’a pas vendu. Je vas seulement voir si mon feu ne
s’éteint pas.»"
 :tokens 29
 :processed-at "2025-03-16T02:18:13.871060"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Octave," :label "ORG" :start 20 :end 27)
 )
 :sentences (list
  (sentence :text "--«Mais non, madame Octave, mon temps n’est pas si cher; celui qui l’a
fait ne nous l’a pas vendu" :start 0 :end 97) (sentence :text "Je vas seulement voir si mon feu ne
s’éteint pas" :start 98 :end 147) (sentence :text "»" :start 148 :end 149)
 ))