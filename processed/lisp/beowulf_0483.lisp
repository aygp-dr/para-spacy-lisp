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
 :text "--Ah! c’est plus chic? dit Mme Verdurin. Alors il y a du chic dans les
maladies, maintenant? je ne savais pas ça... Ce que vous m’amusez,
s’écria-t-elle tout à coup en plongeant sa figure dans ses mains. Et
moi, bonne bête qui discutais sérieusement sans m’apercevoir que vous
me faisiez monter à l’arbre."
 :tokens 53
 :processed-at "2025-03-16T02:18:14.302003"
 :entities (list
  (entity :text "--Ah!" :label "ORG" :start 0 :end 5) (entity :text "Verdurin." :label "ORG" :start 31 :end 40)
 )
 :sentences (list
  (sentence :text "--Ah! c’est plus chic? dit Mme Verdurin" :start 0 :end 39) (sentence :text "Alors il y a du chic dans les
maladies, maintenant? je ne savais pas ça" :start 40 :end 112) (sentence :text "Ce que vous m’amusez,
s’écria-t-elle tout à coup en plongeant sa figure dans ses mains" :start 115 :end 202) (sentence :text "Et
moi, bonne bête qui discutais sérieusement sans m’apercevoir que vous
me faisiez monter à l’arbre" :start 203 :end 304)
 ))