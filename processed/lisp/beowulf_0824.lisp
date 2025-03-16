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
 :text "Le monocle du marquis de Forestelle était minuscule, n’avait aucune
bordure et obligeant à une crispation incessante et douloureuse l’œil
où il s’incrustait comme un cartilage superflu dont la présence est
inexplicable et la matière recherchée, il donnait au visage du marquis
une délicatesse mélancolique, et le faisait juger par les femmes comme
capable de grands chagrins d’amour. Mais celui de M. de Saint-Candé,
entouré d’un gigantesque anneau, comme Saturne, était le centre de
gravité d’une figure qui s’ordonnait à tout moment par rapport à lui,
dont le nez frémissant et rouge et la bouche lippue et sarcastique
tâchaient par leurs grimaces d’être à la hauteur des feux roulants
d’esprit dont étincelait le disque de verre, et se voyait préférer aux
plus beaux regards du monde par des jeunes femmes snobs et dépravées
qu’il faisait rêver de charmes artificiels et d’un raffinement de
volupté; et cependant, derrière le sien, M. de Palancy qui avec sa
grosse tête de carpe aux yeux ronds, se déplaçait lentement au milieu
des fêtes, en desserrant d’instant en instant ses mandibules comme
pour chercher son orientation, avait l’air de transporter seulement
avec lui un fragment accidentel, et peut-être purement symbolique, du
vitrage de son aquarium, partie destinée à figurer le tout qui rappela
à Swann, grand admirateur des Vices et des Vertus de Giotto à Padoue,
cet Injuste à côté duquel un rameau feuillu évoque les forêts où se
cache son repaire."
 :tokens 237
 :processed-at "2025-03-16T02:18:14.661829"
 :entities (list
  (entity :text "Forestelle" :label "ORG" :start 25 :end 35) (entity :text "Mais" :label "ORG" :start 384 :end 388) (entity :text "Saint-Candé," :label "ORG" :start 404 :end 416) (entity :text "Saturne," :label "ORG" :start 456 :end 464) (entity :text "Palancy" :label "ORG" :start 941 :end 948) (entity :text "Swann," :label "ORG" :start 1309 :end 1315) (entity :text "Vices" :label "ORG" :start 1337 :end 1342) (entity :text "Vertus" :label "ORG" :start 1350 :end 1356) (entity :text "Giotto" :label "ORG" :start 1360 :end 1366) (entity :text "Padoue," :label "ORG" :start 1369 :end 1376)
 )
 :sentences (list
  (sentence :text "Le monocle du marquis de Forestelle était minuscule, n’avait aucune
bordure et obligeant à une crispation incessante et douloureuse l’œil
où il s’incrustait comme un cartilage superflu dont la présence est
inexplicable et la matière recherchée, il donnait au visage du marquis
une délicatesse mélancolique, et le faisait juger par les femmes comme
capable de grands chagrins d’amour" :start 0 :end 382) (sentence :text "Mais celui de M" :start 383 :end 399) (sentence :text "de Saint-Candé,
entouré d’un gigantesque anneau, comme Saturne, était le centre de
gravité d’une figure qui s’ordonnait à tout moment par rapport à lui,
dont le nez frémissant et rouge et la bouche lippue et sarcastique
tâchaient par leurs grimaces d’être à la hauteur des feux roulants
d’esprit dont étincelait le disque de verre, et se voyait préférer aux
plus beaux regards du monde par des jeunes femmes snobs et dépravées
qu’il faisait rêver de charmes artificiels et d’un raffinement de
volupté; et cependant, derrière le sien, M" :start 400 :end 936) (sentence :text "de Palancy qui avec sa
grosse tête de carpe aux yeux ronds, se déplaçait lentement au milieu
des fêtes, en desserrant d’instant en instant ses mandibules comme
pour chercher son orientation, avait l’air de transporter seulement
avec lui un fragment accidentel, et peut-être purement symbolique, du
vitrage de son aquarium, partie destinée à figurer le tout qui rappela
à Swann, grand admirateur des Vices et des Vertus de Giotto à Padoue,
cet Injuste à côté duquel un rameau feuillu évoque les forêts où se
cache son repaire" :start 937 :end 1462)
 ))