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
 :text "--Il n’est pas franc, c’est un monsieur cauteleux, toujours entre le
zist et le zest. Il veut toujours ménager la chèvre et le chou. Quelle
différence avec Forcheville. Voilà au moins un homme qui vous dit
carrément sa façon de penser. Ça vous plaît ou ça ne vous plaît pas.
Ce n’est pas comme l’autre qui n’est jamais ni figue ni raisin. Du
reste Odette a l’air de préférer joliment le Forcheville, et je lui
donne raison. Et puis enfin puisque Swann veut nous la faire à l’homme
du monde, au champion des duchesses, au moins l’autre a son titre; il
est toujours comte de Forcheville, ajouta-t-il d’un air délicat, comme
si, au courant de l’histoire de ce comté, il en soupesait
minutieusement la valeur particulière."
 :tokens 126
 :processed-at "2025-03-16T02:18:14.505477"
 :entities (list
  (entity :text "--Il" :label "ORG" :start 0 :end 4) (entity :text "Quelle" :label "ORG" :start 133 :end 139) (entity :text "Forcheville." :label "ORG" :start 156 :end 168) (entity :text "Voilà" :label "ORG" :start 169 :end 174) (entity :text "Odette" :label "ORG" :start 348 :end 354) (entity :text "Forcheville," :label "ORG" :start 387 :end 399) (entity :text "Swann" :label "ORG" :start 446 :end 451) (entity :text "Forcheville," :label "ORG" :start 573 :end 585)
 )
 :sentences (list
  (sentence :text "--Il n’est pas franc, c’est un monsieur cauteleux, toujours entre le
zist et le zest" :start 0 :end 84) (sentence :text "Il veut toujours ménager la chèvre et le chou" :start 85 :end 131) (sentence :text "Quelle
différence avec Forcheville" :start 132 :end 167) (sentence :text "Voilà au moins un homme qui vous dit
carrément sa façon de penser" :start 168 :end 234) (sentence :text "Ça vous plaît ou ça ne vous plaît pas" :start 235 :end 273) (sentence :text "Ce n’est pas comme l’autre qui n’est jamais ni figue ni raisin" :start 274 :end 337) (sentence :text "Du
reste Odette a l’air de préférer joliment le Forcheville, et je lui
donne raison" :start 338 :end 422) (sentence :text "Et puis enfin puisque Swann veut nous la faire à l’homme
du monde, au champion des duchesses, au moins l’autre a son titre; il
est toujours comte de Forcheville, ajouta-t-il d’un air délicat, comme
si, au courant de l’histoire de ce comté, il en soupesait
minutieusement la valeur particulière" :start 423 :end 717)
 ))