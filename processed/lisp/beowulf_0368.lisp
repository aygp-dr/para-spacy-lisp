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
 :text "Mais en même temps, sur cette image que le nez proéminent, les yeux
perçants, épinglaient dans ma vision (peut-être parce que c’était eux
qui l’avaient d’abord atteinte, qui y avaient fait la première
encoche, au moment où je n’avais pas encore le temps de songer que la
femme qui apparaissait devant moi pouvait être Mme de Guermantes), sur
cette image toute récente, inchangeable, j’essayais d’appliquer
l’idée: «C’est Mme de Guermantes» sans parvenir qu’à la faire
manœuvrer en face de l’image, comme deux disques séparés par un
intervalle. Mais cette Mme de Guermantes à laquelle j’avais si souvent
rêvé, maintenant que je voyais qu’elle existait effectivement en
dehors de moi, en prit plus de puissance encore sur mon imagination
qui, un moment paralysée au contact d’une réalité si différente de ce
qu’elle attendait, se mit à réagir et à me dire: «Glorieux dès avant
Charlemagne, les Guermantes avaient le droit de vie et de mort sur
leurs vassaux; la duchesse de Guermantes descend de Geneviève de
Brabant. Elle ne connaît, ni ne consentirait à connaître aucune des
personnes qui sont ici.»"
 :tokens 180
 :processed-at "2025-03-16T02:18:14.184828"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Guermantes)," :label "ORG" :start 325 :end 337) (entity :text "Guermantes»" :label "ORG" :start 428 :end 439) (entity :text "Mais" :label "ORG" :start 544 :end 548) (entity :text "Guermantes" :label "ORG" :start 562 :end 572) (entity :text "«Glorieux" :label "ORG" :start 855 :end 864) (entity :text "Charlemagne," :label "ORG" :start 875 :end 887) (entity :text "Guermantes" :label "ORG" :start 892 :end 902) (entity :text "Guermantes" :label "ORG" :start 972 :end 982) (entity :text "Geneviève" :label "ORG" :start 994 :end 1003) (entity :text "Brabant." :label "ORG" :start 1007 :end 1015) (entity :text "Elle" :label "ORG" :start 1016 :end 1020)
 )
 :sentences (list
  (sentence :text "Mais en même temps, sur cette image que le nez proéminent, les yeux
perçants, épinglaient dans ma vision (peut-être parce que c’était eux
qui l’avaient d’abord atteinte, qui y avaient fait la première
encoche, au moment où je n’avais pas encore le temps de songer que la
femme qui apparaissait devant moi pouvait être Mme de Guermantes), sur
cette image toute récente, inchangeable, j’essayais d’appliquer
l’idée: «C’est Mme de Guermantes» sans parvenir qu’à la faire
manœuvrer en face de l’image, comme deux disques séparés par un
intervalle" :start 0 :end 542) (sentence :text "Mais cette Mme de Guermantes à laquelle j’avais si souvent
rêvé, maintenant que je voyais qu’elle existait effectivement en
dehors de moi, en prit plus de puissance encore sur mon imagination
qui, un moment paralysée au contact d’une réalité si différente de ce
qu’elle attendait, se mit à réagir et à me dire: «Glorieux dès avant
Charlemagne, les Guermantes avaient le droit de vie et de mort sur
leurs vassaux; la duchesse de Guermantes descend de Geneviève de
Brabant" :start 543 :end 1014) (sentence :text "Elle ne connaît, ni ne consentirait à connaître aucune des
personnes qui sont ici" :start 1015 :end 1097) (sentence :text "»" :start 438 :end 439)
 ))