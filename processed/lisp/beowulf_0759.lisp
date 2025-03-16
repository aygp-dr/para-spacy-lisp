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
 :text "Mais si elle n’y réussissait pas, M. Verdurin partait en campagne,
trouvait un bureau de télégraphe ou un messager et s’informait de ceux
des fidèles qui avaient quelqu’un à faire prévenir. Mais Odette le
remerciait et disait qu’elle n’avait de dépêche à faire pour personne,
car elle avait dit à Swann une fois pour toutes qu’en lui en envoyant
une aux yeux de tous, elle se compromettrait. Parfois c’était pour
plusieurs jours qu’elle s’absentait, les Verdurin l’emmenaient voir
les tombeaux de Dreux, ou à Compiègne admirer, sur le conseil du
peintre, des couchers de soleil en forêt et on poussait jusqu’au
château de Pierrefonds."
 :tokens 104
 :processed-at "2025-03-16T02:18:14.583974"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Verdurin" :label "ORG" :start 37 :end 45) (entity :text "Mais" :label "ORG" :start 190 :end 194) (entity :text "Odette" :label "ORG" :start 195 :end 201) (entity :text "Swann" :label "ORG" :start 297 :end 302) (entity :text "Parfois" :label "ORG" :start 392 :end 399) (entity :text "Verdurin" :label "ORG" :start 454 :end 462) (entity :text "Dreux," :label "ORG" :start 497 :end 503) (entity :text "Compiègne" :label "ORG" :start 509 :end 518) (entity :text "Pierrefonds." :label "ORG" :start 622 :end 634)
 )
 :sentences (list
  (sentence :text "Mais si elle n’y réussissait pas, M" :start 0 :end 35) (sentence :text "Verdurin partait en campagne,
trouvait un bureau de télégraphe ou un messager et s’informait de ceux
des fidèles qui avaient quelqu’un à faire prévenir" :start 36 :end 188) (sentence :text "Mais Odette le
remerciait et disait qu’elle n’avait de dépêche à faire pour personne,
car elle avait dit à Swann une fois pour toutes qu’en lui en envoyant
une aux yeux de tous, elle se compromettrait" :start 189 :end 390) (sentence :text "Parfois c’était pour
plusieurs jours qu’elle s’absentait, les Verdurin l’emmenaient voir
les tombeaux de Dreux, ou à Compiègne admirer, sur le conseil du
peintre, des couchers de soleil en forêt et on poussait jusqu’au
château de Pierrefonds" :start 391 :end 633)
 ))