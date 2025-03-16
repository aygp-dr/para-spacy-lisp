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
 :text "Il n’allait chez elle que le soir, et il ne savait rien de l’emploi de
son temps pendant le jour, pas plus que de son passé, au point qu’il
lui manquait même ce petit renseignement initial qui, en nous
permettant de nous imaginer ce que nous ne savons pas, nous donne
envie de le connaître. Aussi ne se demandait-il pas ce qu’elle pouvait
faire, ni quelle avait été sa vie. Il souriait seulement quelquefois
en pensant qu’il y a quelques années, quand il ne la connaissait pas,
on lui avait parlé d’une femme, qui, s’il se rappelait bien, devait
certainement être elle, comme d’une fille, d’une femme entretenue, une
de ces femmes auxquelles il attribuait encore, comme il avait peu vécu
dans leur société, le caractère entier, foncièrement pervers, dont les
dota longtemps l’imagination de certains romanciers. Il se disait
qu’il n’y a souvent qu’à prendre le contre-pied des réputations que
fait le monde pour juger exactement une personne, quand, à un tel
caractère, il opposait celui d’Odette, bonne, naïve, éprise d’idéal,
presque si incapable de ne pas dire la vérité, que, l’ayant un jour
priée, pour pouvoir dîner seul avec elle, d’écrire aux Verdurin
qu’elle était souffrante, le lendemain, il l’avait vue, devant Mme
Verdurin qui lui demandait si elle allait mieux, rougir, balbutier et
refléter malgré elle, sur son visage, le chagrin, le supplice que cela
lui était de mentir, et, tandis qu’elle multipliait dans sa réponse
les détails inventés sur sa prétendue indisposition de la veille,
avoir l’air de faire demander pardon par ses regards suppliants et sa
voix désolée de la fausseté de ses paroles."
 :tokens 269
 :processed-at "2025-03-16T02:18:14.389027"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 1151 :end 1159) (entity :text "Verdurin" :label "ORG" :start 1227 :end 1235)
 )
 :sentences (list
  (sentence :text "Il n’allait chez elle que le soir, et il ne savait rien de l’emploi de
son temps pendant le jour, pas plus que de son passé, au point qu’il
lui manquait même ce petit renseignement initial qui, en nous
permettant de nous imaginer ce que nous ne savons pas, nous donne
envie de le connaître" :start 0 :end 289) (sentence :text "Aussi ne se demandait-il pas ce qu’elle pouvait
faire, ni quelle avait été sa vie" :start 290 :end 372) (sentence :text "Il souriait seulement quelquefois
en pensant qu’il y a quelques années, quand il ne la connaissait pas,
on lui avait parlé d’une femme, qui, s’il se rappelait bien, devait
certainement être elle, comme d’une fille, d’une femme entretenue, une
de ces femmes auxquelles il attribuait encore, comme il avait peu vécu
dans leur société, le caractère entier, foncièrement pervers, dont les
dota longtemps l’imagination de certains romanciers" :start 373 :end 810) (sentence :text "Il se disait
qu’il n’y a souvent qu’à prendre le contre-pied des réputations que
fait le monde pour juger exactement une personne, quand, à un tel
caractère, il opposait celui d’Odette, bonne, naïve, éprise d’idéal,
presque si incapable de ne pas dire la vérité, que, l’ayant un jour
priée, pour pouvoir dîner seul avec elle, d’écrire aux Verdurin
qu’elle était souffrante, le lendemain, il l’avait vue, devant Mme
Verdurin qui lui demandait si elle allait mieux, rougir, balbutier et
refléter malgré elle, sur son visage, le chagrin, le supplice que cela
lui était de mentir, et, tandis qu’elle multipliait dans sa réponse
les détails inventés sur sa prétendue indisposition de la veille,
avoir l’air de faire demander pardon par ses regards suppliants et sa
voix désolée de la fausseté de ses paroles" :start 811 :end 1614)
 ))