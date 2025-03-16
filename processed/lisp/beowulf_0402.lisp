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
 :text "Ce n’était pas seulement d’ailleurs la brillante phalange de
vertueuses douairières, de généraux, d’académiciens, avec lesquels il
était particulièrement lié, que Swann forçait avec tant de cynisme à
lui servir d’entremetteurs. Tous ses amis avaient l’habitude de
recevoir de temps en temps des lettres de lui où un mot de
recommandation ou d’introduction leur était demandé avec une habileté
diplomatique qui, persistant à travers les amours successives et les
prétextes différents, accusait, plus que n’eussent fait les
maladresses, un caractère permanent et des buts identiques. Je me suis
souvent fait raconter bien des années plus tard, quand je commençai à
m’intéresser à son caractère à cause des ressemblances qu’en de tout
autres parties il offrait avec le mien, que quand il écrivait à mon
grand-père (qui ne l’était pas encore, car c’est vers l’époque de ma
naissance que commença la grande liaison de Swann et elle interrompit
longtemps ces pratiques) celui-ci, en reconnaissant sur l’enveloppe
l’écriture de son ami, s’écriait: «Voilà Swann qui va demander quelque
chose: à la garde!» Et soit méfiance, soit par le sentiment
inconsciemment diabolique qui nous pousse à n’offrir une chose qu’aux
gens qui n’en ont pas envie, mes grands-parents opposaient une fin de
non-recevoir absolue aux prières les plus faciles à satisfaire qu’il
leur adressait, comme de le présenter à une jeune fille qui dînait
tous les dimanches à la maison, et qu’ils étaient obligés, chaque fois
que Swann leur en reparlait, de faire semblant de ne plus voir, alors
que pendant toute la semaine on se demandait qui on pourrait bien
inviter avec elle, finissant souvent par ne trouver personne, faute de
faire signe à celui qui en eût été si heureux."
 :tokens 279
 :processed-at "2025-03-16T02:18:14.221017"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 163 :end 168) (entity :text "Tous" :label "ORG" :start 228 :end 232) (entity :text "Swann" :label "ORG" :start 913 :end 918) (entity :text "«Voilà" :label "ORG" :start 1041 :end 1047) (entity :text "Swann" :label "ORG" :start 1048 :end 1053) (entity :text "Swann" :label "ORG" :start 1489 :end 1494)
 )
 :sentences (list
  (sentence :text "Ce n’était pas seulement d’ailleurs la brillante phalange de
vertueuses douairières, de généraux, d’académiciens, avec lesquels il
était particulièrement lié, que Swann forçait avec tant de cynisme à
lui servir d’entremetteurs" :start 0 :end 226) (sentence :text "Tous ses amis avaient l’habitude de
recevoir de temps en temps des lettres de lui où un mot de
recommandation ou d’introduction leur était demandé avec une habileté
diplomatique qui, persistant à travers les amours successives et les
prétextes différents, accusait, plus que n’eussent fait les
maladresses, un caractère permanent et des buts identiques" :start 227 :end 580) (sentence :text "Je me suis
souvent fait raconter bien des années plus tard, quand je commençai à
m’intéresser à son caractère à cause des ressemblances qu’en de tout
autres parties il offrait avec le mien, que quand il écrivait à mon
grand-père (qui ne l’était pas encore, car c’est vers l’époque de ma
naissance que commença la grande liaison de Swann et elle interrompit
longtemps ces pratiques) celui-ci, en reconnaissant sur l’enveloppe
l’écriture de son ami, s’écriait: «Voilà Swann qui va demander quelque
chose: à la garde!» Et soit méfiance, soit par le sentiment
inconsciemment diabolique qui nous pousse à n’offrir une chose qu’aux
gens qui n’en ont pas envie, mes grands-parents opposaient une fin de
non-recevoir absolue aux prières les plus faciles à satisfaire qu’il
leur adressait, comme de le présenter à une jeune fille qui dînait
tous les dimanches à la maison, et qu’ils étaient obligés, chaque fois
que Swann leur en reparlait, de faire semblant de ne plus voir, alors
que pendant toute la semaine on se demandait qui on pourrait bien
inviter avec elle, finissant souvent par ne trouver personne, faute de
faire signe à celui qui en eût été si heureux" :start 581 :end 1737)
 ))