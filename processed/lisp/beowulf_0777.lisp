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
 :text "Alors, à cette Odette-là, il se demandait comment il avait pu écrire
cette lettre outrageante dont sans doute jusqu’ici elle ne l’eût pas
cru capable, et qui avait dû le faire descendre du rang élevé, unique,
que par sa bonté, sa loyauté, il avait conquis dans son estime. Il
allait lui devenir moins cher, car c’était pour ces qualités-là,
qu’elle ne trouvait ni à Forcheville ni à aucun autre, qu’elle
l’aimait. C’était à cause d’elles qu’Odette lui témoignait si souvent
une gentillesse qu’il comptait pour rien au moment où il était jaloux,
parce qu’elle n’était pas une marque de désir, et prouvait même plutôt
de l’affection que de l’amour, mais dont il recommençait à sentir
l’importance au fur et à mesure que la détente spontanée de ses
soupçons, souvent accentuée par la distraction que lui apportait une
lecture d’art ou la conversation d’un ami, rendait sa passion moins
exigeante de réciprocités."
 :tokens 151
 :processed-at "2025-03-16T02:18:14.606253"
 :entities (list
  (entity :text "Forcheville" :label "ORG" :start 366 :end 377)
 )
 :sentences (list
  (sentence :text "Alors, à cette Odette-là, il se demandait comment il avait pu écrire
cette lettre outrageante dont sans doute jusqu’ici elle ne l’eût pas
cru capable, et qui avait dû le faire descendre du rang élevé, unique,
que par sa bonté, sa loyauté, il avait conquis dans son estime" :start 0 :end 271) (sentence :text "Il
allait lui devenir moins cher, car c’était pour ces qualités-là,
qu’elle ne trouvait ni à Forcheville ni à aucun autre, qu’elle
l’aimait" :start 272 :end 412) (sentence :text "C’était à cause d’elles qu’Odette lui témoignait si souvent
une gentillesse qu’il comptait pour rien au moment où il était jaloux,
parce qu’elle n’était pas une marque de désir, et prouvait même plutôt
de l’affection que de l’amour, mais dont il recommençait à sentir
l’importance au fur et à mesure que la détente spontanée de ses
soupçons, souvent accentuée par la distraction que lui apportait une
lecture d’art ou la conversation d’un ami, rendait sa passion moins
exigeante de réciprocités" :start 413 :end 908)
 ))