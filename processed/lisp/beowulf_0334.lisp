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
 :text "Elle était en grand deuil, car son père était mort depuis peu. Nous
n’étions pas allés la voir, ma mère ne l’avait pas voulu à cause d’une
vertu qui chez elle limitait seule les effets de la bonté: la pudeur;
mais elle la plaignait profondément. Ma mère se rappelant la triste
fin de vie de M. Vinteuil, tout absorbée d’abord par les soins de mère
et de bonne d’enfant qu’il donnait à sa fille, puis par les
souffrances que celle-ci lui avait causées; elle revoyait le visage
torturé qu’avait eu le vieillard tous les derniers temps; elle savait
qu’il avait renoncé à jamais à achever de transcrire au net toute son
œuvre des dernières années, pauvres morceaux d’un vieux professeur de
piano, d’un ancien organiste de village dont nous imaginions bien
qu’ils n’avaient guère de valeur en eux-mêmes, mais que nous ne
méprisions pas parce qu’ils en avaient tant pour lui dont ils avaient
été la raison de vivre avant qu’il les sacrifiât à sa fille, et qui
pour la plupart pas même notés, conservés seulement dans sa mémoire,
quelques-uns inscrits sur des feuillets épars, illisibles, resteraient
inconnus; ma mère pensait à cet autre renoncement plus cruel encore
auquel M. Vinteuil avait été contraint, le renoncement à un avenir de
bonheur honnête et respecté pour sa fille; quand elle évoquait toute
cette détresse suprême de l’ancien maître de piano de mes tantes, elle
éprouvait un véritable chagrin et songeait avec effroi à celui
autrement amer que devait éprouver Mlle Vinteuil tout mêlé du remords
d’avoir à peu près tué son père. «Pauvre M. Vinteuil, disait ma mère,
il a vécu et il est mort pour sa fille, sans avoir reçu son salaire.
Le recevra-t-il après sa mort et sous quelle forme? Il ne pourrait lui
venir que d’elle.»"
 :tokens 298
 :processed-at "2025-03-16T02:18:14.148888"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Nous" :label "ORG" :start 63 :end 67) (entity :text "Vinteuil," :label "ORG" :start 294 :end 303) (entity :text "Vinteuil" :label "ORG" :start 1172 :end 1180) (entity :text "Mlle" :label "ORG" :start 1470 :end 1474) (entity :text "Vinteuil" :label "ORG" :start 1475 :end 1483) (entity :text "«Pauvre" :label "ORG" :start 1538 :end 1545) (entity :text "Vinteuil," :label "ORG" :start 1549 :end 1558)
 )
 :sentences (list
  (sentence :text "Elle était en grand deuil, car son père était mort depuis peu" :start 0 :end 61) (sentence :text "Nous
n’étions pas allés la voir, ma mère ne l’avait pas voulu à cause d’une
vertu qui chez elle limitait seule les effets de la bonté: la pudeur;
mais elle la plaignait profondément" :start 62 :end 244) (sentence :text "Ma mère se rappelant la triste
fin de vie de M" :start 245 :end 292) (sentence :text "Vinteuil, tout absorbée d’abord par les soins de mère
et de bonne d’enfant qu’il donnait à sa fille, puis par les
souffrances que celle-ci lui avait causées; elle revoyait le visage
torturé qu’avait eu le vieillard tous les derniers temps; elle savait
qu’il avait renoncé à jamais à achever de transcrire au net toute son
œuvre des dernières années, pauvres morceaux d’un vieux professeur de
piano, d’un ancien organiste de village dont nous imaginions bien
qu’ils n’avaient guère de valeur en eux-mêmes, mais que nous ne
méprisions pas parce qu’ils en avaient tant pour lui dont ils avaient
été la raison de vivre avant qu’il les sacrifiât à sa fille, et qui
pour la plupart pas même notés, conservés seulement dans sa mémoire,
quelques-uns inscrits sur des feuillets épars, illisibles, resteraient
inconnus; ma mère pensait à cet autre renoncement plus cruel encore
auquel M" :start 293 :end 1170) (sentence :text "Vinteuil avait été contraint, le renoncement à un avenir de
bonheur honnête et respecté pour sa fille; quand elle évoquait toute
cette détresse suprême de l’ancien maître de piano de mes tantes, elle
éprouvait un véritable chagrin et songeait avec effroi à celui
autrement amer que devait éprouver Mlle Vinteuil tout mêlé du remords
d’avoir à peu près tué son père" :start 1171 :end 1536) (sentence :text "«Pauvre M" :start 1537 :end 1547) (sentence :text "Vinteuil, disait ma mère,
il a vécu et il est mort pour sa fille, sans avoir reçu son salaire" :start 1548 :end 1642) (sentence :text "Le recevra-t-il après sa mort et sous quelle forme? Il ne pourrait lui
venir que d’elle" :start 1643 :end 1731) (sentence :text "»" :start 1732 :end 1733)
 ))