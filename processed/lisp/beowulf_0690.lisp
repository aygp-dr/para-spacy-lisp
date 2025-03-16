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
 :text "Le jour où il dînait en ville, il faisait atteler pour sept heures et
demie; il s’habillait tout en songeant à Odette et ainsi il ne se
trouvait pas seul, car la pensée constante d’Odette donnait aux
moments où il était loin d’elle le même charme particulier qu’à ceux
où elle était là. Il montait en voiture, mais il sentait que cette
pensée y avait sauté en même temps et s’installait sur ses genoux
comme une bête aimée qu’on emmène partout et qu’il garderait avec lui
à table, à l’insu des convives. Il la caressait, se réchauffait à
elle, et éprouvant une sorte de langueur, se laissait aller à un léger
frémissement qui crispait son cou et son nez, et était nouveau chez
lui, tout en fixant à sa boutonnière le bouquet d’ancolies. Se sentant
souffrant et triste depuis quelque temps, surtout depuis qu’Odette
avait présenté Forcheville aux Verdurin, Swann aurait aimé aller se
reposer un peu à la campagne. Mais il n’aurait pas eu le courage de
quitter Paris un seul jour pendant qu’Odette y était. L’air était
chaud; c’étaient les plus beaux jours du printemps. Et il avait beau
traverser une ville de pierre pour se rendre en quelque hôtel clos, ce
qui était sans cesse devant ses yeux, c’était un parc qu’il possédait
près de Combray, où, dès quatre heures, avant d’arriver au plant
d’asperges, grâce au vent qui vient des champs de Méséglise, on
pouvait goûter sous une charmille autant de fraîcheur qu’au bord de
l’étang cerné de myosotis et de glaïeuls, et où, quand il dînait,
enlacées par son jardinier, couraient autour de la table les
groseilles et les roses."
 :tokens 275
 :processed-at "2025-03-16T02:18:14.515596"
 :entities (list
  (entity :text "Odette" :label "ORG" :start 111 :end 117) (entity :text "Forcheville" :label "ORG" :start 830 :end 841) (entity :text "Verdurin," :label "ORG" :start 846 :end 855) (entity :text "Swann" :label "ORG" :start 856 :end 861) (entity :text "Mais" :label "ORG" :start 913 :end 917) (entity :text "Paris" :label "ORG" :start 959 :end 964) (entity :text "Combray," :label "ORG" :start 1235 :end 1243) (entity :text "Méséglise," :label "ORG" :start 1342 :end 1352)
 )
 :sentences (list
  (sentence :text "Le jour où il dînait en ville, il faisait atteler pour sept heures et
demie; il s’habillait tout en songeant à Odette et ainsi il ne se
trouvait pas seul, car la pensée constante d’Odette donnait aux
moments où il était loin d’elle le même charme particulier qu’à ceux
où elle était là" :start 0 :end 285) (sentence :text "Il montait en voiture, mais il sentait que cette
pensée y avait sauté en même temps et s’installait sur ses genoux
comme une bête aimée qu’on emmène partout et qu’il garderait avec lui
à table, à l’insu des convives" :start 286 :end 502) (sentence :text "Il la caressait, se réchauffait à
elle, et éprouvant une sorte de langueur, se laissait aller à un léger
frémissement qui crispait son cou et son nez, et était nouveau chez
lui, tout en fixant à sa boutonnière le bouquet d’ancolies" :start 503 :end 735) (sentence :text "Se sentant
souffrant et triste depuis quelque temps, surtout depuis qu’Odette
avait présenté Forcheville aux Verdurin, Swann aurait aimé aller se
reposer un peu à la campagne" :start 736 :end 911) (sentence :text "Mais il n’aurait pas eu le courage de
quitter Paris un seul jour pendant qu’Odette y était" :start 912 :end 1003) (sentence :text "L’air était
chaud; c’étaient les plus beaux jours du printemps" :start 1004 :end 1067) (sentence :text "Et il avait beau
traverser une ville de pierre pour se rendre en quelque hôtel clos, ce
qui était sans cesse devant ses yeux, c’était un parc qu’il possédait
près de Combray, où, dès quatre heures, avant d’arriver au plant
d’asperges, grâce au vent qui vient des champs de Méséglise, on
pouvait goûter sous une charmille autant de fraîcheur qu’au bord de
l’étang cerné de myosotis et de glaïeuls, et où, quand il dînait,
enlacées par son jardinier, couraient autour de la table les
groseilles et les roses" :start 1068 :end 1574)
 ))