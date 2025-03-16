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
 :text "C’est à quoi Eulalie excellait. Ma tante pouvait lui dire vingt fois
en une minute: «C’est la fin, ma pauvre Eulalie», vingt fois Eulalie
répondait: «Connaissant votre maladie comme vous la connaissez, madame
Octave, vous irez à cent ans, comme me disait hier encore Mme
Sazerin.» (Une des plus fermes croyances d’Eulalie et que le nombre
imposant des démentis apportés par l’expérience n’avait pas suffi à
entamer, était que Mme Sazerat s’appelait Mme Sazerin.)"
 :tokens 74
 :processed-at "2025-03-16T02:18:13.911896"
 :entities (list
  (entity :text "Eulalie" :label "ORG" :start 13 :end 20) (entity :text "Eulalie»," :label "ORG" :start 109 :end 118) (entity :text "Eulalie" :label "ORG" :start 130 :end 137) (entity :text "«Connaissant" :label "ORG" :start 149 :end 161) (entity :text "Octave," :label "ORG" :start 209 :end 216) (entity :text "Sazerin.»" :label "ORG" :start 271 :end 280) (entity :text "(Une" :label "ORG" :start 281 :end 285) (entity :text "Sazerat" :label "ORG" :start 430 :end 437) (entity :text "Sazerin.)" :label "ORG" :start 453 :end 462)
 )
 :sentences (list
  (sentence :text "C’est à quoi Eulalie excellait" :start 0 :end 30) (sentence :text "Ma tante pouvait lui dire vingt fois
en une minute: «C’est la fin, ma pauvre Eulalie», vingt fois Eulalie
répondait: «Connaissant votre maladie comme vous la connaissez, madame
Octave, vous irez à cent ans, comme me disait hier encore Mme
Sazerin" :start 31 :end 278) (sentence :text "» (Une des plus fermes croyances d’Eulalie et que le nombre
imposant des démentis apportés par l’expérience n’avait pas suffi à
entamer, était que Mme Sazerat s’appelait Mme Sazerin" :start 279 :end 460) (sentence :text ")" :start 461 :end 462)
 ))