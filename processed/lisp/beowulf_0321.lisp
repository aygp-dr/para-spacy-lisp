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
 :text "Et alors, tant les gens les plus sincères sont mêlés d’hypocrisie et
dépouillent en causant avec une personne l’opinion qu’ils ont d’elle
et expriment dès qu’elle n’est plus là, mes parents déplorèrent avec
M. Vinteuil le mariage de Swann au nom de principes et de convenances
auxquels (par cela même qu’ils les invoquaient en commun avec lui, en
braves gens de même acabit) ils avaient l’air de sous-entendre qu’il
n’était pas contrevenu à Montjouvain. M. Vinteuil n’envoya pas sa
fille chez Swann. Et celui-ci fût le premier à le regretter. Car
chaque fois qu’il venait de quitter M. Vinteuil, il se rappelait qu’il
avait depuis quelque temps un renseignement à lui demander sur
quelqu’un qui portait le même nom que lui, un de ses parents,
croyait-il. Et cette fois-là il s’était bien promis de ne pas oublier
ce qu’il avait à lui dire, quand M. Vinteuil enverrait sa fille à
Tansonville."
 :tokens 151
 :processed-at "2025-03-16T02:18:14.129092"
 :entities (list
  (entity :text "Vinteuil" :label "ORG" :start 210 :end 218) (entity :text "Swann" :label "ORG" :start 233 :end 238) (entity :text "Montjouvain." :label "ORG" :start 441 :end 453) (entity :text "Vinteuil" :label "ORG" :start 457 :end 465) (entity :text "Swann." :label "ORG" :start 493 :end 499) (entity :text "Vinteuil," :label "ORG" :start 586 :end 595) (entity :text "Vinteuil" :label "ORG" :start 849 :end 857) (entity :text "Tansonville." :label "ORG" :start 879 :end 891)
 )
 :sentences (list
  (sentence :text "Et alors, tant les gens les plus sincères sont mêlés d’hypocrisie et
dépouillent en causant avec une personne l’opinion qu’ils ont d’elle
et expriment dès qu’elle n’est plus là, mes parents déplorèrent avec
M" :start 0 :end 208) (sentence :text "Vinteuil le mariage de Swann au nom de principes et de convenances
auxquels (par cela même qu’ils les invoquaient en commun avec lui, en
braves gens de même acabit) ils avaient l’air de sous-entendre qu’il
n’était pas contrevenu à Montjouvain" :start 209 :end 452) (sentence :text "M" :start 440 :end 442) (sentence :text "Vinteuil n’envoya pas sa
fille chez Swann" :start 456 :end 498) (sentence :text "Et celui-ci fût le premier à le regretter" :start 499 :end 541) (sentence :text "Car
chaque fois qu’il venait de quitter M" :start 542 :end 584) (sentence :text "Vinteuil, il se rappelait qu’il
avait depuis quelque temps un renseignement à lui demander sur
quelqu’un qui portait le même nom que lui, un de ses parents,
croyait-il" :start 585 :end 753) (sentence :text "Et cette fois-là il s’était bien promis de ne pas oublier
ce qu’il avait à lui dire, quand M" :start 754 :end 847) (sentence :text "Vinteuil enverrait sa fille à
Tansonville" :start 848 :end 890)
 ))