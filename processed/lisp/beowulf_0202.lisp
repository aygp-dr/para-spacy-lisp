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
 :text "D’après ses livres j’imaginais Bergotte comme un vieillard faible et
déçu qui avait perdu des enfants et ne s’était jamais consolé. Aussi
je lisais, je chantais intérieurement sa prose, plus «dolce», plus
«lento» peut-être qu’elle n’était écrite, et la phrase la plus simple
s’adressait à moi avec une intonation attendrie. Plus que tout
j’aimais sa philosophie, je m’étais donné à elle pour toujours. Elle
me rendait impatient d’arriver à l’âge où j’entrerais au collège, dans
la classe appelée Philosophie. Mais je ne voulais pas qu’on y fît
autre chose que vivre uniquement par la pensée de Bergotte, et si l’on
m’avait dit que les métaphysiciens auxquels je m’attacherais alors ne
lui ressembleraient en rien, j’aurais ressenti le désespoir d’un
amoureux qui veut aimer pour la vie et à qui on parle des autres
maîtresses qu’il aura plus tard."
 :tokens 138
 :processed-at "2025-03-16T02:18:13.990626"
 :entities (list
  (entity :text "Bergotte" :label "ORG" :start 31 :end 39) (entity :text "Plus" :label "ORG" :start 324 :end 328) (entity :text "Elle" :label "ORG" :start 402 :end 406) (entity :text "Philosophie." :label "ORG" :start 496 :end 508) (entity :text "Mais" :label "ORG" :start 509 :end 513) (entity :text "Bergotte," :label "ORG" :start 594 :end 603)
 )
 :sentences (list
  (sentence :text "D’après ses livres j’imaginais Bergotte comme un vieillard faible et
déçu qui avait perdu des enfants et ne s’était jamais consolé" :start 0 :end 130) (sentence :text "Aussi
je lisais, je chantais intérieurement sa prose, plus «dolce», plus
«lento» peut-être qu’elle n’était écrite, et la phrase la plus simple
s’adressait à moi avec une intonation attendrie" :start 131 :end 322) (sentence :text "Plus que tout
j’aimais sa philosophie, je m’étais donné à elle pour toujours" :start 323 :end 400) (sentence :text "Elle
me rendait impatient d’arriver à l’âge où j’entrerais au collège, dans
la classe appelée Philosophie" :start 401 :end 507) (sentence :text "Mais je ne voulais pas qu’on y fît
autre chose que vivre uniquement par la pensée de Bergotte, et si l’on
m’avait dit que les métaphysiciens auxquels je m’attacherais alors ne
lui ressembleraient en rien, j’aurais ressenti le désespoir d’un
amoureux qui veut aimer pour la vie et à qui on parle des autres
maîtresses qu’il aura plus tard" :start 508 :end 846)
 ))