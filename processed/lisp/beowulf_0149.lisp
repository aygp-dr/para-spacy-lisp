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
 :text "Il fallait que ces Vertus et ces Vices de Padoue eussent en eux bien
de la réalité puisqu’ils m’apparaissaient comme aussi vivants que la
servante enceinte, et qu’elle-même ne me semblait pas beaucoup moins
allégorique. Et peut-être cette non-participation (du moins apparente)
de l’âme d’un être à la vertu qui agit par lui, a aussi en dehors de
sa valeur esthétique une réalité sinon psychologique, au moins, comme
on dit, physiognomonique. Quand, plus tard, j’ai eu l’occasion de
rencontrer, au cours de ma vie, dans des couvents par exemple, des
incarnations vraiment saintes de la charité active, elles avaient
généralement un air allègre, positif, indifférent et brusque de
chirurgien pressé, ce visage où ne se lit aucune commisération, aucun
attendrissement devant la souffrance humaine, aucune crainte de la
heurter, et qui est le visage sans douceur, le visage antipathique et
sublime de la vraie bonté."
 :tokens 145
 :processed-at "2025-03-16T02:18:13.943259"
 :entities (list
  (entity :text "Vertus" :label "ORG" :start 19 :end 25) (entity :text "Vices" :label "ORG" :start 33 :end 38) (entity :text "Padoue" :label "ORG" :start 42 :end 48) (entity :text "Quand," :label "ORG" :start 443 :end 449)
 )
 :sentences (list
  (sentence :text "Il fallait que ces Vertus et ces Vices de Padoue eussent en eux bien
de la réalité puisqu’ils m’apparaissaient comme aussi vivants que la
servante enceinte, et qu’elle-même ne me semblait pas beaucoup moins
allégorique" :start 0 :end 218) (sentence :text "Et peut-être cette non-participation (du moins apparente)
de l’âme d’un être à la vertu qui agit par lui, a aussi en dehors de
sa valeur esthétique une réalité sinon psychologique, au moins, comme
on dit, physiognomonique" :start 219 :end 441) (sentence :text "Quand, plus tard, j’ai eu l’occasion de
rencontrer, au cours de ma vie, dans des couvents par exemple, des
incarnations vraiment saintes de la charité active, elles avaient
généralement un air allègre, positif, indifférent et brusque de
chirurgien pressé, ce visage où ne se lit aucune commisération, aucun
attendrissement devant la souffrance humaine, aucune crainte de la
heurter, et qui est le visage sans douceur, le visage antipathique et
sublime de la vraie bonté" :start 442 :end 912)
 ))