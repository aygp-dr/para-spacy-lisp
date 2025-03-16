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
 :text "Pourtant un jour que ma grand’mère était allée demander un service à
une dame qu’elle avait connue au Sacré-Cœur (et avec laquelle, à cause
de notre conception des castes elle n’avait pas voulu rester en
relations malgré une sympathie réciproque), la marquise de
Villeparisis, de la célèbre famille de Bouillon, celle-ci lui avait
dit: «Je crois que vous connaissez beaucoup M. Swann qui est un grand
ami de mes neveux des Laumes». Ma grand’mère était revenue de sa
visite enthousiasmée par la maison qui donnait sur des jardins et où
Mme de Villeparisis lui conseillait de louer, et aussi par un giletier
et sa fille, qui avaient leur boutique dans la cour et chez qui elle
était entrée demander qu’on fît un point à sa jupe qu’elle avait
déchirée dans l’escalier. Ma grand’mère avait trouvé ces gens
parfaits, elle déclarait que la petite était une perle et que le
giletier était l’homme le plus distingué, le mieux qu’elle eût jamais
vu. Car pour elle, la distinction était quelque chose d’absolument
indépendant du rang social. Elle s’extasiait sur une réponse que le
giletier lui avait faite, disant à maman: «Sévigné n’aurait pas mieux
dit!» et en revanche, d’un neveu de Mme de Villeparisis qu’elle avait
rencontré chez elle: «Ah! ma fille, comme il est commun!»"
 :tokens 214
 :processed-at "2025-03-16T02:18:13.804824"
 :entities (list
  (entity :text "Pourtant" :label "ORG" :start 0 :end 8) (entity :text "Sacré-Cœur" :label "ORG" :start 102 :end 112) (entity :text "Villeparisis," :label "ORG" :start 263 :end 276) (entity :text "Bouillon," :label "ORG" :start 302 :end 311) (entity :text "Swann" :label "ORG" :start 378 :end 383) (entity :text "Laumes»." :label "ORG" :start 423 :end 431) (entity :text "Villeparisis" :label "ORG" :start 542 :end 554) (entity :text "Elle" :label "ORG" :start 1032 :end 1036) (entity :text "«Sévigné" :label "ORG" :start 1114 :end 1122) (entity :text "Villeparisis" :label "ORG" :start 1185 :end 1197) (entity :text "«Ah!" :label "ORG" :start 1233 :end 1237)
 )
 :sentences (list
  (sentence :text "Pourtant un jour que ma grand’mère était allée demander un service à
une dame qu’elle avait connue au Sacré-Cœur (et avec laquelle, à cause
de notre conception des castes elle n’avait pas voulu rester en
relations malgré une sympathie réciproque), la marquise de
Villeparisis, de la célèbre famille de Bouillon, celle-ci lui avait
dit: «Je crois que vous connaissez beaucoup M" :start 0 :end 376) (sentence :text "Swann qui est un grand
ami de mes neveux des Laumes»" :start 377 :end 430) (sentence :text "Ma grand’mère était revenue de sa
visite enthousiasmée par la maison qui donnait sur des jardins et où
Mme de Villeparisis lui conseillait de louer, et aussi par un giletier
et sa fille, qui avaient leur boutique dans la cour et chez qui elle
était entrée demander qu’on fît un point à sa jupe qu’elle avait
déchirée dans l’escalier" :start 431 :end 764) (sentence :text "Ma grand’mère avait trouvé ces gens
parfaits, elle déclarait que la petite était une perle et que le
giletier était l’homme le plus distingué, le mieux qu’elle eût jamais
vu" :start 765 :end 939) (sentence :text "Car pour elle, la distinction était quelque chose d’absolument
indépendant du rang social" :start 940 :end 1030) (sentence :text "Elle s’extasiait sur une réponse que le
giletier lui avait faite, disant à maman: «Sévigné n’aurait pas mieux
dit!» et en revanche, d’un neveu de Mme de Villeparisis qu’elle avait
rencontré chez elle: «Ah! ma fille, comme il est commun!»" :start 1031 :end 1269)
 ))