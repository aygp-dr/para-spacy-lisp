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
 :text "Et Mme Cottard sortit de son manchon pour la tendre à Swann sa main
gantée de blanc d’où s’échappa, avec une correspondance, une vision de
haute vie qui remplit l’omnibus, mêlée à l’odeur du teinturier. Et
Swann se sentit déborder de tendresse pour elle, autant que pour Mme
Verdurin (et presque autant que pour Odette, car le sentiment qu’il
éprouvait pour cette dernière n’étant plus mêlé de douleur, n’était
plus guère de l’amour), tandis que de la plate-forme il la suivait de
ses yeux attendris, qui enfilait courageusement la rue Bonaparte,
l’aigrette haute, d’une main relevant sa jupe, de l’autre tenant son
en-tout-cas et son porte-cartes dont elle laissait voir le chiffre,
laissant baller devant elle son manchon."
 :tokens 118
 :processed-at "2025-03-16T02:18:14.811339"
 :entities (list
  (entity :text "Cottard" :label "ORG" :start 7 :end 14) (entity :text "Swann" :label "ORG" :start 54 :end 59) (entity :text "Swann" :label "ORG" :start 206 :end 211) (entity :text "Verdurin" :label "ORG" :start 275 :end 283) (entity :text "Odette," :label "ORG" :start 312 :end 319) (entity :text "Bonaparte," :label "ORG" :start 536 :end 546)
 )
 :sentences (list
  (sentence :text "Et Mme Cottard sortit de son manchon pour la tendre à Swann sa main
gantée de blanc d’où s’échappa, avec une correspondance, une vision de
haute vie qui remplit l’omnibus, mêlée à l’odeur du teinturier" :start 0 :end 201) (sentence :text "Et
Swann se sentit déborder de tendresse pour elle, autant que pour Mme
Verdurin (et presque autant que pour Odette, car le sentiment qu’il
éprouvait pour cette dernière n’étant plus mêlé de douleur, n’était
plus guère de l’amour), tandis que de la plate-forme il la suivait de
ses yeux attendris, qui enfilait courageusement la rue Bonaparte,
l’aigrette haute, d’une main relevant sa jupe, de l’autre tenant son
en-tout-cas et son porte-cartes dont elle laissait voir le chiffre,
laissant baller devant elle son manchon" :start 202 :end 723)
 ))