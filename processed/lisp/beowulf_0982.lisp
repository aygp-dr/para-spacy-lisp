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
 :text "Françoise avait trop froid pour rester immobile, nous allâmes jusqu’au
pont de la Concorde voir la Seine prise, dont chacun et même les
enfants s’approchaient sans peur comme d’une immense baleine échouée,
sans défense, et qu’on allait dépecer. Nous revenions aux
Champs-Élysées; je languissais de douleur entre les chevaux de bois
immobiles et la pelouse blanche prise dans le réseau noir des allées
dont on avait enlevé la neige et sur laquelle la statue avait à la
main un jet de glace ajouté qui semblait l’explication de son geste.
La vieille dame elle-même ayant plié ses Débats, demanda l’heure à une
bonne d’enfants qui passait et qu’elle remercia en lui disant: «Comme
vous êtes aimable!» puis, priant le cantonnier de dire à ses petits
enfants de revenir, qu’elle avait froid, ajouta: «Vous serez mille
fois bon. Vous savez que je suis confuse!» Tout à coup l’air se
déchira: entre le guignol et le cirque, à l’horizon embelli, sur le
ciel entr’ouvert, je venais d’apercevoir, comme un signe fabuleux, le
plumet bleu de Mademoiselle. Et déjà Gilberte courait à toute vitesse
dans ma direction, étincelante et rouge sous un bonnet carré de
fourrure, animée par le froid, le retard et le désir du jeu; un peu
avant d’arriver à moi, elle se laissa glisser sur la glace et, soit
pour mieux garder son équilibre, soit parce qu’elle trouvait cela plus
gracieux, ou par affectation du maintien d’une patineuse, c’est les
bras grands ouverts qu’elle avançait en souriant, comme si elle avait
voulu m’y recevoir. «Brava! Brava! ça c’est très bien, je dirais comme
vous que c’est chic, que c’est crâne, si je n’étais pas d’un autre
temps, du temps de l’ancien régime, s’écria la vieille dame prenant la
parole au nom des Champs-Élysées silencieux pour remercier Gilberte
d’être venue sans se laisser intimider par le temps. Vous êtes comme
moi, fidèle quand même à nos vieux Champs-Élysées; nous sommes deux
intrépides. Si je vous disais que je les aime, même ainsi. Cette
neige, vous allez rire de moi, ça me fait penser à de l’hermine!» Et
la vieille dame se mit à rire."
 :tokens 352
 :processed-at "2025-03-16T02:18:14.845989"
 :entities (list
  (entity :text "Françoise" :label "ORG" :start 0 :end 9) (entity :text "Concorde" :label "ORG" :start 82 :end 90) (entity :text "Seine" :label "ORG" :start 99 :end 104) (entity :text "Nous" :label "ORG" :start 245 :end 249) (entity :text "Champs-Élysées;" :label "ORG" :start 264 :end 279) (entity :text "Débats," :label "ORG" :start 578 :end 585) (entity :text "«Comme" :label "ORG" :start 671 :end 677) (entity :text "«Vous" :label "ORG" :start 795 :end 800) (entity :text "Vous" :label "ORG" :start 823 :end 827) (entity :text "Tout" :label "ORG" :start 856 :end 860) (entity :text "Mademoiselle." :label "ORG" :start 1030 :end 1043) (entity :text "Gilberte" :label "ORG" :start 1052 :end 1060) (entity :text "«Brava!" :label "ORG" :start 1514 :end 1521) (entity :text "Brava!" :label "ORG" :start 1522 :end 1528) (entity :text "Champs-Élysées" :label "ORG" :start 1721 :end 1735) (entity :text "Gilberte" :label "ORG" :start 1762 :end 1770) (entity :text "Vous" :label "ORG" :start 1824 :end 1828) (entity :text "Champs-Élysées;" :label "ORG" :start 1875 :end 1890) (entity :text "Cette" :label "ORG" :start 1967 :end 1972)
 )
 :sentences (list
  (sentence :text "Françoise avait trop froid pour rester immobile, nous allâmes jusqu’au
pont de la Concorde voir la Seine prise, dont chacun et même les
enfants s’approchaient sans peur comme d’une immense baleine échouée,
sans défense, et qu’on allait dépecer" :start 0 :end 243) (sentence :text "Nous revenions aux
Champs-Élysées; je languissais de douleur entre les chevaux de bois
immobiles et la pelouse blanche prise dans le réseau noir des allées
dont on avait enlevé la neige et sur laquelle la statue avait à la
main un jet de glace ajouté qui semblait l’explication de son geste" :start 244 :end 535) (sentence :text "La vieille dame elle-même ayant plié ses Débats, demanda l’heure à une
bonne d’enfants qui passait et qu’elle remercia en lui disant: «Comme
vous êtes aimable!» puis, priant le cantonnier de dire à ses petits
enfants de revenir, qu’elle avait froid, ajouta: «Vous serez mille
fois bon" :start 536 :end 821) (sentence :text "Vous savez que je suis confuse!» Tout à coup l’air se
déchira: entre le guignol et le cirque, à l’horizon embelli, sur le
ciel entr’ouvert, je venais d’apercevoir, comme un signe fabuleux, le
plumet bleu de Mademoiselle" :start 822 :end 1042) (sentence :text "Et déjà Gilberte courait à toute vitesse
dans ma direction, étincelante et rouge sous un bonnet carré de
fourrure, animée par le froid, le retard et le désir du jeu; un peu
avant d’arriver à moi, elle se laissa glisser sur la glace et, soit
pour mieux garder son équilibre, soit parce qu’elle trouvait cela plus
gracieux, ou par affectation du maintien d’une patineuse, c’est les
bras grands ouverts qu’elle avançait en souriant, comme si elle avait
voulu m’y recevoir" :start 1043 :end 1512) (sentence :text "«Brava! Brava! ça c’est très bien, je dirais comme
vous que c’est chic, que c’est crâne, si je n’étais pas d’un autre
temps, du temps de l’ancien régime, s’écria la vieille dame prenant la
parole au nom des Champs-Élysées silencieux pour remercier Gilberte
d’être venue sans se laisser intimider par le temps" :start 1513 :end 1822) (sentence :text "Vous êtes comme
moi, fidèle quand même à nos vieux Champs-Élysées; nous sommes deux
intrépides" :start 1823 :end 1918) (sentence :text "Si je vous disais que je les aime, même ainsi" :start 1919 :end 1965) (sentence :text "Cette
neige, vous allez rire de moi, ça me fait penser à de l’hermine!» Et
la vieille dame se mit à rire" :start 1966 :end 2071)
 ))