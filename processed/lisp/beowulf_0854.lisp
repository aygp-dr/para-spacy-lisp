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
 :text "Cependant le pianiste redoublant de vitesse, l’émotion musicale était
à son comble, un domestique passait des rafraîchissements sur un
plateau et faisait tinter des cuillers et, comme chaque semaine, Mme
de Saint-Euverte lui faisait, sans qu’il la vît, des signes de s’en
aller. Une nouvelle mariée, à qui on avait appris qu’une jeune femme
ne doit pas avoir l’air blasé, souriait de plaisir, et cherchait des
yeux la maîtresse de maison pour lui témoigner par son regard sa
reconnaissance d’avoir «pensé à elle» pour un pareil régal. Pourtant,
quoique avec plus de calme que Mme de Franquetot, ce n’est pas sans
inquiétude qu’elle suivait le morceau; mais la sienne avait pour
objet, au lieu du pianiste, le piano sur lequel une bougie tressautant
à chaque fortissimo, risquait, sinon de mettre le feu à l’abat-jour,
du moins de faire des taches sur le palissandre. À la fin elle n’y
tint plus et, escaladant les deux marches de l’estrade, sur laquelle
était placé le piano, se précipita pour enlever la bobèche. Mais à
peine ses mains allaient-elles la toucher que sur un dernier accord,
le morceau finit et le pianiste se leva. Néanmoins l’initiative hardie
de cette jeune femme, la courte promiscuité qui en résulta entre elle
et l’instrumentiste, produisirent une impression généralement
favorable."
 :tokens 212
 :processed-at "2025-03-16T02:18:14.690205"
 :entities (list
  (entity :text "Cependant" :label "ORG" :start 0 :end 9) (entity :text "Saint-Euverte" :label "ORG" :start 207 :end 220) (entity :text "Pourtant," :label "ORG" :start 535 :end 544) (entity :text "Franquetot," :label "ORG" :start 583 :end 594) (entity :text "Mais" :label "ORG" :start 1014 :end 1018) (entity :text "Néanmoins" :label "ORG" :start 1131 :end 1140)
 )
 :sentences (list
  (sentence :text "Cependant le pianiste redoublant de vitesse, l’émotion musicale était
à son comble, un domestique passait des rafraîchissements sur un
plateau et faisait tinter des cuillers et, comme chaque semaine, Mme
de Saint-Euverte lui faisait, sans qu’il la vît, des signes de s’en
aller" :start 0 :end 277) (sentence :text "Une nouvelle mariée, à qui on avait appris qu’une jeune femme
ne doit pas avoir l’air blasé, souriait de plaisir, et cherchait des
yeux la maîtresse de maison pour lui témoigner par son regard sa
reconnaissance d’avoir «pensé à elle» pour un pareil régal" :start 278 :end 533) (sentence :text "Pourtant,
quoique avec plus de calme que Mme de Franquetot, ce n’est pas sans
inquiétude qu’elle suivait le morceau; mais la sienne avait pour
objet, au lieu du pianiste, le piano sur lequel une bougie tressautant
à chaque fortissimo, risquait, sinon de mettre le feu à l’abat-jour,
du moins de faire des taches sur le palissandre" :start 534 :end 865) (sentence :text "À la fin elle n’y
tint plus et, escaladant les deux marches de l’estrade, sur laquelle
était placé le piano, se précipita pour enlever la bobèche" :start 866 :end 1012) (sentence :text "Mais à
peine ses mains allaient-elles la toucher que sur un dernier accord,
le morceau finit et le pianiste se leva" :start 1013 :end 1129) (sentence :text "Néanmoins l’initiative hardie
de cette jeune femme, la courte promiscuité qui en résulta entre elle
et l’instrumentiste, produisirent une impression généralement
favorable" :start 1130 :end 1302)
 ))