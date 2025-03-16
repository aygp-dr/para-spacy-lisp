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
 :text "Sur la table, il y avait la même assiette de massepains que
d’habitude; mon oncle avait sa vareuse de tous les jours, mais en face
de lui, en robe de soie rose avec un grand collier de perles au cou,
était assise une jeune femme qui achevait de manger une mandarine.
L’incertitude où j’étais s’il fallait dire madame ou mademoiselle me
fit rougir et n’osant pas trop tourner les yeux de son côté de peur
d’avoir à lui parler, j’allai embrasser mon oncle. Elle me regardait
en souriant, mon oncle lui dit: «Mon neveu», sans lui dire mon nom, ni
me dire le sien, sans doute parce que, depuis les difficultés qu’il
avait eues avec mon grand-père, il tâchait autant que possible
d’éviter tout trait d’union entre sa famille et ce genre de relations."
 :tokens 134
 :processed-at "2025-03-16T02:18:13.925606"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 455 :end 459) (entity :text "«Mon" :label "ORG" :start 505 :end 509)
 )
 :sentences (list
  (sentence :text "Sur la table, il y avait la même assiette de massepains que
d’habitude; mon oncle avait sa vareuse de tous les jours, mais en face
de lui, en robe de soie rose avec un grand collier de perles au cou,
était assise une jeune femme qui achevait de manger une mandarine" :start 0 :end 265) (sentence :text "L’incertitude où j’étais s’il fallait dire madame ou mademoiselle me
fit rougir et n’osant pas trop tourner les yeux de son côté de peur
d’avoir à lui parler, j’allai embrasser mon oncle" :start 266 :end 453) (sentence :text "Elle me regardait
en souriant, mon oncle lui dit: «Mon neveu», sans lui dire mon nom, ni
me dire le sien, sans doute parce que, depuis les difficultés qu’il
avait eues avec mon grand-père, il tâchait autant que possible
d’éviter tout trait d’union entre sa famille et ce genre de relations" :start 454 :end 744)
 ))