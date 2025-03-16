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
 :text "Pour faire concurrence aux sentiments maladifs que Swann avait pour
Odette, Mme Cottard, meilleur thérapeute que n’eût été son mari, avait
greffé à côté d’eux d’autres sentiments, normaux ceux-là, de
gratitude, d’amitié, des sentiments qui dans l’esprit de Swann
rendraient Odette plus humaine (plus semblable aux autres femmes,
parce que d’autres femmes aussi pouvaient les lui inspirer),
hâteraient sa transformation définitive en cette Odette aimée
d’affection paisible, qui l’avait ramené un soir après une fête chez
le peintre boire un verre d’orangeade avec Forcheville et près de qui
Swann avait entrevu qu’il pourrait vivre heureux."
 :tokens 95
 :processed-at "2025-03-16T02:18:14.812352"
 :entities (list
  (entity :text "Pour" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 51 :end 56) (entity :text "Odette," :label "ORG" :start 68 :end 75) (entity :text "Cottard," :label "ORG" :start 80 :end 88) (entity :text "Swann" :label "ORG" :start 257 :end 262) (entity :text "Odette" :label "ORG" :start 274 :end 280) (entity :text "Odette" :label "ORG" :start 439 :end 445) (entity :text "Forcheville" :label "ORG" :start 564 :end 575) (entity :text "Swann" :label "ORG" :start 591 :end 596)
 )
 :sentences (list
  (sentence :text "Pour faire concurrence aux sentiments maladifs que Swann avait pour
Odette, Mme Cottard, meilleur thérapeute que n’eût été son mari, avait
greffé à côté d’eux d’autres sentiments, normaux ceux-là, de
gratitude, d’amitié, des sentiments qui dans l’esprit de Swann
rendraient Odette plus humaine (plus semblable aux autres femmes,
parce que d’autres femmes aussi pouvaient les lui inspirer),
hâteraient sa transformation définitive en cette Odette aimée
d’affection paisible, qui l’avait ramené un soir après une fête chez
le peintre boire un verre d’orangeade avec Forcheville et près de qui
Swann avait entrevu qu’il pourrait vivre heureux" :start 0 :end 639)
 ))