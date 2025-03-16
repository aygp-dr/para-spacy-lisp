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
 :text "Il regarda. Devant lui, deux vieux messieurs étaient à la fenêtre,
l’un tenant une lampe, et alors, il vit la chambre, une chambre
inconnue. Ayant l’habitude, quand il venait chez Odette très tard, de
reconnaître sa fenêtre à ce que c’était la seule éclairée entre les
fenêtres toutes pareilles, il s’était trompé et avait frappé à la
fenêtre suivante qui appartenait à la maison voisine. Il s’éloigna en
s’excusant et rentra chez lui, heureux que la satisfaction de sa
curiosité eût laissé leur amour intact et qu’après avoir simulé depuis
si longtemps vis-à-vis d’Odette une sorte d’indifférence, il ne lui
eût pas donné, par sa jalousie, cette preuve qu’il l’aimait trop, qui,
entre deux amants, dispense, à tout jamais, d’aimer assez, celui qui
la reçoit. Il ne lui parla pas de cette mésaventure, lui-même n’y
songeait plus. Mais, par moments, un mouvement de sa pensée venait en
rencontrer le souvenir qu’elle n’avait pas aperçu, le heurtait,
l’enfonçait plus avant et Swann avait ressenti une douleur brusque et
profonde. Comme si ç’avait été une douleur physique, les pensées de
Swann ne pouvaient pas l’amoindrir; mais du moins la douleur physique,
parce qu’elle est indépendante de la pensée, la pensée peut s’arrêter
sur elle, constater qu’elle a diminué, qu’elle a momentanément cessé!
Mais cette douleur-là, la pensée, rien qu’en se la rappelant, la
recréait. Vouloir n’y pas penser, c’était y penser encore, en souffrir
encore. Et quand, causant avec des amis, il oubliait son mal, tout
d’un coup un mot qu’on lui disait le faisait changer de visage, comme
un blessé dont un maladroit vient de toucher sans précaution le membre
douloureux. Quand il quittait Odette, il était heureux, il se sentait
calme, il se rappelait les sourires qu’elle avait eus, railleurs, en
parlant de tel ou tel autre, et tendres pour lui, la lourdeur de sa
tête qu’elle avait détachée de son axe pour l’incliner, la laisser
tomber, presque malgré elle, sur ses lèvres, comme elle avait fait la
première fois en voiture, les regards mourants qu’elle lui avait jetés
pendant qu’elle était dans ses bras, tout en contractant frileusement
contre l’épaule sa tête inclinée."
 :tokens 354
 :processed-at "2025-03-16T02:18:14.534126"
 :entities (list
  (entity :text "Devant" :label "ORG" :start 12 :end 18) (entity :text "Odette" :label "ORG" :start 180 :end 186) (entity :text "Mais," :label "ORG" :start 830 :end 835) (entity :text "Swann" :label "ORG" :start 975 :end 980) (entity :text "Comme" :label "ORG" :start 1029 :end 1034) (entity :text "Swann" :label "ORG" :start 1087 :end 1092) (entity :text "Mais" :label "ORG" :start 1298 :end 1302) (entity :text "Vouloir" :label "ORG" :start 1373 :end 1380) (entity :text "Quand" :label "ORG" :start 1654 :end 1659) (entity :text "Odette," :label "ORG" :start 1672 :end 1679)
 )
 :sentences (list
  (sentence :text "Il regarda" :start 0 :end 10) (sentence :text "Devant lui, deux vieux messieurs étaient à la fenêtre,
l’un tenant une lampe, et alors, il vit la chambre, une chambre
inconnue" :start 11 :end 139) (sentence :text "Ayant l’habitude, quand il venait chez Odette très tard, de
reconnaître sa fenêtre à ce que c’était la seule éclairée entre les
fenêtres toutes pareilles, il s’était trompé et avait frappé à la
fenêtre suivante qui appartenait à la maison voisine" :start 140 :end 387) (sentence :text "Il s’éloigna en
s’excusant et rentra chez lui, heureux que la satisfaction de sa
curiosité eût laissé leur amour intact et qu’après avoir simulé depuis
si longtemps vis-à-vis d’Odette une sorte d’indifférence, il ne lui
eût pas donné, par sa jalousie, cette preuve qu’il l’aimait trop, qui,
entre deux amants, dispense, à tout jamais, d’aimer assez, celui qui
la reçoit" :start 388 :end 758) (sentence :text "Il ne lui parla pas de cette mésaventure, lui-même n’y
songeait plus" :start 759 :end 828) (sentence :text "Mais, par moments, un mouvement de sa pensée venait en
rencontrer le souvenir qu’elle n’avait pas aperçu, le heurtait,
l’enfonçait plus avant et Swann avait ressenti une douleur brusque et
profonde" :start 829 :end 1027) (sentence :text "Comme si ç’avait été une douleur physique, les pensées de
Swann ne pouvaient pas l’amoindrir; mais du moins la douleur physique,
parce qu’elle est indépendante de la pensée, la pensée peut s’arrêter
sur elle, constater qu’elle a diminué, qu’elle a momentanément cessé!
Mais cette douleur-là, la pensée, rien qu’en se la rappelant, la
recréait" :start 1028 :end 1371) (sentence :text "Vouloir n’y pas penser, c’était y penser encore, en souffrir
encore" :start 1372 :end 1440) (sentence :text "Et quand, causant avec des amis, il oubliait son mal, tout
d’un coup un mot qu’on lui disait le faisait changer de visage, comme
un blessé dont un maladroit vient de toucher sans précaution le membre
douloureux" :start 1441 :end 1652) (sentence :text "Quand il quittait Odette, il était heureux, il se sentait
calme, il se rappelait les sourires qu’elle avait eus, railleurs, en
parlant de tel ou tel autre, et tendres pour lui, la lourdeur de sa
tête qu’elle avait détachée de son axe pour l’incliner, la laisser
tomber, presque malgré elle, sur ses lèvres, comme elle avait fait la
première fois en voiture, les regards mourants qu’elle lui avait jetés
pendant qu’elle était dans ses bras, tout en contractant frileusement
contre l’épaule sa tête inclinée" :start 1653 :end 2159)
 ))