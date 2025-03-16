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
 :text "En somme elle ne pouvait tout de même pas l’empêcher d’aller à
Pierrefonds s’il en avait envie! Or, justement, il sentait qu’il en
avait envie, et que s’il n’avait pas connu Odette, certainement il y
serait allé. Il y avait longtemps qu’il voulait se faire une idée plus
précise des travaux de restauration de Viollet-le-Duc. Et par le temps
qu’il faisait, il éprouvait l’impérieux désir d’une promenade dans la
forêt de Compiègne."
 :tokens 72
 :processed-at "2025-03-16T02:18:14.586821"
 :entities (list
  (entity :text "Pierrefonds" :label "ORG" :start 63 :end 74) (entity :text "Odette," :label "ORG" :start 174 :end 181) (entity :text "Compiègne." :label "ORG" :start 421 :end 431)
 )
 :sentences (list
  (sentence :text "En somme elle ne pouvait tout de même pas l’empêcher d’aller à
Pierrefonds s’il en avait envie! Or, justement, il sentait qu’il en
avait envie, et que s’il n’avait pas connu Odette, certainement il y
serait allé" :start 0 :end 211) (sentence :text "Il y avait longtemps qu’il voulait se faire une idée plus
précise des travaux de restauration de Viollet-le-Duc" :start 212 :end 324) (sentence :text "Et par le temps
qu’il faisait, il éprouvait l’impérieux désir d’une promenade dans la
forêt de Compiègne" :start 325 :end 430)
 ))