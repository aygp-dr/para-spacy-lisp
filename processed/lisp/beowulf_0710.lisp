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
 :text "Mais aussitôt sa jalousie, comme si elle était l’ombre de son amour,
se complétait du double de ce nouveau sourire qu’elle lui avait
adressé le soir même--et qui, inverse maintenant, raillait Swann et se
chargeait d’amour pour un autre--, de cette inclinaison de sa tête mais
renversée vers d’autres lèvres, et, données à un autre, de toutes les
marques de tendresse qu’elle avait eues pour lui. Et tous les
souvenirs voluptueux qu’il emportait de chez elle, étaient comme
autant d’esquisses, de «projets» pareils à ceux que vous soumet un
décorateur, et qui permettaient à Swann de se faire une idée des
attitudes ardentes ou pâmées qu’elle pouvait avoir avec d’autres. De
sorte qu’il en arrivait à regretter chaque plaisir qu’il goûtait près
d’elle, chaque caresse inventée et dont il avait eu l’imprudence de
lui signaler la douceur, chaque grâce qu’il lui découvrait, car il
savait qu’un instant après, elles allaient enrichir d’instruments
nouveaux son supplice."
 :tokens 155
 :processed-at "2025-03-16T02:18:14.535267"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 192 :end 197) (entity :text "Swann" :label "ORG" :start 574 :end 579)
 )
 :sentences (list
  (sentence :text "Mais aussitôt sa jalousie, comme si elle était l’ombre de son amour,
se complétait du double de ce nouveau sourire qu’elle lui avait
adressé le soir même--et qui, inverse maintenant, raillait Swann et se
chargeait d’amour pour un autre--, de cette inclinaison de sa tête mais
renversée vers d’autres lèvres, et, données à un autre, de toutes les
marques de tendresse qu’elle avait eues pour lui" :start 0 :end 394) (sentence :text "Et tous les
souvenirs voluptueux qu’il emportait de chez elle, étaient comme
autant d’esquisses, de «projets» pareils à ceux que vous soumet un
décorateur, et qui permettaient à Swann de se faire une idée des
attitudes ardentes ou pâmées qu’elle pouvait avoir avec d’autres" :start 395 :end 669) (sentence :text "De
sorte qu’il en arrivait à regretter chaque plaisir qu’il goûtait près
d’elle, chaque caresse inventée et dont il avait eu l’imprudence de
lui signaler la douceur, chaque grâce qu’il lui découvrait, car il
savait qu’un instant après, elles allaient enrichir d’instruments
nouveaux son supplice" :start 670 :end 966)
 ))