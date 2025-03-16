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
 :text "Le peintre ayant été malade, le docteur Cottard lui conseilla un
voyage en mer; plusieurs fidèles parlèrent de partir avec lui; les
Verdurin ne purent se résoudre à rester seuls, louèrent un yacht, puis
s’en rendirent acquéreurs et ainsi Odette fit de fréquentes
croisières. Chaque fois qu’elle était partie depuis un peu de temps,
Swann sentait qu’il commençait à se détacher d’elle, mais comme si
cette distance morale était proportionnée à la distance matérielle,
dès qu’il savait Odette de retour, il ne pouvait pas rester sans la
voir. Une fois, partis pour un mois seulement, croyaient-ils, soit
qu’ils eussent été tentés en route, soit que M. Verdurin eût
sournoisement arrangé les choses d’avance pour faire plaisir à sa
femme et n’eût averti les fidèles qu’au fur et à mesure, d’Alger ils
allèrent à Tunis, puis en Italie, puis en Grèce, à Constantinople, en
Asie Mineure. Le voyage durait depuis près d’un an. Swann se sentait
absolument tranquille, presque heureux. Bien que M. Verdurin eût
cherché à persuader au pianiste et au docteur Cottard que la tante de
l’un et les malades de l’autre n’avaient aucun besoin d’eux, et, qu’en
tous cas, il était imprudent de laisser Mme Cottard rentrer à Paris
que Mme Verdurin assurait être en révolution, il fut obligé de leur
rendre leur liberté à Constantinople. Et le peintre partit avec eux.
Un jour, peu après le retour de ces trois voyageurs, Swann voyant
passer un omnibus pour le Luxembourg où il avait à faire, avait sauté
dedans, et s’y était trouvé assis en face de Mme Cottard qui faisait
sa tournée de visites «de jours» en grande tenue, plumet au chapeau,
robe de soie, manchon, en-tout-cas, porte-cartes et gants blancs
nettoyés. Revêtue de ces insignes, quand il faisait sec, elle allait à
pied d’une maison à l’autre, dans un même quartier, mais pour passer
ensuite dans un quartier différent usait de l’omnibus avec
correspondance. Pendant les premiers instants, avant que la
gentillesse native de la femme eût pu percer l’empesé de la petite
bourgeoise, et ne sachant trop d’ailleurs si elle devait parler des
Verdurin à Swann, elle tint tout naturellement, de sa voix lente,
gauche et douce que par moments l’omnibus couvrait complètement de son
tonnerre, des propos choisis parmi ceux qu’elle entendait et répétait
dans les vingt-cinq maisons dont elle montait les étages dans une
journée:"
 :tokens 391
 :processed-at "2025-03-16T02:18:14.801227"
 :entities (list
  (entity :text "Cottard" :label "ORG" :start 40 :end 47) (entity :text "Verdurin" :label "ORG" :start 132 :end 140) (entity :text "Odette" :label "ORG" :start 238 :end 244) (entity :text "Chaque" :label "ORG" :start 275 :end 281) (entity :text "Swann" :label "ORG" :start 332 :end 337) (entity :text "Odette" :label "ORG" :start 484 :end 490) (entity :text "Verdurin" :label "ORG" :start 650 :end 658) (entity :text "Tunis," :label "ORG" :start 809 :end 815) (entity :text "Italie," :label "ORG" :start 824 :end 831) (entity :text "Grèce," :label "ORG" :start 840 :end 846) (entity :text "Constantinople," :label "ORG" :start 849 :end 864) (entity :text "Mineure." :label "ORG" :start 873 :end 881) (entity :text "Swann" :label "ORG" :start 920 :end 925) (entity :text "Bien" :label "ORG" :start 977 :end 981) (entity :text "Verdurin" :label "ORG" :start 989 :end 997) (entity :text "Cottard" :label "ORG" :start 1048 :end 1055) (entity :text "Cottard" :label "ORG" :start 1187 :end 1194) (entity :text "Paris" :label "ORG" :start 1205 :end 1210) (entity :text "Verdurin" :label "ORG" :start 1219 :end 1227) (entity :text "Constantinople." :label "ORG" :start 1301 :end 1316) (entity :text "Swann" :label "ORG" :start 1401 :end 1406) (entity :text "Luxembourg" :label "ORG" :start 1440 :end 1450) (entity :text "Cottard" :label "ORG" :start 1533 :end 1540) (entity :text "Revêtue" :label "ORG" :start 1697 :end 1704) (entity :text "Pendant" :label "ORG" :start 1902 :end 1909) (entity :text "Verdurin" :label "ORG" :start 2081 :end 2089) (entity :text "Swann," :label "ORG" :start 2092 :end 2098)
 )
 :sentences (list
  (sentence :text "Le peintre ayant été malade, le docteur Cottard lui conseilla un
voyage en mer; plusieurs fidèles parlèrent de partir avec lui; les
Verdurin ne purent se résoudre à rester seuls, louèrent un yacht, puis
s’en rendirent acquéreurs et ainsi Odette fit de fréquentes
croisières" :start 0 :end 273) (sentence :text "Chaque fois qu’elle était partie depuis un peu de temps,
Swann sentait qu’il commençait à se détacher d’elle, mais comme si
cette distance morale était proportionnée à la distance matérielle,
dès qu’il savait Odette de retour, il ne pouvait pas rester sans la
voir" :start 274 :end 539) (sentence :text "Une fois, partis pour un mois seulement, croyaient-ils, soit
qu’ils eussent été tentés en route, soit que M" :start 540 :end 648) (sentence :text "Verdurin eût
sournoisement arrangé les choses d’avance pour faire plaisir à sa
femme et n’eût averti les fidèles qu’au fur et à mesure, d’Alger ils
allèrent à Tunis, puis en Italie, puis en Grèce, à Constantinople, en
Asie Mineure" :start 649 :end 880) (sentence :text "Le voyage durait depuis près d’un an" :start 881 :end 918) (sentence :text "Swann se sentait
absolument tranquille, presque heureux" :start 919 :end 975) (sentence :text "Bien que M" :start 976 :end 987) (sentence :text "Verdurin eût
cherché à persuader au pianiste et au docteur Cottard que la tante de
l’un et les malades de l’autre n’avaient aucun besoin d’eux, et, qu’en
tous cas, il était imprudent de laisser Mme Cottard rentrer à Paris
que Mme Verdurin assurait être en révolution, il fut obligé de leur
rendre leur liberté à Constantinople" :start 988 :end 1315) (sentence :text "Et le peintre partit avec eux" :start 1316 :end 1346) (sentence :text "Un jour, peu après le retour de ces trois voyageurs, Swann voyant
passer un omnibus pour le Luxembourg où il avait à faire, avait sauté
dedans, et s’y était trouvé assis en face de Mme Cottard qui faisait
sa tournée de visites «de jours» en grande tenue, plumet au chapeau,
robe de soie, manchon, en-tout-cas, porte-cartes et gants blancs
nettoyés" :start 1347 :end 1695) (sentence :text "Revêtue de ces insignes, quand il faisait sec, elle allait à
pied d’une maison à l’autre, dans un même quartier, mais pour passer
ensuite dans un quartier différent usait de l’omnibus avec
correspondance" :start 1696 :end 1900) (sentence :text "Pendant les premiers instants, avant que la
gentillesse native de la femme eût pu percer l’empesé de la petite
bourgeoise, et ne sachant trop d’ailleurs si elle devait parler des
Verdurin à Swann, elle tint tout naturellement, de sa voix lente,
gauche et douce que par moments l’omnibus couvrait complètement de son
tonnerre, des propos choisis parmi ceux qu’elle entendait et répétait
dans les vingt-cinq maisons dont elle montait les étages dans une
journée:" :start 1901 :end 2362)
 ))