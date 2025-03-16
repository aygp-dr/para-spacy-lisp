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
 :text "De tous les modes de production de l’amour, de tous les agents de
dissémination du mal sacré, il est bien l’un des plus efficaces, ce
grand souffle d’agitation qui parfois passe sur nous. Alors l’être
avec qui nous nous plaisons à ce moment-là, le sort en est jeté, c’est
lui que nous aimerons. Il n’est même pas besoin qu’il nous plût
jusque-là plus ou même autant que d’autres. Ce qu’il fallait, c’est
que notre goût pour lui devint exclusif. Et cette condition-là est
réalisée quand--à ce moment où il nous fait défaut--à la recherche des
plaisirs que son agrément nous donnait, s’est brusquement substitué en
nous un besoin anxieux, qui a pour objet cet être même, un besoin
absurde, que les lois de ce monde rendent impossible à satisfaire et
difficile à guérir--le besoin insensé et douloureux de le posséder."
 :tokens 140
 :processed-at "2025-03-16T02:18:14.367998"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "De tous les modes de production de l’amour, de tous les agents de
dissémination du mal sacré, il est bien l’un des plus efficaces, ce
grand souffle d’agitation qui parfois passe sur nous" :start 0 :end 186) (sentence :text "Alors l’être
avec qui nous nous plaisons à ce moment-là, le sort en est jeté, c’est
lui que nous aimerons" :start 187 :end 293) (sentence :text "Il n’est même pas besoin qu’il nous plût
jusque-là plus ou même autant que d’autres" :start 294 :end 378) (sentence :text "Ce qu’il fallait, c’est
que notre goût pour lui devint exclusif" :start 379 :end 443) (sentence :text "Et cette condition-là est
réalisée quand--à ce moment où il nous fait défaut--à la recherche des
plaisirs que son agrément nous donnait, s’est brusquement substitué en
nous un besoin anxieux, qui a pour objet cet être même, un besoin
absurde, que les lois de ce monde rendent impossible à satisfaire et
difficile à guérir--le besoin insensé et douloureux de le posséder" :start 444 :end 814)
 ))