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
 :text "Que ne répondait-il du moins comme Forcheville: «Dame, c’est une
duchesse; il y a des gens que ça impressionne encore», ce qui avait
permis au moins à Mme Verdurin de répliquer: «Grand bien leur fasse!»
Au lieu de cela, Swann se contenta de rire d’un air qui signifiait
qu’il ne pouvait même pas prendre au sérieux une pareille
extravagance. M. Verdurin, continuant à jeter sur sa femme des regards
furtifs, voyait avec tristesse et comprenait trop bien qu’elle
éprouvait la colère d’un grand inquisiteur qui ne parvient pas à
extirper l’hérésie, et pour tâcher d’amener Swann à une rétractation,
comme le courage de ses opinions paraît toujours un calcul et une
lâcheté aux yeux de ceux à l’encontre de qui il s’exerce, M. Verdurin
l’interpella:"
 :tokens 125
 :processed-at "2025-03-16T02:18:14.456751"
 :entities (list
  (entity :text "Forcheville:" :label "ORG" :start 35 :end 47) (entity :text "«Dame," :label "ORG" :start 48 :end 54) (entity :text "Verdurin" :label "ORG" :start 155 :end 163) (entity :text "«Grand" :label "ORG" :start 178 :end 184) (entity :text "Swann" :label "ORG" :start 220 :end 225) (entity :text "Verdurin," :label "ORG" :start 345 :end 354) (entity :text "Swann" :label "ORG" :start 571 :end 576) (entity :text "Verdurin" :label "ORG" :start 724 :end 732)
 )
 :sentences (list
  (sentence :text "Que ne répondait-il du moins comme Forcheville: «Dame, c’est une
duchesse; il y a des gens que ça impressionne encore», ce qui avait
permis au moins à Mme Verdurin de répliquer: «Grand bien leur fasse!»
Au lieu de cela, Swann se contenta de rire d’un air qui signifiait
qu’il ne pouvait même pas prendre au sérieux une pareille
extravagance" :start 0 :end 340) (sentence :text "M" :start 150 :end 152) (sentence :text "Verdurin, continuant à jeter sur sa femme des regards
furtifs, voyait avec tristesse et comprenait trop bien qu’elle
éprouvait la colère d’un grand inquisiteur qui ne parvient pas à
extirper l’hérésie, et pour tâcher d’amener Swann à une rétractation,
comme le courage de ses opinions paraît toujours un calcul et une
lâcheté aux yeux de ceux à l’encontre de qui il s’exerce, M" :start 344 :end 722) (sentence :text "Verdurin
l’interpella:" :start 723 :end 746)
 ))