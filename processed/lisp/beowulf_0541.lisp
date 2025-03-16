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
 :text "Le cocher revint, mais, au moment où il s’arrêta devant Swann,
celui-ci ne lui dit pas: «Avez-vous trouvé cette dame?» mais:
«Faites-moi donc penser demain à commander du bois, je crois que la
provision doit commencer à s’épuiser.» Peut-être se disait-il que si
Rémi avait trouvé Odette dans un café où elle l’attendait, la fin de
la soirée néfaste était déjà anéantie par la réalisation commencée de
la fin de soirée bienheureuse et qu’il n’avait pas besoin de se
presser d’atteindre un bonheur capturé et en lieu sûr, qui ne
s’échapperait plus. Mais aussi c’était par force d’inertie; il avait
dans l’âme le manque de souplesse que certains êtres ont dans le
corps, ceux-là qui au moment d’éviter un choc, d’éloigner une flamme
de leur habit, d’accomplir un mouvement urgent, prennent leur temps,
commencent par rester une seconde dans la situation où ils étaient
auparavant comme pour y trouver leur point d’appui, leur élan. Et sans
doute si le cocher l’avait interrompu en lui disant: «Cette dame est
là», il eut répondu: «Ah! oui, c’est vrai, la course que je vous avais
donnée, tiens je n’aurais pas cru», et aurait continué à lui parler
provision de bois pour lui cacher l’émotion qu’il avait eue et se
laisser à lui-même le temps de rompre avec l’inquiétude et de se
donner au bonheur."
 :tokens 221
 :processed-at "2025-03-16T02:18:14.360382"
 :entities (list
  (entity :text "Swann," :label "ORG" :start 56 :end 62) (entity :text "Rémi" :label "ORG" :start 262 :end 266) (entity :text "Odette" :label "ORG" :start 280 :end 286) (entity :text "Mais" :label "ORG" :start 547 :end 551) (entity :text "«Cette" :label "ORG" :start 990 :end 996) (entity :text "«Ah!" :label "ORG" :start 1027 :end 1031)
 )
 :sentences (list
  (sentence :text "Le cocher revint, mais, au moment où il s’arrêta devant Swann,
celui-ci ne lui dit pas: «Avez-vous trouvé cette dame?» mais:
«Faites-moi donc penser demain à commander du bois, je crois que la
provision doit commencer à s’épuiser" :start 0 :end 229) (sentence :text "» Peut-être se disait-il que si
Rémi avait trouvé Odette dans un café où elle l’attendait, la fin de
la soirée néfaste était déjà anéantie par la réalisation commencée de
la fin de soirée bienheureuse et qu’il n’avait pas besoin de se
presser d’atteindre un bonheur capturé et en lieu sûr, qui ne
s’échapperait plus" :start 230 :end 545) (sentence :text "Mais aussi c’était par force d’inertie; il avait
dans l’âme le manque de souplesse que certains êtres ont dans le
corps, ceux-là qui au moment d’éviter un choc, d’éloigner une flamme
de leur habit, d’accomplir un mouvement urgent, prennent leur temps,
commencent par rester une seconde dans la situation où ils étaient
auparavant comme pour y trouver leur point d’appui, leur élan" :start 546 :end 927) (sentence :text "Et sans
doute si le cocher l’avait interrompu en lui disant: «Cette dame est
là», il eut répondu: «Ah! oui, c’est vrai, la course que je vous avais
donnée, tiens je n’aurais pas cru», et aurait continué à lui parler
provision de bois pour lui cacher l’émotion qu’il avait eue et se
laisser à lui-même le temps de rompre avec l’inquiétude et de se
donner au bonheur" :start 928 :end 1293)
 ))