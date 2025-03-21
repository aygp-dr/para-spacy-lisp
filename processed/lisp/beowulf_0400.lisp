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
 :text "Il n’était pas comme tant de gens qui par paresse, ou sentiment
résigné de l’obligation que crée la grandeur sociale de rester attaché
à un certain rivage, s’abstiennent des plaisirs que la réalité leur
présente en dehors de la position mondaine où ils vivent cantonnés
jusqu’à leur mort, se contentant de finir par appeler plaisirs, faute
de mieux, une fois qu’ils sont parvenus à s’y habituer, les
divertissements médiocres ou les supportables ennuis qu’elle renferme.
Swann, lui, ne cherchait pas à trouver jolies les femmes avec qui il
passait son temps, mais à passer son temps avec les femmes qu’il avait
d’abord trouvées jolies. Et c’était souvent des femmes de beauté assez
vulgaire, car les qualités physiques qu’il recherchait sans s’en
rendre compte étaient en complète opposition avec celles qui lui
rendaient admirables les femmes sculptées ou peintes par les maîtres
qu’il préférait. La profondeur, la mélancolie de l’expression,
glaçaient ses sens que suffisait au contraire à éveiller une chair
saine, plantureuse et rose."
 :tokens 164
 :processed-at "2025-03-16T02:18:14.218675"
 :entities (list
  (entity :text "Swann," :label "ORG" :start 471 :end 477)
 )
 :sentences (list
  (sentence :text "Il n’était pas comme tant de gens qui par paresse, ou sentiment
résigné de l’obligation que crée la grandeur sociale de rester attaché
à un certain rivage, s’abstiennent des plaisirs que la réalité leur
présente en dehors de la position mondaine où ils vivent cantonnés
jusqu’à leur mort, se contentant de finir par appeler plaisirs, faute
de mieux, une fois qu’ils sont parvenus à s’y habituer, les
divertissements médiocres ou les supportables ennuis qu’elle renferme" :start 0 :end 469) (sentence :text "Swann, lui, ne cherchait pas à trouver jolies les femmes avec qui il
passait son temps, mais à passer son temps avec les femmes qu’il avait
d’abord trouvées jolies" :start 470 :end 634) (sentence :text "Et c’était souvent des femmes de beauté assez
vulgaire, car les qualités physiques qu’il recherchait sans s’en
rendre compte étaient en complète opposition avec celles qui lui
rendaient admirables les femmes sculptées ou peintes par les maîtres
qu’il préférait" :start 635 :end 896) (sentence :text "La profondeur, la mélancolie de l’expression,
glaçaient ses sens que suffisait au contraire à éveiller une chair
saine, plantureuse et rose" :start 897 :end 1037)
 ))