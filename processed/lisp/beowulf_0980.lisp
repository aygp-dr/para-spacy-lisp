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
 :text "Lierre instantané, flore pariétaire et fugitive! la plus incolore, la
plus triste, au gré de beaucoup, de celles qui peuvent ramper sur le
mur ou décorer la croisée; pour moi, de toutes la plus chère depuis le
jour où elle était apparue sur notre balcon, comme l’ombre même de la
présence de Gilberte qui était peut-être déjà aux Champs-Élysées, et
dès que j’y arriverais, me dirait: «Commençons tout de suite à jouer
aux barres, vous êtes dans mon camp»; fragile, emportée par un
souffle, mais aussi en rapport non pas avec la saison, mais avec
l’heure; promesse du bonheur immédiat que la journée refuse ou
accomplira, et par là du bonheur immédiat par excellence, le bonheur
de l’amour; plus douce, plus chaude sur la pierre que n’est la mousse
même; vivace, à qui il suffit d’un rayon pour naître et faire éclore
de la joie, même au cœur de l’hiver."
 :tokens 150
 :processed-at "2025-03-16T02:18:14.842726"
 :entities (list
  (entity :text "Lierre" :label "ORG" :start 0 :end 6) (entity :text "Gilberte" :label "ORG" :start 292 :end 300) (entity :text "Champs-Élysées," :label "ORG" :start 330 :end 345) (entity :text "«Commençons" :label "ORG" :start 384 :end 395)
 )
 :sentences (list
  (sentence :text "Lierre instantané, flore pariétaire et fugitive! la plus incolore, la
plus triste, au gré de beaucoup, de celles qui peuvent ramper sur le
mur ou décorer la croisée; pour moi, de toutes la plus chère depuis le
jour où elle était apparue sur notre balcon, comme l’ombre même de la
présence de Gilberte qui était peut-être déjà aux Champs-Élysées, et
dès que j’y arriverais, me dirait: «Commençons tout de suite à jouer
aux barres, vous êtes dans mon camp»; fragile, emportée par un
souffle, mais aussi en rapport non pas avec la saison, mais avec
l’heure; promesse du bonheur immédiat que la journée refuse ou
accomplira, et par là du bonheur immédiat par excellence, le bonheur
de l’amour; plus douce, plus chaude sur la pierre que n’est la mousse
même; vivace, à qui il suffit d’un rayon pour naître et faire éclore
de la joie, même au cœur de l’hiver" :start 0 :end 852)
 ))