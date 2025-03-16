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
 :text "Mais j’aimais Bloch, mes parents voulaient me faire plaisir, les
problèmes insolubles que je me posais à propos de la beauté dénuée de
signification de la fille de Minos et de Pasiphaé me fatiguaient
davantage et me rendaient plus souffrant que n’auraient fait de
nouvelles conversations avec lui, bien que ma mère les jugeât
pernicieuses. Et on l’aurait encore reçu à Combray si, après ce dîner,
comme il venait de m’apprendre--nouvelle qui plus tard eut beaucoup
d’influence sur ma vie, et la rendit plus heureuse, puis plus
malheureuse--que toutes les femmes ne pensaient qu’à l’amour et qu’il
n’y en a pas dont on ne pût vaincre les résistances, il ne m’avait
assuré avoir entendu dire de la façon la plus certaine que ma
grand’tante avait eu une jeunesse orageuse et avait été publiquement
entretenue. Je ne pus me tenir de répéter ces propos à mes parents, on
le mit à la porte quand il revint, et quand je l’abordai ensuite dans
la rue, il fut extrêmement froid pour moi."
 :tokens 169
 :processed-at "2025-03-16T02:18:13.985491"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Bloch," :label "ORG" :start 14 :end 20) (entity :text "Minos" :label "ORG" :start 164 :end 169) (entity :text "Pasiphaé" :label "ORG" :start 176 :end 184) (entity :text "Combray" :label "ORG" :start 369 :end 376)
 )
 :sentences (list
  (sentence :text "Mais j’aimais Bloch, mes parents voulaient me faire plaisir, les
problèmes insolubles que je me posais à propos de la beauté dénuée de
signification de la fille de Minos et de Pasiphaé me fatiguaient
davantage et me rendaient plus souffrant que n’auraient fait de
nouvelles conversations avec lui, bien que ma mère les jugeât
pernicieuses" :start 0 :end 338) (sentence :text "Et on l’aurait encore reçu à Combray si, après ce dîner,
comme il venait de m’apprendre--nouvelle qui plus tard eut beaucoup
d’influence sur ma vie, et la rendit plus heureuse, puis plus
malheureuse--que toutes les femmes ne pensaient qu’à l’amour et qu’il
n’y en a pas dont on ne pût vaincre les résistances, il ne m’avait
assuré avoir entendu dire de la façon la plus certaine que ma
grand’tante avait eu une jeunesse orageuse et avait été publiquement
entretenue" :start 339 :end 805) (sentence :text "Je ne pus me tenir de répéter ces propos à mes parents, on
le mit à la porte quand il revint, et quand je l’abordai ensuite dans
la rue, il fut extrêmement froid pour moi" :start 806 :end 977)
 ))