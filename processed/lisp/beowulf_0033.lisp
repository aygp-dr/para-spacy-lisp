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
 :text "Or le propos relatif à Swann avait eu pour effet non pas de relever
celui-ci dans l’esprit de ma grand’tante, mais d’y abaisser Mme de
Villeparisis. Il semblait que la considération que, sur la foi de ma
grand’mère, nous accordions à Mme de Villeparisis, lui créât un devoir
de ne rien faire qui l’en rendît moins digne et auquel elle avait
manqué en apprenant l’existence de Swann, en permettant à des parents
à elle de le fréquenter. «Comment elle connaît Swann? Pour une
personne que tu prétendais parente du maréchal de Mac-Mahon!» Cette
opinion de mes parents sur les relations de Swann leur parut ensuite
confirmée par son mariage avec une femme de la pire société, presque
une cocotte que, d’ailleurs, il ne chercha jamais à présenter,
continuant à venir seul chez nous, quoique de moins en moins, mais
d’après laquelle ils crurent pouvoir juger--supposant que c’était là
qu’il l’avait prise--le milieu, inconnu d’eux, qu’il fréquentait
habituellement."
 :tokens 157
 :processed-at "2025-03-16T02:18:13.806105"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 23 :end 28) (entity :text "Villeparisis." :label "ORG" :start 135 :end 148) (entity :text "Villeparisis," :label "ORG" :start 241 :end 254) (entity :text "Swann," :label "ORG" :start 376 :end 382) (entity :text "«Comment" :label "ORG" :start 436 :end 444) (entity :text "Swann?" :label "ORG" :start 458 :end 464) (entity :text "Pour" :label "ORG" :start 465 :end 469) (entity :text "Mac-Mahon!»" :label "ORG" :start 524 :end 535) (entity :text "Cette" :label "ORG" :start 536 :end 541) (entity :text "Swann" :label "ORG" :start 586 :end 591)
 )
 :sentences (list
  (sentence :text "Or le propos relatif à Swann avait eu pour effet non pas de relever
celui-ci dans l’esprit de ma grand’tante, mais d’y abaisser Mme de
Villeparisis" :start 0 :end 147) (sentence :text "Il semblait que la considération que, sur la foi de ma
grand’mère, nous accordions à Mme de Villeparisis, lui créât un devoir
de ne rien faire qui l’en rendît moins digne et auquel elle avait
manqué en apprenant l’existence de Swann, en permettant à des parents
à elle de le fréquenter" :start 148 :end 434) (sentence :text "«Comment elle connaît Swann? Pour une
personne que tu prétendais parente du maréchal de Mac-Mahon!» Cette
opinion de mes parents sur les relations de Swann leur parut ensuite
confirmée par son mariage avec une femme de la pire société, presque
une cocotte que, d’ailleurs, il ne chercha jamais à présenter,
continuant à venir seul chez nous, quoique de moins en moins, mais
d’après laquelle ils crurent pouvoir juger--supposant que c’était là
qu’il l’avait prise--le milieu, inconnu d’eux, qu’il fréquentait
habituellement" :start 435 :end 958)
 ))