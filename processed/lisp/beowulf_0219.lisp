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
 :text "Et se précipitant sur un livre de messe relié en velours violet, monté
d’or, et d’où, dans sa hâte, elle laissait s’échapper de ces images,
bordées d’un bandeau de dentelle de papier jaunissante, qui marquent
les pages des fêtes, ma tante, tout en avalant ses gouttes commençait
à lire au plus vite les textes sacrés dont l’intelligence lui était
légèrement obscurcie par l’incertitude de savoir si, prise aussi
longtemps après l’eau de Vichy, la pepsine serait encore capable de la
rattraper et de la faire descendre. «Trois heures, c’est incroyable ce
que le temps passe!»"
 :tokens 95
 :processed-at "2025-03-16T02:18:14.009748"
 :entities (list
  (entity :text "Vichy," :label "ORG" :start 437 :end 443) (entity :text "«Trois" :label "ORG" :start 519 :end 525)
 )
 :sentences (list
  (sentence :text "Et se précipitant sur un livre de messe relié en velours violet, monté
d’or, et d’où, dans sa hâte, elle laissait s’échapper de ces images,
bordées d’un bandeau de dentelle de papier jaunissante, qui marquent
les pages des fêtes, ma tante, tout en avalant ses gouttes commençait
à lire au plus vite les textes sacrés dont l’intelligence lui était
légèrement obscurcie par l’incertitude de savoir si, prise aussi
longtemps après l’eau de Vichy, la pepsine serait encore capable de la
rattraper et de la faire descendre" :start 0 :end 517) (sentence :text "«Trois heures, c’est incroyable ce
que le temps passe!»" :start 518 :end 574)
 ))