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
 :text "Ainsi passa près de moi ce nom de Gilberte, donné comme un talisman
qui me permettait peut-être de retrouver un jour celle dont il venait
de faire une personne et qui, l’instant d’avant, n’était qu’une image
incertaine. Ainsi passa-t-il, proféré au-dessus des jasmins et des
giroflées, aigre et frais comme les gouttes de l’arrosoir vert;
imprégnant, irisant la zone d’air pur qu’il avait traversée--et qu’il
isolait,--du mystère de la vie de celle qu’il désignait pour les êtres
heureux qui vivaient, qui voyageaient avec elle; déployant sous
l’épinier rose, à hauteur de mon épaule, la quintessence de leur
familiarité, pour moi si douloureuse, avec elle, avec l’inconnu de sa
vie où je n’entrerais pas."
 :tokens 113
 :processed-at "2025-03-16T02:18:14.113400"
 :entities (list
  (entity :text "Gilberte," :label "ORG" :start 34 :end 43)
 )
 :sentences (list
  (sentence :text "Ainsi passa près de moi ce nom de Gilberte, donné comme un talisman
qui me permettait peut-être de retrouver un jour celle dont il venait
de faire une personne et qui, l’instant d’avant, n’était qu’une image
incertaine" :start 0 :end 218) (sentence :text "Ainsi passa-t-il, proféré au-dessus des jasmins et des
giroflées, aigre et frais comme les gouttes de l’arrosoir vert;
imprégnant, irisant la zone d’air pur qu’il avait traversée--et qu’il
isolait,--du mystère de la vie de celle qu’il désignait pour les êtres
heureux qui vivaient, qui voyageaient avec elle; déployant sous
l’épinier rose, à hauteur de mon épaule, la quintessence de leur
familiarité, pour moi si douloureuse, avec elle, avec l’inconnu de sa
vie où je n’entrerais pas" :start 219 :end 704)
 ))