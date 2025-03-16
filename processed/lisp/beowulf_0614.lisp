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
 :text "Et ravie et confuse de l’à-propos et de la hardiesse qu’il y avait à
faire ainsi une allusion discrète, mais claire, à la nouvelle et
retentissante pièce de Dumas, elle éclata d’un rire charmant
d’ingénue, peu bruyant, mais si irrésistible qu’elle resta quelques
instants sans pouvoir le maîtriser. «Qui est cette dame? elle a de
l’esprit», dit Forcheville."
 :tokens 58
 :processed-at "2025-03-16T02:18:14.443345"
 :entities (list
  (entity :text "Dumas," :label "ORG" :start 157 :end 163) (entity :text "«Qui" :label "ORG" :start 299 :end 303) (entity :text "Forcheville." :label "ORG" :start 345 :end 357)
 )
 :sentences (list
  (sentence :text "Et ravie et confuse de l’à-propos et de la hardiesse qu’il y avait à
faire ainsi une allusion discrète, mais claire, à la nouvelle et
retentissante pièce de Dumas, elle éclata d’un rire charmant
d’ingénue, peu bruyant, mais si irrésistible qu’elle resta quelques
instants sans pouvoir le maîtriser" :start 0 :end 297) (sentence :text "«Qui est cette dame? elle a de
l’esprit», dit Forcheville" :start 298 :end 356)
 ))