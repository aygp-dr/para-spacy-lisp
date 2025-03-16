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
 :text "Au bout d’un moment, j’entrais l’embrasser; Françoise faisait infuser
son thé; ou, si ma tante se sentait agitée, elle demandait à la place
sa tisane et c’était moi qui étais chargé de faire tomber du sac de
pharmacie dans une assiette la quantité de tilleul qu’il fallait
mettre ensuite dans l’eau bouillante. Le dessèchement des tiges les
avait incurvées en un capricieux treillage dans les entrelacs duquel
s’ouvraient les fleurs pâles, comme si un peintre les eût arrangées,
les eût fait poser de la façon la plus ornementale. Les feuilles,
ayant perdu ou changé leur aspect, avaient l’air des choses les
plus disparates, d’une aile transparente de mouche, de l’envers
blanc d’une étiquette, d’un pétale de rose, mais qui eussent été
empilées, concassées ou tressées comme dans la confection d’un nid.
Mille petits détails inutiles,--charmante prodigalité du
pharmacien,--qu’on eût supprimés dans une préparation factice, me
donnaient, comme un livre où on s’émerveille de rencontrer le nom
d’une personne de connaissance, le plaisir de comprendre que c’était
bien des tiges de vrais tilleuls, comme ceux que je voyais avenue de
la Gare, modifiées, justement parce que c’étaient non des doubles,
mais elles-même et qu’elles avaient vieilli. Et chaque caractère
nouveau n’y étant que la métamorphose d’un caractère ancien, dans de
petites boules grises je reconnaissais les boutons verts qui ne sont
pas venus à terme; mais surtout l’éclat rose, lunaire et doux qui
faisait se détacher les fleurs dans la forêt fragile des tiges où
elles étaient suspendues comme de petites roses d’or,--signe, comme la
lueur qui révèle encore sur une muraille la place d’une fresque
effacée, de la différence entre les parties de l’arbre qui avaient été
«en couleur» et celles qui ne l’avaient pas été--me montrait que ces
pétales étaient bien ceux qui avant de fleurir le sac de pharmacie
avaient embaumé les soirs de printemps. Cette flamme rose de cierge,
c’était leur couleur encore, mais à demi éteinte et assoupie dans
cette vie diminuée qu’était la leur maintenant et qui est comme le
crépuscule des fleurs. Bientôt ma tante pouvait tremper dans l’infusion
bouillante dont elle savourait le goût de feuille morte ou de fleur
fanée une petite madeleine dont elle me tendait un morceau quand il
était suffisamment amolli."
 :tokens 372
 :processed-at "2025-03-16T02:18:13.855697"
 :entities (list
  (entity :text "Françoise" :label "ORG" :start 44 :end 53) (entity :text "Mille" :label "ORG" :start 806 :end 811) (entity :text "Gare," :label "ORG" :start 1136 :end 1141) (entity :text "Cette" :label "ORG" :start 1917 :end 1922) (entity :text "Bientôt" :label "ORG" :start 2102 :end 2109)
 )
 :sentences (list
  (sentence :text "Au bout d’un moment, j’entrais l’embrasser; Françoise faisait infuser
son thé; ou, si ma tante se sentait agitée, elle demandait à la place
sa tisane et c’était moi qui étais chargé de faire tomber du sac de
pharmacie dans une assiette la quantité de tilleul qu’il fallait
mettre ensuite dans l’eau bouillante" :start 0 :end 309) (sentence :text "Le dessèchement des tiges les
avait incurvées en un capricieux treillage dans les entrelacs duquel
s’ouvraient les fleurs pâles, comme si un peintre les eût arrangées,
les eût fait poser de la façon la plus ornementale" :start 310 :end 529) (sentence :text "Les feuilles,
ayant perdu ou changé leur aspect, avaient l’air des choses les
plus disparates, d’une aile transparente de mouche, de l’envers
blanc d’une étiquette, d’un pétale de rose, mais qui eussent été
empilées, concassées ou tressées comme dans la confection d’un nid" :start 530 :end 804) (sentence :text "Mille petits détails inutiles,--charmante prodigalité du
pharmacien,--qu’on eût supprimés dans une préparation factice, me
donnaient, comme un livre où on s’émerveille de rencontrer le nom
d’une personne de connaissance, le plaisir de comprendre que c’était
bien des tiges de vrais tilleuls, comme ceux que je voyais avenue de
la Gare, modifiées, justement parce que c’étaient non des doubles,
mais elles-même et qu’elles avaient vieilli" :start 805 :end 1243) (sentence :text "Et chaque caractère
nouveau n’y étant que la métamorphose d’un caractère ancien, dans de
petites boules grises je reconnaissais les boutons verts qui ne sont
pas venus à terme; mais surtout l’éclat rose, lunaire et doux qui
faisait se détacher les fleurs dans la forêt fragile des tiges où
elles étaient suspendues comme de petites roses d’or,--signe, comme la
lueur qui révèle encore sur une muraille la place d’une fresque
effacée, de la différence entre les parties de l’arbre qui avaient été
«en couleur» et celles qui ne l’avaient pas été--me montrait que ces
pétales étaient bien ceux qui avant de fleurir le sac de pharmacie
avaient embaumé les soirs de printemps" :start 1244 :end 1915) (sentence :text "Cette flamme rose de cierge,
c’était leur couleur encore, mais à demi éteinte et assoupie dans
cette vie diminuée qu’était la leur maintenant et qui est comme le
crépuscule des fleurs" :start 1916 :end 2100) (sentence :text "Bientôt ma tante pouvait tremper dans l’infusion
bouillante dont elle savourait le goût de feuille morte ou de fleur
fanée une petite madeleine dont elle me tendait un morceau quand il
était suffisamment amolli" :start 2101 :end 2312)
 ))