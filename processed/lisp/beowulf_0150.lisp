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
 :text "Pendant que la fille de cuisine,--faisant briller involontairement la
supériorité de Françoise, comme l’Erreur, par le contraste, rend plus
éclatant le triomphe de la Vérité--servait du café qui, selon maman
n’était que de l’eau chaude, et montait ensuite dans nos chambres de
l’eau chaude qui était à peine tiède, je m’étais étendu sur mon lit,
un livre à la main, dans ma chambre qui protégeait en tremblant sa
fraîcheur transparente et fragile contre le soleil de l’après-midi
derrière ses volets presque clos où un reflet de jour avait pourtant
trouvé moyen de faire passer ses ailes jaunes, et restait immobile
entre le bois et le vitrage, dans un coin, comme un papillon posé. Il
faisait à peine assez clair pour lire, et la sensation de la splendeur
de la lumière ne m’était donnée que par les coups frappés dans la rue
de la Cure par Camus (averti par Françoise que ma tante ne «reposait
pas» et qu’on pouvait faire du bruit) contre des caisses
poussiéreuses, mais qui, retentissant dans l’atmosphère sonore,
spéciale aux temps chauds, semblaient faire voler au loin des astres
écarlates; et aussi par les mouches qui exécutaient devant moi, dans
leur petit concert, comme la musique de chambre de l’été: elle ne
l’évoque pas à la façon d’un air de musique humaine, qui, entendu par
hasard à la belle saison, vous la rappelle ensuite; elle est unie à
l’été par un lien plus nécessaire: née des beaux jours, ne renaissant
qu’avec eux, contenant un peu de leur essence, elle n’en réveille pas
seulement l’image dans notre mémoire, elle en certifie le retour, la
présence effective, ambiante, immédiatement accessible."
 :tokens 271
 :processed-at "2025-03-16T02:18:13.944372"
 :entities (list
  (entity :text "Pendant" :label "ORG" :start 0 :end 7) (entity :text "Françoise," :label "ORG" :start 85 :end 95) (entity :text "Cure" :label "ORG" :start 833 :end 837) (entity :text "Camus" :label "ORG" :start 842 :end 847) (entity :text "Françoise" :label "ORG" :start 860 :end 869)
 )
 :sentences (list
  (sentence :text "Pendant que la fille de cuisine,--faisant briller involontairement la
supériorité de Françoise, comme l’Erreur, par le contraste, rend plus
éclatant le triomphe de la Vérité--servait du café qui, selon maman
n’était que de l’eau chaude, et montait ensuite dans nos chambres de
l’eau chaude qui était à peine tiède, je m’étais étendu sur mon lit,
un livre à la main, dans ma chambre qui protégeait en tremblant sa
fraîcheur transparente et fragile contre le soleil de l’après-midi
derrière ses volets presque clos où un reflet de jour avait pourtant
trouvé moyen de faire passer ses ailes jaunes, et restait immobile
entre le bois et le vitrage, dans un coin, comme un papillon posé" :start 0 :end 681) (sentence :text "Il
faisait à peine assez clair pour lire, et la sensation de la splendeur
de la lumière ne m’était donnée que par les coups frappés dans la rue
de la Cure par Camus (averti par Françoise que ma tante ne «reposait
pas» et qu’on pouvait faire du bruit) contre des caisses
poussiéreuses, mais qui, retentissant dans l’atmosphère sonore,
spéciale aux temps chauds, semblaient faire voler au loin des astres
écarlates; et aussi par les mouches qui exécutaient devant moi, dans
leur petit concert, comme la musique de chambre de l’été: elle ne
l’évoque pas à la façon d’un air de musique humaine, qui, entendu par
hasard à la belle saison, vous la rappelle ensuite; elle est unie à
l’été par un lien plus nécessaire: née des beaux jours, ne renaissant
qu’avec eux, contenant un peu de leur essence, elle n’en réveille pas
seulement l’image dans notre mémoire, elle en certifie le retour, la
présence effective, ambiante, immédiatement accessible" :start 682 :end 1622)
 ))