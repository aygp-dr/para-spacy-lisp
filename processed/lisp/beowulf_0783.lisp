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
 :text "Ainsi, par le chimisme même de son mal, après qu’il avait fait de la
jalousie avec son amour, il recommençait à fabriquer de la tendresse,
de la pitié pour Odette. Elle était redevenue l’Odette charmante et
bonne. Il avait des remords d’avoir été dur pour elle. Il voulait
qu’elle vînt près de lui et, auparavant, il voulait lui avoir procuré
quelque plaisir, pour voir la reconnaissance pétrir son visage et
modeler son sourire."
 :tokens 73
 :processed-at "2025-03-16T02:18:14.614531"
 :entities (list
  (entity :text "Odette." :label "ORG" :start 156 :end 163) (entity :text "Elle" :label "ORG" :start 164 :end 168)
 )
 :sentences (list
  (sentence :text "Ainsi, par le chimisme même de son mal, après qu’il avait fait de la
jalousie avec son amour, il recommençait à fabriquer de la tendresse,
de la pitié pour Odette" :start 0 :end 162) (sentence :text "Elle était redevenue l’Odette charmante et
bonne" :start 163 :end 212) (sentence :text "Il avait des remords d’avoir été dur pour elle" :start 213 :end 260) (sentence :text "Il voulait
qu’elle vînt près de lui et, auparavant, il voulait lui avoir procuré
quelque plaisir, pour voir la reconnaissance pétrir son visage et
modeler son sourire" :start 261 :end 428)
 ))