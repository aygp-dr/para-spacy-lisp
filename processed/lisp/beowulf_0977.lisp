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
 :text "Un jour, comme je m’ennuyais à notre place familière, à côté des
chevaux de bois, Françoise m’avait emmené en excursion--au delà de la
frontière que gardent à intervalles égaux les petits bastions des
marchandes de sucre d’orge--, dans ces régions voisines mais étrangères
où les visages sont inconnus, où passe la voiture aux chèvres; puis
elle était revenue prendre ses affaires sur sa chaise adossée à un
massif de lauriers; en l’attendant je foulais la grande pelouse
chétive et rase, jaunie par le soleil, au bout de laquelle le bassin
est dominé par une statue quand, de l’allée, s’adressant à une
fillette à cheveux roux qui jouait au volant devant la vasque, une
autre, en train de mettre son manteau et de serrer sa raquette, lui
cria, d’une voix brève: «Adieu, Gilberte, je rentre, n’oublie pas que
nous venons ce soir chez toi après dîner.» Ce nom de Gilberte passa
près de moi, évoquant d’autant plus l’existence de celle qu’il
désignait qu’il ne la nommait pas seulement comme un absent dont on
parle, mais l’interpellait; il passa ainsi près de moi, en action pour
ainsi dire, avec une puissance qu’accroissait la courbe de son jet et
l’approche de son but;--transportant à son bord, je le sentais, la
connaissance, les notions qu’avait de celle à qui il était adressé,
non pas moi, mais l’amie qui l’appelait, tout ce que, tandis qu’elle
le prononçait, elle revoyait ou du moins, possédait en sa mémoire, de
leur intimité quotidienne, des visites qu’elles se faisaient l’une
chez l’autre, de tout cet inconnu encore plus inaccessible et plus
douloureux pour moi d’être au contraire si familier et si maniable
pour cette fille heureuse qui m’en frôlait sans que j’y puisse
pénétrer et le jetait en plein air dans un cri;--laissant déjà flotter
dans l’air l’émanation délicieuse qu’il avait fait se dégager, en les
touchant avec précision, de quelques points invisibles de la vie de
Mlle Swann, du soir qui allait venir, tel qu’il serait, après dîner,
chez elle,--formant, passager céleste au milieu des enfants et des
bonnes, un petit nuage d’une couleur précieuse, pareil à celui qui,
bombé au-dessus d’un beau jardin du Poussin, reflète minutieusement
comme un nuage d’opéra, plein de chevaux et de chars, quelque
apparition de la vie des dieux;--jetant enfin, sur cette herbe pelée, à
l’endroit où elle était un morceau à la fois de pelouse flétrie et un
moment de l’après-midi de la blonde joueuse de volant (qui ne s’arrêta
de le lancer et de le rattraper que quand une institutrice à plumet
bleu l’eut appelée), une petite bande merveilleuse et couleur
d’héliotrope impalpable comme un reflet et superposée comme un tapis
sur lequel je ne pus me lasser de promener mes pas attardés,
nostalgiques et profanateurs, tandis que Françoise me criait: «Allons,
aboutonnez voir votre paletot et filons» et que je remarquais pour la
première fois avec irritation qu’elle avait un langage vulgaire, et
hélas, pas de plumet bleu à son chapeau."
 :tokens 492
 :processed-at "2025-03-16T02:18:14.837410"
 :entities (list
  (entity :text "Françoise" :label "ORG" :start 82 :end 91) (entity :text "«Adieu," :label "ORG" :start 763 :end 770) (entity :text "Gilberte," :label "ORG" :start 771 :end 780) (entity :text "Gilberte" :label "ORG" :start 862 :end 870) (entity :text "Mlle" :label "ORG" :start 1896 :end 1900) (entity :text "Swann," :label "ORG" :start 1901 :end 1907) (entity :text "Poussin," :label "ORG" :start 2136 :end 2144) (entity :text "Françoise" :label "ORG" :start 2744 :end 2753) (entity :text "«Allons," :label "ORG" :start 2765 :end 2773)
 )
 :sentences (list
  (sentence :text "Un jour, comme je m’ennuyais à notre place familière, à côté des
chevaux de bois, Françoise m’avait emmené en excursion--au delà de la
frontière que gardent à intervalles égaux les petits bastions des
marchandes de sucre d’orge--, dans ces régions voisines mais étrangères
où les visages sont inconnus, où passe la voiture aux chèvres; puis
elle était revenue prendre ses affaires sur sa chaise adossée à un
massif de lauriers; en l’attendant je foulais la grande pelouse
chétive et rase, jaunie par le soleil, au bout de laquelle le bassin
est dominé par une statue quand, de l’allée, s’adressant à une
fillette à cheveux roux qui jouait au volant devant la vasque, une
autre, en train de mettre son manteau et de serrer sa raquette, lui
cria, d’une voix brève: «Adieu, Gilberte, je rentre, n’oublie pas que
nous venons ce soir chez toi après dîner" :start 0 :end 849) (sentence :text "» Ce nom de Gilberte passa
près de moi, évoquant d’autant plus l’existence de celle qu’il
désignait qu’il ne la nommait pas seulement comme un absent dont on
parle, mais l’interpellait; il passa ainsi près de moi, en action pour
ainsi dire, avec une puissance qu’accroissait la courbe de son jet et
l’approche de son but;--transportant à son bord, je le sentais, la
connaissance, les notions qu’avait de celle à qui il était adressé,
non pas moi, mais l’amie qui l’appelait, tout ce que, tandis qu’elle
le prononçait, elle revoyait ou du moins, possédait en sa mémoire, de
leur intimité quotidienne, des visites qu’elles se faisaient l’une
chez l’autre, de tout cet inconnu encore plus inaccessible et plus
douloureux pour moi d’être au contraire si familier et si maniable
pour cette fille heureuse qui m’en frôlait sans que j’y puisse
pénétrer et le jetait en plein air dans un cri;--laissant déjà flotter
dans l’air l’émanation délicieuse qu’il avait fait se dégager, en les
touchant avec précision, de quelques points invisibles de la vie de
Mlle Swann, du soir qui allait venir, tel qu’il serait, après dîner,
chez elle,--formant, passager céleste au milieu des enfants et des
bonnes, un petit nuage d’une couleur précieuse, pareil à celui qui,
bombé au-dessus d’un beau jardin du Poussin, reflète minutieusement
comme un nuage d’opéra, plein de chevaux et de chars, quelque
apparition de la vie des dieux;--jetant enfin, sur cette herbe pelée, à
l’endroit où elle était un morceau à la fois de pelouse flétrie et un
moment de l’après-midi de la blonde joueuse de volant (qui ne s’arrêta
de le lancer et de le rattraper que quand une institutrice à plumet
bleu l’eut appelée), une petite bande merveilleuse et couleur
d’héliotrope impalpable comme un reflet et superposée comme un tapis
sur lequel je ne pus me lasser de promener mes pas attardés,
nostalgiques et profanateurs, tandis que Françoise me criait: «Allons,
aboutonnez voir votre paletot et filons» et que je remarquais pour la
première fois avec irritation qu’elle avait un langage vulgaire, et
hélas, pas de plumet bleu à son chapeau" :start 850 :end 2951)
 ))