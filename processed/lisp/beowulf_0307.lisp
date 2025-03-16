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
 :text "La haie laissait voir à l’intérieur du parc une allée bordée de
jasmins, de pensées et de verveines entre lesquelles des giroflées
ouvraient leur bourse fraîche, du rose odorant et passé d’un cuir
ancien de Cordoue, tandis que sur le gravier un long tuyau d’arrosage
peint en vert, déroulant ses circuits, dressait aux points où il était
percé au-dessus des fleurs, dont il imbibait les parfums, l’éventail
vertical et prismatique de ses gouttelettes multicolores. Tout à coup,
je m’arrêtai, je ne pus plus bouger, comme il arrive quand une vision
ne s’adresse pas seulement à nos regards, mais requiert des
perceptions plus profondes et dispose de notre être tout entier. Une
fillette d’un blond roux qui avait l’air de rentrer de promenade et
tenait à la main une bêche de jardinage, nous regardait, levant son
visage semé de taches roses. Ses yeux noirs brillaient et comme je ne
savais pas alors, ni ne l’ai appris depuis, réduire en ses éléments
objectifs une impression forte, comme je n’avais pas, ainsi qu’on dit,
assez «d’esprit d’observation» pour dégager la notion de leur couleur,
pendant longtemps, chaque fois que je repensai à elle, le souvenir de
leur éclat se présentait aussitôt à moi comme celui d’un vif azur,
puisqu’elle était blonde: de sorte que, peut-être si elle n’avait pas
eu des yeux aussi noirs,--ce qui frappait tant la première fois qu’on
la voyait--je n’aurais pas été, comme je le fus, plus particulièrement
amoureux, en elle, de ses yeux bleus."
 :tokens 246
 :processed-at "2025-03-16T02:18:14.110659"
 :entities (list
  (entity :text "Cordoue," :label "ORG" :start 207 :end 215) (entity :text "Tout" :label "ORG" :start 465 :end 469)
 )
 :sentences (list
  (sentence :text "La haie laissait voir à l’intérieur du parc une allée bordée de
jasmins, de pensées et de verveines entre lesquelles des giroflées
ouvraient leur bourse fraîche, du rose odorant et passé d’un cuir
ancien de Cordoue, tandis que sur le gravier un long tuyau d’arrosage
peint en vert, déroulant ses circuits, dressait aux points où il était
percé au-dessus des fleurs, dont il imbibait les parfums, l’éventail
vertical et prismatique de ses gouttelettes multicolores" :start 0 :end 463) (sentence :text "Tout à coup,
je m’arrêtai, je ne pus plus bouger, comme il arrive quand une vision
ne s’adresse pas seulement à nos regards, mais requiert des
perceptions plus profondes et dispose de notre être tout entier" :start 464 :end 671) (sentence :text "Une
fillette d’un blond roux qui avait l’air de rentrer de promenade et
tenait à la main une bêche de jardinage, nous regardait, levant son
visage semé de taches roses" :start 672 :end 840) (sentence :text "Ses yeux noirs brillaient et comme je ne
savais pas alors, ni ne l’ai appris depuis, réduire en ses éléments
objectifs une impression forte, comme je n’avais pas, ainsi qu’on dit,
assez «d’esprit d’observation» pour dégager la notion de leur couleur,
pendant longtemps, chaque fois que je repensai à elle, le souvenir de
leur éclat se présentait aussitôt à moi comme celui d’un vif azur,
puisqu’elle était blonde: de sorte que, peut-être si elle n’avait pas
eu des yeux aussi noirs,--ce qui frappait tant la première fois qu’on
la voyait--je n’aurais pas été, comme je le fus, plus particulièrement
amoureux, en elle, de ses yeux bleus" :start 841 :end 1477)
 ))