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
 :text "Ces nouvelles façons indifférentes, distraites, irritables, qui
étaient maintenant celles d’Odette avec lui, certes Swann en
souffrait; mais il ne connaissait pas sa souffrance; comme c’était
progressivement, jour par jour, qu’Odette s’était refroidie à son
égard, ce n’est qu’en mettant en regard de ce qu’elle était
aujourd’hui ce qu’elle avait été au début, qu’il aurait pu sonder la
profondeur du changement qui s’était accompli. Or ce changement
c’était sa profonde, sa secrète blessure, qui lui faisait mal jour et
nuit, et dès qu’il sentait que ses pensées allaient un peu trop près
d’elle, vivement il les dirigeait d’un autre côté de peur de trop
souffrir. Il se disait bien d’une façon abstraite: «Il fut un temps où
Odette m’aimait davantage», mais jamais il ne revoyait ce temps. De
même qu’il y avait dans son cabinet une commode qu’il s’arrangeait à
ne pas regarder, qu’il faisait un crochet pour éviter en entrant et en
sortant, parce que dans un tiroir étaient serrés le chrysanthème
qu’elle lui avait donné le premier soir où il l’avait reconduite, les
lettres où elle disait: «Que n’y avez-vous oublié aussi votre cœur, je
ne vous aurais pas laissé le reprendre» et: «A quelque heure du jour
et de la nuit que vous ayez besoin de moi, faites-moi signe et
disposez de ma vie», de même il y avait en lui une place dont il ne
laissait jamais approcher son esprit, lui faisant faire s’il le
fallait le détour d’un long raisonnement pour qu’il n’eût pas à passer
devant elle: c’était celle où vivait le souvenir des jours heureux."
 :tokens 262
 :processed-at "2025-03-16T02:18:14.648993"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 116 :end 121) (entity :text "Odette" :label "ORG" :start 227 :end 233) (entity :text "«Que" :label "ORG" :start 1094 :end 1098)
 )
 :sentences (list
  (sentence :text "Ces nouvelles façons indifférentes, distraites, irritables, qui
étaient maintenant celles d’Odette avec lui, certes Swann en
souffrait; mais il ne connaissait pas sa souffrance; comme c’était
progressivement, jour par jour, qu’Odette s’était refroidie à son
égard, ce n’est qu’en mettant en regard de ce qu’elle était
aujourd’hui ce qu’elle avait été au début, qu’il aurait pu sonder la
profondeur du changement qui s’était accompli" :start 0 :end 432) (sentence :text "Or ce changement
c’était sa profonde, sa secrète blessure, qui lui faisait mal jour et
nuit, et dès qu’il sentait que ses pensées allaient un peu trop près
d’elle, vivement il les dirigeait d’un autre côté de peur de trop
souffrir" :start 433 :end 664) (sentence :text "Il se disait bien d’une façon abstraite: «Il fut un temps où
Odette m’aimait davantage», mais jamais il ne revoyait ce temps" :start 665 :end 790) (sentence :text "De
même qu’il y avait dans son cabinet une commode qu’il s’arrangeait à
ne pas regarder, qu’il faisait un crochet pour éviter en entrant et en
sortant, parce que dans un tiroir étaient serrés le chrysanthème
qu’elle lui avait donné le premier soir où il l’avait reconduite, les
lettres où elle disait: «Que n’y avez-vous oublié aussi votre cœur, je
ne vous aurais pas laissé le reprendre» et: «A quelque heure du jour
et de la nuit que vous ayez besoin de moi, faites-moi signe et
disposez de ma vie», de même il y avait en lui une place dont il ne
laissait jamais approcher son esprit, lui faisant faire s’il le
fallait le détour d’un long raisonnement pour qu’il n’eût pas à passer
devant elle: c’était celle où vivait le souvenir des jours heureux" :start 791 :end 1542)
 ))