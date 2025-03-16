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
 :text "Cette complexité du bois de Boulogne qui en fait un lieu factice et,
dans le sens zoologique ou mythologique du mot, un Jardin, je l’ai
retrouvée cette année comme je le traversais pour aller à Trianon, un
des premiers matins de ce mois de novembre où, à Paris, dans les
maisons, la proximité et la privation du spectacle de l’automne qui
s’achève si vite sans qu’on y assiste, donnent une nostalgie, une
véritable fièvre des feuilles mortes qui peut aller jusqu’à empêcher
de dormir. Dans ma chambre fermée, elles s’interposaient depuis un
mois, évoquées par mon désir de les voir, entre ma pensée et n’importe
quel objet auquel je m’appliquais, et tourbillonnaient comme ces
taches jaunes qui parfois, quoi que nous regardions, dansent devant
nos yeux. Et ce matin-là, n’entendant plus la pluie tomber comme les
jours précédents, voyant le beau temps sourire aux coins des rideaux
fermés comme aux coins d’une bouche close qui laisse échapper le
secret de son bonheur, j’avais senti que ces feuilles jaunes, je
pourrais les regarder traversées par la lumière, dans leur suprême
beauté; et ne pouvant pas davantage me tenir d’aller voir des arbres
qu’autrefois, quand le vent soufflait trop fort dans ma cheminée, de
partir pour le bord de la mer, j’étais sorti pour aller à Trianon, en
passant par le bois de Boulogne. C’était l’heure et c’était la saison
où le Bois semble peut-être le plus multiple, non seulement parce
qu’il est plus subdivisé, mais encore parce qu’il l’est autrement.
Même dans les parties découvertes où l’on embrasse un grand espace, çà
et là, en face des sombres masses lointaines des arbres qui n’avaient
pas de feuilles ou qui avaient encore leurs feuilles de l’été, un
double rang de marronniers orangés semblait, comme dans un tableau à
peine commencé, avoir seul encore été peint par le décorateur qui
n’aurait pas mis de couleur sur le reste, et tendait son allée en
pleine lumière pour la promenade épisodique de personnages qui ne
seraient ajoutés que plus tard."
 :tokens 335
 :processed-at "2025-03-16T02:18:14.907031"
 :entities (list
  (entity :text "Cette" :label "ORG" :start 0 :end 5) (entity :text "Boulogne" :label "ORG" :start 28 :end 36) (entity :text "Jardin," :label "ORG" :start 120 :end 127) (entity :text "Trianon," :label "ORG" :start 194 :end 202) (entity :text "Paris," :label "ORG" :start 255 :end 261) (entity :text "Dans" :label "ORG" :start 485 :end 489) (entity :text "Trianon," :label "ORG" :start 1276 :end 1284) (entity :text "Boulogne." :label "ORG" :start 1311 :end 1320) (entity :text "Bois" :label "ORG" :start 1364 :end 1368) (entity :text "Même" :label "ORG" :start 1491 :end 1495)
 )
 :sentences (list
  (sentence :text "Cette complexité du bois de Boulogne qui en fait un lieu factice et,
dans le sens zoologique ou mythologique du mot, un Jardin, je l’ai
retrouvée cette année comme je le traversais pour aller à Trianon, un
des premiers matins de ce mois de novembre où, à Paris, dans les
maisons, la proximité et la privation du spectacle de l’automne qui
s’achève si vite sans qu’on y assiste, donnent une nostalgie, une
véritable fièvre des feuilles mortes qui peut aller jusqu’à empêcher
de dormir" :start 0 :end 483) (sentence :text "Dans ma chambre fermée, elles s’interposaient depuis un
mois, évoquées par mon désir de les voir, entre ma pensée et n’importe
quel objet auquel je m’appliquais, et tourbillonnaient comme ces
taches jaunes qui parfois, quoi que nous regardions, dansent devant
nos yeux" :start 484 :end 753) (sentence :text "Et ce matin-là, n’entendant plus la pluie tomber comme les
jours précédents, voyant le beau temps sourire aux coins des rideaux
fermés comme aux coins d’une bouche close qui laisse échapper le
secret de son bonheur, j’avais senti que ces feuilles jaunes, je
pourrais les regarder traversées par la lumière, dans leur suprême
beauté; et ne pouvant pas davantage me tenir d’aller voir des arbres
qu’autrefois, quand le vent soufflait trop fort dans ma cheminée, de
partir pour le bord de la mer, j’étais sorti pour aller à Trianon, en
passant par le bois de Boulogne" :start 754 :end 1319) (sentence :text "C’était l’heure et c’était la saison
où le Bois semble peut-être le plus multiple, non seulement parce
qu’il est plus subdivisé, mais encore parce qu’il l’est autrement" :start 1320 :end 1489) (sentence :text "Même dans les parties découvertes où l’on embrasse un grand espace, çà
et là, en face des sombres masses lointaines des arbres qui n’avaient
pas de feuilles ou qui avaient encore leurs feuilles de l’été, un
double rang de marronniers orangés semblait, comme dans un tableau à
peine commencé, avoir seul encore été peint par le décorateur qui
n’aurait pas mis de couleur sur le reste, et tendait son allée en
pleine lumière pour la promenade épisodique de personnages qui ne
seraient ajoutés que plus tard" :start 1490 :end 1995)
 ))