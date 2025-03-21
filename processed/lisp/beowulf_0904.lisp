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
 :text "Quand enfin Swann présenta M. de Froberville à la jeune Mme de
Cambremer, comme c’était la première fois qu’elle entendait le nom du
général, elle esquissa le sourire de joie et de surprise qu’elle
aurait eu si on n’en avait jamais prononcé devant elle d’autre que
celui-là, car ne connaissant pas les amis de sa nouvelle famille, à
chaque personne qu’on lui amenait, elle croyait que c’était l’un
d’eux, et pensant qu’elle faisait preuve de tact en ayant l’air d’en
avoir tant entendu parler depuis qu’elle était mariée, elle tendait la
main d’un air hésitant destiné à prouver la réserve apprise qu’elle
avait à vaincre et la sympathie spontanée qui réussissait à en
triompher. Aussi ses beaux-parents, qu’elle croyait encore les gens
les plus brillants de France, déclaraient-ils qu’elle était un ange;
d’autant plus qu’ils préféraient paraître, en la faisant épouser à
leur fils, avoir cédé à l’attrait plutôt de ses qualités que de sa
grande fortune."
 :tokens 157
 :processed-at "2025-03-16T02:18:14.741115"
 :entities (list
  (entity :text "Quand" :label "ORG" :start 0 :end 5) (entity :text "Swann" :label "ORG" :start 12 :end 17) (entity :text "Froberville" :label "ORG" :start 33 :end 44) (entity :text "Cambremer," :label "ORG" :start 63 :end 73) (entity :text "France," :label "ORG" :start 759 :end 766)
 )
 :sentences (list
  (sentence :text "Quand enfin Swann présenta M" :start 0 :end 28) (sentence :text "de Froberville à la jeune Mme de
Cambremer, comme c’était la première fois qu’elle entendait le nom du
général, elle esquissa le sourire de joie et de surprise qu’elle
aurait eu si on n’en avait jamais prononcé devant elle d’autre que
celui-là, car ne connaissant pas les amis de sa nouvelle famille, à
chaque personne qu’on lui amenait, elle croyait que c’était l’un
d’eux, et pensant qu’elle faisait preuve de tact en ayant l’air d’en
avoir tant entendu parler depuis qu’elle était mariée, elle tendait la
main d’un air hésitant destiné à prouver la réserve apprise qu’elle
avait à vaincre et la sympathie spontanée qui réussissait à en
triompher" :start 29 :end 678) (sentence :text "Aussi ses beaux-parents, qu’elle croyait encore les gens
les plus brillants de France, déclaraient-ils qu’elle était un ange;
d’autant plus qu’ils préféraient paraître, en la faisant épouser à
leur fils, avoir cédé à l’attrait plutôt de ses qualités que de sa
grande fortune" :start 679 :end 954)
 ))