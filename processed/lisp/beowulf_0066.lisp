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
 :text "Je n’étais pas avec ma tante depuis cinq minutes, qu’elle me renvoyait
par peur que je la fatigue. Elle tendait à mes lèvres son triste front
pâle et fade sur lequel, à cette heure matinale, elle n’avait pas
encore arrangé ses faux cheveux, et où les vertèbres transparaissaient
comme les pointes d’une couronne d’épines ou les grains d’un rosaire,
et elle me disait: «Allons, mon pauvre enfant, va-t’en, va te préparer
pour la messe; et si en bas tu rencontres Françoise, dis-lui de ne pas
s’amuser trop longtemps avec vous, qu’elle monte bientôt voir si je
n’ai besoin de rien.»"
 :tokens 100
 :processed-at "2025-03-16T02:18:13.857684"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 99 :end 103) (entity :text "«Allons," :label "ORG" :start 368 :end 376) (entity :text "Françoise," :label "ORG" :start 462 :end 472)
 )
 :sentences (list
  (sentence :text "Je n’étais pas avec ma tante depuis cinq minutes, qu’elle me renvoyait
par peur que je la fatigue" :start 0 :end 97) (sentence :text "Elle tendait à mes lèvres son triste front
pâle et fade sur lequel, à cette heure matinale, elle n’avait pas
encore arrangé ses faux cheveux, et où les vertèbres transparaissaient
comme les pointes d’une couronne d’épines ou les grains d’un rosaire,
et elle me disait: «Allons, mon pauvre enfant, va-t’en, va te préparer
pour la messe; et si en bas tu rencontres Françoise, dis-lui de ne pas
s’amuser trop longtemps avec vous, qu’elle monte bientôt voir si je
n’ai besoin de rien" :start 98 :end 578) (sentence :text "»" :start 579 :end 580)
 ))