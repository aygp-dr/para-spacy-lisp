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
 :text "Et certes cela ne veut pas dire que M. Legrandin ne fût pas sincère
quand il tonnait contre les snobs. Il ne pouvait pas savoir, au moins
par lui-même, qu’il le fût, puisque nous ne connaissons jamais que les
passions des autres, et que ce que nous arrivons à savoir des nôtres,
ce n’est que d’eux que nous avons pu l’apprendre. Sur nous, elles
n’agissent que d’une façon seconde, par l’imagination qui substitue
aux premiers mobiles des mobiles de relais qui sont plus décents.
Jamais le snobisme de Legrandin ne lui conseillait d’aller voir
souvent une duchesse. Il chargeait l’imagination de Legrandin de lui
faire apparaître cette duchesse comme parée de toutes les grâces.
Legrandin se rapprochait de la duchesse, s’estimant de céder à cet
attrait de l’esprit et de la vertu qu’ignorent les infâmes snobs.
Seuls les autres savaient qu’il en était un; car, grâce à l’incapacité
où ils étaient de comprendre le travail intermédiaire de son
imagination, ils voyaient en face l’une de l’autre l’activité mondaine
de Legrandin et sa cause première."
 :tokens 174
 :processed-at "2025-03-16T02:18:14.083677"
 :entities (list
  (entity :text "Legrandin" :label "ORG" :start 39 :end 48) (entity :text "Jamais" :label "ORG" :start 479 :end 485) (entity :text "Legrandin" :label "ORG" :start 501 :end 510) (entity :text "Legrandin" :label "ORG" :start 595 :end 604) (entity :text "Legrandin" :label "ORG" :start 678 :end 687) (entity :text "Seuls" :label "ORG" :start 811 :end 816) (entity :text "Legrandin" :label "ORG" :start 1017 :end 1026)
 )
 :sentences (list
  (sentence :text "Et certes cela ne veut pas dire que M" :start 0 :end 37) (sentence :text "Legrandin ne fût pas sincère
quand il tonnait contre les snobs" :start 38 :end 101) (sentence :text "Il ne pouvait pas savoir, au moins
par lui-même, qu’il le fût, puisque nous ne connaissons jamais que les
passions des autres, et que ce que nous arrivons à savoir des nôtres,
ce n’est que d’eux que nous avons pu l’apprendre" :start 102 :end 327) (sentence :text "Sur nous, elles
n’agissent que d’une façon seconde, par l’imagination qui substitue
aux premiers mobiles des mobiles de relais qui sont plus décents" :start 328 :end 477) (sentence :text "Jamais le snobisme de Legrandin ne lui conseillait d’aller voir
souvent une duchesse" :start 478 :end 563) (sentence :text "Il chargeait l’imagination de Legrandin de lui
faire apparaître cette duchesse comme parée de toutes les grâces" :start 564 :end 676) (sentence :text "Legrandin se rapprochait de la duchesse, s’estimant de céder à cet
attrait de l’esprit et de la vertu qu’ignorent les infâmes snobs" :start 677 :end 809) (sentence :text "Seuls les autres savaient qu’il en était un; car, grâce à l’incapacité
où ils étaient de comprendre le travail intermédiaire de son
imagination, ils voyaient en face l’une de l’autre l’activité mondaine
de Legrandin et sa cause première" :start 810 :end 1047)
 ))