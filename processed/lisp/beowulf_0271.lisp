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
 :text "La pauvre Charité de Giotto, comme l’appelait Swann, chargée par
Françoise de les «plumer», les avait près d’elle dans une corbeille,
son air était douloureux, comme si elle ressentait tous les malheurs
de la terre; et les légères couronnes d’azur qui ceignaient les
asperges au-dessus de leurs tuniques de rose étaient finement
dessinées, étoile par étoile, comme le sont dans la fresque les fleurs
bandées autour du front ou piquées dans la corbeille de la Vertu de
Padoue. Et cependant, Françoise tournait à la broche un de ces
poulets, comme elle seule savait en rôtir, qui avaient porté loin dans
Combray l’odeur de ses mérites, et qui, pendant qu’elle nous les
servait à table, faisaient prédominer la douceur dans ma conception
spéciale de son caractère, l’arôme de cette chair qu’elle savait
rendre si onctueuse et si tendre n’étant pour moi que le propre parfum
d’une de ses vertus."
 :tokens 148
 :processed-at "2025-03-16T02:18:14.069564"
 :entities (list
  (entity :text "Charité" :label "ORG" :start 10 :end 17) (entity :text "Giotto," :label "ORG" :start 21 :end 28) (entity :text "Swann," :label "ORG" :start 46 :end 52) (entity :text "Françoise" :label "ORG" :start 65 :end 74) (entity :text "Vertu" :label "ORG" :start 459 :end 464) (entity :text "Padoue." :label "ORG" :start 468 :end 475) (entity :text "Françoise" :label "ORG" :start 490 :end 499) (entity :text "Combray" :label "ORG" :start 602 :end 609)
 )
 :sentences (list
  (sentence :text "La pauvre Charité de Giotto, comme l’appelait Swann, chargée par
Françoise de les «plumer», les avait près d’elle dans une corbeille,
son air était douloureux, comme si elle ressentait tous les malheurs
de la terre; et les légères couronnes d’azur qui ceignaient les
asperges au-dessus de leurs tuniques de rose étaient finement
dessinées, étoile par étoile, comme le sont dans la fresque les fleurs
bandées autour du front ou piquées dans la corbeille de la Vertu de
Padoue" :start 0 :end 474) (sentence :text "Et cependant, Françoise tournait à la broche un de ces
poulets, comme elle seule savait en rôtir, qui avaient porté loin dans
Combray l’odeur de ses mérites, et qui, pendant qu’elle nous les
servait à table, faisaient prédominer la douceur dans ma conception
spéciale de son caractère, l’arôme de cette chair qu’elle savait
rendre si onctueuse et si tendre n’étant pour moi que le propre parfum
d’une de ses vertus" :start 475 :end 890)
 ))