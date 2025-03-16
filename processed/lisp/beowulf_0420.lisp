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
 :text "Le docteur Cottard ne savait jamais d’une façon certaine de quel ton
il devait répondre à quelqu’un, si son interlocuteur voulait rire ou
était sérieux. Et à tout hasard il ajoutait à toutes ses expressions
de physionomie l’offre d’un sourire conditionnel et provisoire dont la
finesse expectante le disculperait du reproche de naïveté, si le
propos qu’on lui avait tenu se trouvait avoir été facétieux. Mais
comme pour faire face à l’hypothèse opposée il n’osait pas laisser ce
sourire s’affirmer nettement sur son visage, on y voyait flotter
perpétuellement une incertitude où se lisait la question qu’il n’osait
pas poser: «Dites-vous cela pour de bon?» Il n’était pas plus assuré
de la façon dont il devait se comporter dans la rue, et même en
général dans la vie, que dans un salon, et on le voyait opposer aux
passants, aux voitures, aux événements un malicieux sourire qui ôtait
d’avance à son attitude toute impropriété puisqu’il prouvait, si elle
n’était pas de mise, qu’il le savait bien et que s’il avait adopté
celle-là, c’était par plaisanterie."
 :tokens 175
 :processed-at "2025-03-16T02:18:14.238323"
 :entities (list
  (entity :text "Cottard" :label "ORG" :start 11 :end 18) (entity :text "Mais" :label "ORG" :start 404 :end 408)
 )
 :sentences (list
  (sentence :text "Le docteur Cottard ne savait jamais d’une façon certaine de quel ton
il devait répondre à quelqu’un, si son interlocuteur voulait rire ou
était sérieux" :start 0 :end 151) (sentence :text "Et à tout hasard il ajoutait à toutes ses expressions
de physionomie l’offre d’un sourire conditionnel et provisoire dont la
finesse expectante le disculperait du reproche de naïveté, si le
propos qu’on lui avait tenu se trouvait avoir été facétieux" :start 152 :end 402) (sentence :text "Mais
comme pour faire face à l’hypothèse opposée il n’osait pas laisser ce
sourire s’affirmer nettement sur son visage, on y voyait flotter
perpétuellement une incertitude où se lisait la question qu’il n’osait
pas poser: «Dites-vous cela pour de bon?» Il n’était pas plus assuré
de la façon dont il devait se comporter dans la rue, et même en
général dans la vie, que dans un salon, et on le voyait opposer aux
passants, aux voitures, aux événements un malicieux sourire qui ôtait
d’avance à son attitude toute impropriété puisqu’il prouvait, si elle
n’était pas de mise, qu’il le savait bien et que s’il avait adopté
celle-là, c’était par plaisanterie" :start 403 :end 1057)
 ))