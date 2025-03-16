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
 :text "Parmi les chambres dont j’évoquais le plus souvent l’image dans mes
nuits d’insomnie, aucune ne ressemblait moins aux chambres de Combray,
saupoudrées d’une atmosphère grenue, pollinisée, comestible et dévote,
que celle du Grand-Hôtel de la Plage, à Balbec, dont les murs passés
au ripolin contenaient comme les parois polies d’une piscine où l’eau
bleuit, un air pur, azuré et salin. Le tapissier bavarois qui avait
été chargé de l’aménagement de cet hôtel avait varié la décoration des
pièces et sur trois côtés, fait courir le long des murs, dans celle
que je me trouvai habiter, des bibliothèques basses, à vitrines en
glace, dans lesquelles selon la place qu’elles occupaient, et par un
effet qu’il n’avait pas prévu, telle ou telle partie du tableau
changeant de la mer se reflétait, déroulant une frise de claires
marines, qu’interrompaient seuls les pleins de l’acajou. Si bien que
toute la pièce avait l’air d’un de ces dortoirs modèles qu’on présente
dans les expositions «modern style» du mobilier où ils sont ornés
d’œuvres d’art qu’on a supposées capables de réjouir les yeux de celui
qui couchera là et auxquelles on a donné des sujets en rapport avec le
genre de site où l’habitation doit se trouver."
 :tokens 201
 :processed-at "2025-03-16T02:18:14.821745"
 :entities (list
  (entity :text "Parmi" :label "ORG" :start 0 :end 5) (entity :text "Combray," :label "ORG" :start 130 :end 138) (entity :text "Grand-Hôtel" :label "ORG" :start 223 :end 234) (entity :text "Plage," :label "ORG" :start 241 :end 247) (entity :text "Balbec," :label "ORG" :start 250 :end 257)
 )
 :sentences (list
  (sentence :text "Parmi les chambres dont j’évoquais le plus souvent l’image dans mes
nuits d’insomnie, aucune ne ressemblait moins aux chambres de Combray,
saupoudrées d’une atmosphère grenue, pollinisée, comestible et dévote,
que celle du Grand-Hôtel de la Plage, à Balbec, dont les murs passés
au ripolin contenaient comme les parois polies d’une piscine où l’eau
bleuit, un air pur, azuré et salin" :start 0 :end 383) (sentence :text "Le tapissier bavarois qui avait
été chargé de l’aménagement de cet hôtel avait varié la décoration des
pièces et sur trois côtés, fait courir le long des murs, dans celle
que je me trouvai habiter, des bibliothèques basses, à vitrines en
glace, dans lesquelles selon la place qu’elles occupaient, et par un
effet qu’il n’avait pas prévu, telle ou telle partie du tableau
changeant de la mer se reflétait, déroulant une frise de claires
marines, qu’interrompaient seuls les pleins de l’acajou" :start 384 :end 876) (sentence :text "Si bien que
toute la pièce avait l’air d’un de ces dortoirs modèles qu’on présente
dans les expositions «modern style» du mobilier où ils sont ornés
d’œuvres d’art qu’on a supposées capables de réjouir les yeux de celui
qui couchera là et auxquelles on a donné des sujets en rapport avec le
genre de site où l’habitation doit se trouver" :start 877 :end 1214)
 ))