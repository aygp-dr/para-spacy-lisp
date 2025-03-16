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
 :text "Un jour ma mère me dit: «Puisque tu parles toujours de Mme de
Guermantes, comme le docteur Percepied l’a très bien soignée il y a
quatre ans, elle doit venir à Combray pour assister au mariage de sa
fille. Tu pourras l’apercevoir à la cérémonie.» C’était du reste par
le docteur Percepied que j’avais le plus entendu parler de Mme de
Guermantes, et il nous avait même montré le numéro d’une revue
illustrée où elle était représentée dans le costume qu’elle portait à
un bal travesti chez la princesse de Léon."
 :tokens 91
 :processed-at "2025-03-16T02:18:14.182202"
 :entities (list
  (entity :text "«Puisque" :label "ORG" :start 24 :end 32) (entity :text "Guermantes," :label "ORG" :start 62 :end 73) (entity :text "Percepied" :label "PERSON" :start 91 :end 100) (entity :text "Combray" :label "ORG" :start 160 :end 167) (entity :text "Percepied" :label "PERSON" :start 279 :end 288) (entity :text "Guermantes," :label "ORG" :start 334 :end 345) (entity :text "Léon." :label "ORG" :start 504 :end 509)
 )
 :sentences (list
  (sentence :text "Un jour ma mère me dit: «Puisque tu parles toujours de Mme de
Guermantes, comme le docteur Percepied l’a très bien soignée il y a
quatre ans, elle doit venir à Combray pour assister au mariage de sa
fille" :start 0 :end 204) (sentence :text "Tu pourras l’apercevoir à la cérémonie" :start 205 :end 244) (sentence :text "» C’était du reste par
le docteur Percepied que j’avais le plus entendu parler de Mme de
Guermantes, et il nous avait même montré le numéro d’une revue
illustrée où elle était représentée dans le costume qu’elle portait à
un bal travesti chez la princesse de Léon" :start 245 :end 508)
 ))