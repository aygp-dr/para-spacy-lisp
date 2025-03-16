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
 :text "Sans entendre les réflexions, je percevais autour d’elle le murmure
indistinct de la célébrité. Mon cœur battait d’impatience quand je
pensais qu’il allait se passer un instant encore avant que tous ces
gens, au milieu desquels je remarquais avec désolation que n’était pas
un banquier mulâtre par lequel je me sentais méprisé, vissent le jeune
homme inconnu auquel ils ne prêtaient aucune attention, saluer (sans
la connaître, à vrai dire, mais je m’y croyais autorisé parce que mes
parents connaissaient son mari et que j’étais le camarade de sa
fille), cette femme dont la réputation de beauté, d’inconduite et
d’élégance était universelle. Mais déjà j’étais tout près de Mme
Swann, alors je lui tirais un si grand coup de chapeau, si étendu, si
prolongé, qu’elle ne pouvait s’empêcher de sourire. Des gens riaient.
Quant à elle, elle ne m’avait jamais vu avec Gilberte, elle ne savait
pas mon nom, mais j’étais pour elle--comme un des gardes du Bois, ou le
batelier ou les canards du lac à qui elle jetait du pain--un des
personnages secondaires, familiers, anonymes, aussi dénués de
caractères individuels qu’un «emploi de théâtre», de ses promenades au
bois. Certains jours où je ne l’avais pas vue allée des Acacias, il
m’arrivait de la rencontrer dans l’allée de la Reine-Marguerite où
vont les femmes qui cherchent à être seules, ou à avoir l’air de
chercher à l’être; elle ne le restait pas longtemps, bientôt rejointe
par quelque ami, souvent coiffé d’un «tube» gris, que je ne
connaissais pas et qui causait longuement avec elle, tandis que leurs
deux voitures suivaient."
 :tokens 262
 :processed-at "2025-03-16T02:18:14.905193"
 :entities (list
  (entity :text "Sans" :label "ORG" :start 0 :end 4) (entity :text "Mais" :label "ORG" :start 644 :end 648) (entity :text "Swann," :label "ORG" :start 679 :end 685) (entity :text "Quant" :label "ORG" :start 819 :end 824) (entity :text "Gilberte," :label "ORG" :start 864 :end 873) (entity :text "Bois," :label "ORG" :start 949 :end 954) (entity :text "Certains" :label "ORG" :start 1165 :end 1173) (entity :text "Reine-Marguerite" :label "ORG" :start 1274 :end 1290)
 )
 :sentences (list
  (sentence :text "Sans entendre les réflexions, je percevais autour d’elle le murmure
indistinct de la célébrité" :start 0 :end 94) (sentence :text "Mon cœur battait d’impatience quand je
pensais qu’il allait se passer un instant encore avant que tous ces
gens, au milieu desquels je remarquais avec désolation que n’était pas
un banquier mulâtre par lequel je me sentais méprisé, vissent le jeune
homme inconnu auquel ils ne prêtaient aucune attention, saluer (sans
la connaître, à vrai dire, mais je m’y croyais autorisé parce que mes
parents connaissaient son mari et que j’étais le camarade de sa
fille), cette femme dont la réputation de beauté, d’inconduite et
d’élégance était universelle" :start 95 :end 642) (sentence :text "Mais déjà j’étais tout près de Mme
Swann, alors je lui tirais un si grand coup de chapeau, si étendu, si
prolongé, qu’elle ne pouvait s’empêcher de sourire" :start 643 :end 799) (sentence :text "Des gens riaient" :start 800 :end 817) (sentence :text "Quant à elle, elle ne m’avait jamais vu avec Gilberte, elle ne savait
pas mon nom, mais j’étais pour elle--comme un des gardes du Bois, ou le
batelier ou les canards du lac à qui elle jetait du pain--un des
personnages secondaires, familiers, anonymes, aussi dénués de
caractères individuels qu’un «emploi de théâtre», de ses promenades au
bois" :start 818 :end 1163) (sentence :text "Certains jours où je ne l’avais pas vue allée des Acacias, il
m’arrivait de la rencontrer dans l’allée de la Reine-Marguerite où
vont les femmes qui cherchent à être seules, ou à avoir l’air de
chercher à l’être; elle ne le restait pas longtemps, bientôt rejointe
par quelque ami, souvent coiffé d’un «tube» gris, que je ne
connaissais pas et qui causait longuement avec elle, tandis que leurs
deux voitures suivaient" :start 1164 :end 1582)
 ))