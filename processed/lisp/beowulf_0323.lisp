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
 :text "Souvent le soleil se cachait derrière une nuée qui déformait son ovale
et dont il jaunissait la bordure. L’éclat, mais non la clarté, était
enlevé à la campagne où toute vie semblait suspendue, tandis que le
petit village de Roussainville sculptait sur le ciel le relief de ses
arêtes blanches avec une précision et un fini accablants. Un peu de
vent faisait envoler un corbeau qui retombait dans le lointain, et,
contre le ciel blanchissant, le lointain des bois paraissait plus
bleu, comme peint dans ces camaïeux qui décorent les trumeaux des
anciennes demeures."
 :tokens 94
 :processed-at "2025-03-16T02:18:14.132269"
 :entities (list
  (entity :text "Souvent" :label "ORG" :start 0 :end 7) (entity :text "Roussainville" :label "ORG" :start 225 :end 238)
 )
 :sentences (list
  (sentence :text "Souvent le soleil se cachait derrière une nuée qui déformait son ovale
et dont il jaunissait la bordure" :start 0 :end 103) (sentence :text "L’éclat, mais non la clarté, était
enlevé à la campagne où toute vie semblait suspendue, tandis que le
petit village de Roussainville sculptait sur le ciel le relief de ses
arêtes blanches avec une précision et un fini accablants" :start 104 :end 334) (sentence :text "Un peu de
vent faisait envoler un corbeau qui retombait dans le lointain, et,
contre le ciel blanchissant, le lointain des bois paraissait plus
bleu, comme peint dans ces camaïeux qui décorent les trumeaux des
anciennes demeures" :start 335 :end 564)
 ))