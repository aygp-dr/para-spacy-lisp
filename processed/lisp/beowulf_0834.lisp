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
 :text "La princesse n’aimait pas à dire aux gens qu’elle ne voulait pas aller
chez eux. Tous les jours elle écrivait son regret d’avoir été
privée--par une visite inopinée de sa belle-mère, par une invitation de
son beau-frère, par l’Opéra, par une partie de campagne--d’une soirée à
laquelle elle n’aurait jamais songé à se rendre. Elle donnait ainsi à
beaucoup de gens la joie de croire qu’elle était de leurs relations,
qu’elle eût été volontiers chez eux, qu’elle n’avait été empêchée de
le faire que par les contretemps princiers qu’ils étaient flattés de
voir entrer en concurrence avec leur soirée. Puis, faisant partie de
cette spirituelle coterie des Guermantes où survivait quelque chose de
l’esprit alerte, dépouillé de lieux communs et de sentiments convenus,
qui descend de Mérimée,--et a trouvé sa dernière expression dans le
théâtre de Meilhac et Halévy,--elle l’adaptait même aux rapports
sociaux, le transposait jusque dans sa politesse qui s’efforçait
d’être positive, précise, de se rapprocher de l’humble vérité. Elle ne
développait pas longuement à une maîtresse de maison l’expression du
désir qu’elle avait d’aller à sa soirée; elle trouvait plus aimable de
lui exposer quelques petits faits d’où dépendrait qu’il lui fût ou non
possible de s’y rendre."
 :tokens 201
 :processed-at "2025-03-16T02:18:14.673941"
 :entities (list
  (entity :text "Tous" :label "ORG" :start 81 :end 85) (entity :text "Elle" :label "ORG" :start 326 :end 330) (entity :text "Puis," :label "ORG" :start 599 :end 604) (entity :text "Guermantes" :label "ORG" :start 653 :end 663) (entity :text "Meilhac" :label "ORG" :start 844 :end 851) (entity :text "Elle" :label "ORG" :start 1026 :end 1030)
 )
 :sentences (list
  (sentence :text "La princesse n’aimait pas à dire aux gens qu’elle ne voulait pas aller
chez eux" :start 0 :end 79) (sentence :text "Tous les jours elle écrivait son regret d’avoir été
privée--par une visite inopinée de sa belle-mère, par une invitation de
son beau-frère, par l’Opéra, par une partie de campagne--d’une soirée à
laquelle elle n’aurait jamais songé à se rendre" :start 80 :end 324) (sentence :text "Elle donnait ainsi à
beaucoup de gens la joie de croire qu’elle était de leurs relations,
qu’elle eût été volontiers chez eux, qu’elle n’avait été empêchée de
le faire que par les contretemps princiers qu’ils étaient flattés de
voir entrer en concurrence avec leur soirée" :start 325 :end 597) (sentence :text "Puis, faisant partie de
cette spirituelle coterie des Guermantes où survivait quelque chose de
l’esprit alerte, dépouillé de lieux communs et de sentiments convenus,
qui descend de Mérimée,--et a trouvé sa dernière expression dans le
théâtre de Meilhac et Halévy,--elle l’adaptait même aux rapports
sociaux, le transposait jusque dans sa politesse qui s’efforçait
d’être positive, précise, de se rapprocher de l’humble vérité" :start 598 :end 1024) (sentence :text "Elle ne
développait pas longuement à une maîtresse de maison l’expression du
désir qu’elle avait d’aller à sa soirée; elle trouvait plus aimable de
lui exposer quelques petits faits d’où dépendrait qu’il lui fût ou non
possible de s’y rendre" :start 1025 :end 1267)
 ))