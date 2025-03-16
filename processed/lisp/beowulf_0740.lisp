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
 :text "--Non, mais voyez-vous, cette sale bête! employant sans s’en rendre
compte, et peut-être en obéissant au même besoin obscur de se
justifier--comme Françoise à Combray quand le poulet ne voulait pas
mourir--les mots qu’arrachent les derniers sursauts d’un animal
inoffensif qui agonise, au paysan qui est en train de l’écraser."
 :tokens 50
 :processed-at "2025-03-16T02:18:14.564393"
 :entities (list
  (entity :text "--Non," :label "ORG" :start 0 :end 6) (entity :text "Françoise" :label "ORG" :start 147 :end 156) (entity :text "Combray" :label "ORG" :start 159 :end 166)
 )
 :sentences (list
  (sentence :text "--Non, mais voyez-vous, cette sale bête! employant sans s’en rendre
compte, et peut-être en obéissant au même besoin obscur de se
justifier--comme Françoise à Combray quand le poulet ne voulait pas
mourir--les mots qu’arrachent les derniers sursauts d’un animal
inoffensif qui agonise, au paysan qui est en train de l’écraser" :start 0 :end 325)
 ))