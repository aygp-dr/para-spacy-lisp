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
 :text "Pour faire partie du «petit noyau», du «petit groupe», du «petit clan»
des Verdurin, une condition était suffisante mais elle était
nécessaire: il fallait adhérer tacitement à un Credo dont un des
articles était que le jeune pianiste, protégé par Mme Verdurin cette
année-là et dont elle disait: «Ça ne devrait pas être permis de savoir
jouer Wagner comme ça!», «enfonçait» à la fois Planté et Rubinstein et
que le docteur Cottard avait plus de diagnostic que Potain. Toute
«nouvelle recrue» à qui les Verdurin ne pouvaient pas persuader que
les soirées des gens qui n’allaient pas chez eux étaient ennuyeuses
comme la pluie, se voyait immédiatement exclue. Les femmes étant à cet
égard plus rebelles que les hommes à déposer toute curiosité mondaine
et l’envie de se renseigner par soi-même sur l’agrément des autres
salons, et les Verdurin sentant d’autre part que cet esprit d’examen
et ce démon de frivolité pouvaient par contagion devenir fatal à
l’orthodoxie de la petite église, ils avaient été amenés à rejeter
successivement tous les «fidèles» du sexe féminin."
 :tokens 175
 :processed-at "2025-03-16T02:18:14.202538"
 :entities (list
  (entity :text "Pour" :label "ORG" :start 0 :end 4) (entity :text "Verdurin," :label "ORG" :start 75 :end 84) (entity :text "Credo" :label "ORG" :start 179 :end 184) (entity :text "Verdurin" :label "ORG" :start 251 :end 259) (entity :text "Wagner" :label "ORG" :start 343 :end 349) (entity :text "Planté" :label "ORG" :start 384 :end 390) (entity :text "Rubinstein" :label "ORG" :start 394 :end 404) (entity :text "Cottard" :label "ORG" :start 423 :end 430) (entity :text "Potain." :label "ORG" :start 460 :end 467) (entity :text "Toute" :label "ORG" :start 468 :end 473) (entity :text "Verdurin" :label "ORG" :start 502 :end 510) (entity :text "Verdurin" :label "ORG" :start 833 :end 841)
 )
 :sentences (list
  (sentence :text "Pour faire partie du «petit noyau», du «petit groupe», du «petit clan»
des Verdurin, une condition était suffisante mais elle était
nécessaire: il fallait adhérer tacitement à un Credo dont un des
articles était que le jeune pianiste, protégé par Mme Verdurin cette
année-là et dont elle disait: «Ça ne devrait pas être permis de savoir
jouer Wagner comme ça!», «enfonçait» à la fois Planté et Rubinstein et
que le docteur Cottard avait plus de diagnostic que Potain" :start 0 :end 466) (sentence :text "Toute
«nouvelle recrue» à qui les Verdurin ne pouvaient pas persuader que
les soirées des gens qui n’allaient pas chez eux étaient ennuyeuses
comme la pluie, se voyait immédiatement exclue" :start 467 :end 656) (sentence :text "Les femmes étant à cet
égard plus rebelles que les hommes à déposer toute curiosité mondaine
et l’envie de se renseigner par soi-même sur l’agrément des autres
salons, et les Verdurin sentant d’autre part que cet esprit d’examen
et ce démon de frivolité pouvaient par contagion devenir fatal à
l’orthodoxie de la petite église, ils avaient été amenés à rejeter
successivement tous les «fidèles» du sexe féminin" :start 657 :end 1068)
 ))