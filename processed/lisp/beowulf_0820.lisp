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
 :text "Swann retrouva rapidement le sentiment de la laideur masculine, quand,
au delà de la tenture de tapisserie, au spectacle des domestiques
succéda celui des invités. Mais cette laideur même de visages qu’il
connaissait pourtant si bien, lui semblait neuve depuis que leurs
traits,--au lieu d’être pour lui des signes pratiquement utilisables à
l’identification de telle personne qui lui avait représenté jusque-là
un faisceau de plaisirs à poursuivre, d’ennuis à éviter, ou de
politesses à rendre,--reposaient, coordonnés seulement par des rapports
esthétiques, dans l’autonomie de leurs lignes. Et en ces hommes, au
milieu desquels Swann se trouva enserré, il n’était pas jusqu’aux
monocles que beaucoup portaient (et qui, autrefois, auraient tout au
plus permis à Swann de dire qu’ils portaient un monocle), qui, déliés
maintenant de signifier une habitude, la même pour tous, ne lui
apparussent chacun avec une sorte d’individualité. Peut-être parce
qu’il ne regarda le général de Froberville et le marquis de Bréauté
qui causaient dans l’entrée que comme deux personnages dans un
tableau, alors qu’ils avaient été longtemps pour lui les amis utiles
qui l’avaient présenté au Jockey et assisté dans des duels, le monocle
du général, resté entre ses paupières comme un éclat d’obus dans sa
figure vulgaire, balafrée et triomphale, au milieu du front qu’il
éborgnait comme l’œil unique du cyclope, apparut à Swann comme une
blessure monstrueuse qu’il pouvait être glorieux d’avoir reçue, mais
qu’il était indécent d’exhiber; tandis que celui que M. de Bréauté
ajoutait, en signe de festivité, aux gants gris perle, au «gibus», à
la cravate blanche et substituait au binocle familier (comme faisait
Swann lui-même) pour aller dans le monde, portait collé à son revers,
comme une préparation d’histoire naturelle sous un microscope, un
regard infinitésimal et grouillant d’amabilité, qui ne cessait de
sourire à la hauteur des plafonds, à la beauté des fêtes, à l’intérêt
des programmes et à la qualité des rafraîchissements."
 :tokens 313
 :processed-at "2025-03-16T02:18:14.658214"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 0 :end 5) (entity :text "Mais" :label "ORG" :start 164 :end 168) (entity :text "Swann" :label "ORG" :start 631 :end 636) (entity :text "Swann" :label "ORG" :start 764 :end 769) (entity :text "Froberville" :label "ORG" :start 982 :end 993) (entity :text "Bréauté" :label "ORG" :start 1011 :end 1018) (entity :text "Jockey" :label "ORG" :start 1177 :end 1183) (entity :text "Swann" :label "ORG" :start 1407 :end 1412) (entity :text "Bréauté" :label "ORG" :start 1551 :end 1558) (entity :text "Swann" :label "ORG" :start 1697 :end 1702)
 )
 :sentences (list
  (sentence :text "Swann retrouva rapidement le sentiment de la laideur masculine, quand,
au delà de la tenture de tapisserie, au spectacle des domestiques
succéda celui des invités" :start 0 :end 162) (sentence :text "Mais cette laideur même de visages qu’il
connaissait pourtant si bien, lui semblait neuve depuis que leurs
traits,--au lieu d’être pour lui des signes pratiquement utilisables à
l’identification de telle personne qui lui avait représenté jusque-là
un faisceau de plaisirs à poursuivre, d’ennuis à éviter, ou de
politesses à rendre,--reposaient, coordonnés seulement par des rapports
esthétiques, dans l’autonomie de leurs lignes" :start 163 :end 592) (sentence :text "Et en ces hommes, au
milieu desquels Swann se trouva enserré, il n’était pas jusqu’aux
monocles que beaucoup portaient (et qui, autrefois, auraient tout au
plus permis à Swann de dire qu’ils portaient un monocle), qui, déliés
maintenant de signifier une habitude, la même pour tous, ne lui
apparussent chacun avec une sorte d’individualité" :start 593 :end 933) (sentence :text "Peut-être parce
qu’il ne regarda le général de Froberville et le marquis de Bréauté
qui causaient dans l’entrée que comme deux personnages dans un
tableau, alors qu’ils avaient été longtemps pour lui les amis utiles
qui l’avaient présenté au Jockey et assisté dans des duels, le monocle
du général, resté entre ses paupières comme un éclat d’obus dans sa
figure vulgaire, balafrée et triomphale, au milieu du front qu’il
éborgnait comme l’œil unique du cyclope, apparut à Swann comme une
blessure monstrueuse qu’il pouvait être glorieux d’avoir reçue, mais
qu’il était indécent d’exhiber; tandis que celui que M" :start 934 :end 1546) (sentence :text "de Bréauté
ajoutait, en signe de festivité, aux gants gris perle, au «gibus», à
la cravate blanche et substituait au binocle familier (comme faisait
Swann lui-même) pour aller dans le monde, portait collé à son revers,
comme une préparation d’histoire naturelle sous un microscope, un
regard infinitésimal et grouillant d’amabilité, qui ne cessait de
sourire à la hauteur des plafonds, à la beauté des fêtes, à l’intérêt
des programmes et à la qualité des rafraîchissements" :start 1547 :end 2021)
 ))