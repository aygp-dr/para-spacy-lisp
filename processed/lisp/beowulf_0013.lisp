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
 :text "Quelquefois, comme Ève naquit d’une côte d’Adam, une femme naissait
pendant mon sommeil d’une fausse position de ma cuisse. Formée du
plaisir que j’étais sur le point de goûter, je m’imaginais que c’était
elle qui me l’offrait. Mon corps qui sentait dans le sien ma propre
chaleur voulait s’y rejoindre, je m’éveillais. Le reste des humains
m’apparaissait comme bien lointain auprès de cette femme que j’avais
quittée il y avait quelques moments à peine; ma joue était chaude
encore de son baiser, mon corps courbaturé par le poids de sa taille.
Si, comme il arrivait quelquefois, elle avait les traits d’une femme
que j’avais connue dans la vie, j’allais me donner tout entier à ce
but: la retrouver, comme ceux qui partent en voyage pour voir de leurs
yeux une cité désirée et s’imaginent qu’on peut goûter dans une
réalité le charme du songe. Peu à peu son souvenir s’évanouissait,
j’avais oublié la fille de mon rêve."
 :tokens 157
 :processed-at "2025-03-16T02:18:13.781617"
 :entities (list
  (entity :text "Quelquefois," :label "ORG" :start 0 :end 12) (entity :text "Formée" :label "ORG" :start 124 :end 130)
 )
 :sentences (list
  (sentence :text "Quelquefois, comme Ève naquit d’une côte d’Adam, une femme naissait
pendant mon sommeil d’une fausse position de ma cuisse" :start 0 :end 122) (sentence :text "Formée du
plaisir que j’étais sur le point de goûter, je m’imaginais que c’était
elle qui me l’offrait" :start 123 :end 226) (sentence :text "Mon corps qui sentait dans le sien ma propre
chaleur voulait s’y rejoindre, je m’éveillais" :start 227 :end 318) (sentence :text "Le reste des humains
m’apparaissait comme bien lointain auprès de cette femme que j’avais
quittée il y avait quelques moments à peine; ma joue était chaude
encore de son baiser, mon corps courbaturé par le poids de sa taille" :start 319 :end 544) (sentence :text "Si, comme il arrivait quelquefois, elle avait les traits d’une femme
que j’avais connue dans la vie, j’allais me donner tout entier à ce
but: la retrouver, comme ceux qui partent en voyage pour voir de leurs
yeux une cité désirée et s’imaginent qu’on peut goûter dans une
réalité le charme du songe" :start 545 :end 844) (sentence :text "Peu à peu son souvenir s’évanouissait,
j’avais oublié la fille de mon rêve" :start 845 :end 920)
 ))