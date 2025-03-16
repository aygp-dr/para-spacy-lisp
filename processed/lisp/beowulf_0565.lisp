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
 :text "Certains jours pourtant, mais rares, elle venait chez lui dans
l’après-midi, interrompre sa rêverie ou cette étude sur Ver Meer à
laquelle il s’était remis dernièrement. On venait lui dire que Mme de
Crécy était dans son petit salon. Il allait l’y retrouver, et quand il
ouvrait la porte, au visage rosé d’Odette, dès qu’elle avait aperçu
Swann, venait--, changeant la forme de sa bouche, le regard de ses
yeux, le modelé de ses joues--se mélanger un sourire. Une fois seul, il
revoyait ce sourire, celui qu’elle avait eu la veille, un autre dont
elle l’avait accueilli telle ou telle fois, celui qui avait été sa
réponse, en voiture, quand il lui avait demandé s’il lui était
désagréable en redressant les catleyas; et la vie d’Odette pendant le
reste du temps, comme il n’en connaissait rien, lui apparaissait avec
son fond neutre et sans couleur, semblable à ces feuilles d’études de
Watteau, où on voit çà et là, à toutes les places, dans tous les sens,
dessinés aux trois crayons sur le papier chamois, d’innombrables
sourires. Mais, parfois, dans un coin de cette vie que Swann voyait
toute vide, si même son esprit lui disait qu’elle ne l’était pas,
parce qu’il ne pouvait pas l’imaginer, quelque ami, qui, se doutant
qu’ils s’aimaient, ne se fût pas risqué à lui rien dire d’elle que
d’insignifiant, lui décrivait la silhouette d’Odette, qu’il avait
aperçue, le matin même, montant à pied la rue Abbatucci dans une
«visite» garnie de skunks, sous un chapeau «à la Rembrandt» et un
bouquet de violettes à son corsage. Ce simple croquis bouleversait
Swann parce qu’il lui faisait tout d’un coup apercevoir qu’Odette
avait une vie qui n’était pas tout entière à lui; il voulait savoir à
qui elle avait cherché à plaire par cette toilette qu’il ne lui
connaissait pas; il se promettait de lui demander où elle allait, à ce
moment-là, comme si dans toute la vie incolore,--presque inexistante,
parce qu’elle lui était invisible--, de sa maîtresse, il n’y avait
qu’une seule chose en dehors de tous ces sourires adressés à lui: sa
démarche sous un chapeau à la Rembrandt, avec un bouquet de violettes
au corsage."
 :tokens 361
 :processed-at "2025-03-16T02:18:14.390367"
 :entities (list
  (entity :text "Certains" :label "ORG" :start 0 :end 8) (entity :text "Meer" :label "ORG" :start 123 :end 127) (entity :text "Crécy" :label "ORG" :start 200 :end 205) (entity :text "Swann," :label "ORG" :start 339 :end 345) (entity :text "Watteau," :label "ORG" :start 887 :end 895) (entity :text "Mais," :label "ORG" :start 1033 :end 1038) (entity :text "Swann" :label "ORG" :start 1078 :end 1083) (entity :text "Rembrandt»" :label "ORG" :start 1472 :end 1482) (entity :text "Swann" :label "ORG" :start 1556 :end 1561) (entity :text "Rembrandt," :label "ORG" :start 2063 :end 2073)
 )
 :sentences (list
  (sentence :text "Certains jours pourtant, mais rares, elle venait chez lui dans
l’après-midi, interrompre sa rêverie ou cette étude sur Ver Meer à
laquelle il s’était remis dernièrement" :start 0 :end 168) (sentence :text "On venait lui dire que Mme de
Crécy était dans son petit salon" :start 169 :end 232) (sentence :text "Il allait l’y retrouver, et quand il
ouvrait la porte, au visage rosé d’Odette, dès qu’elle avait aperçu
Swann, venait--, changeant la forme de sa bouche, le regard de ses
yeux, le modelé de ses joues--se mélanger un sourire" :start 233 :end 458) (sentence :text "Une fois seul, il
revoyait ce sourire, celui qu’elle avait eu la veille, un autre dont
elle l’avait accueilli telle ou telle fois, celui qui avait été sa
réponse, en voiture, quand il lui avait demandé s’il lui était
désagréable en redressant les catleyas; et la vie d’Odette pendant le
reste du temps, comme il n’en connaissait rien, lui apparaissait avec
son fond neutre et sans couleur, semblable à ces feuilles d’études de
Watteau, où on voit çà et là, à toutes les places, dans tous les sens,
dessinés aux trois crayons sur le papier chamois, d’innombrables
sourires" :start 459 :end 1031) (sentence :text "Mais, parfois, dans un coin de cette vie que Swann voyait
toute vide, si même son esprit lui disait qu’elle ne l’était pas,
parce qu’il ne pouvait pas l’imaginer, quelque ami, qui, se doutant
qu’ils s’aimaient, ne se fût pas risqué à lui rien dire d’elle que
d’insignifiant, lui décrivait la silhouette d’Odette, qu’il avait
aperçue, le matin même, montant à pied la rue Abbatucci dans une
«visite» garnie de skunks, sous un chapeau «à la Rembrandt» et un
bouquet de violettes à son corsage" :start 1032 :end 1523) (sentence :text "Ce simple croquis bouleversait
Swann parce qu’il lui faisait tout d’un coup apercevoir qu’Odette
avait une vie qui n’était pas tout entière à lui; il voulait savoir à
qui elle avait cherché à plaire par cette toilette qu’il ne lui
connaissait pas; il se promettait de lui demander où elle allait, à ce
moment-là, comme si dans toute la vie incolore,--presque inexistante,
parce qu’elle lui était invisible--, de sa maîtresse, il n’y avait
qu’une seule chose en dehors de tous ces sourires adressés à lui: sa
démarche sous un chapeau à la Rembrandt, avec un bouquet de violettes
au corsage" :start 1524 :end 2113)
 ))