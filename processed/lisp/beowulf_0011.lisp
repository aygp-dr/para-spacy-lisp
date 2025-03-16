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
 :text "J’appuyais tendrement mes joues contre les belles joues de l’oreiller
qui, pleines et fraîches, sont comme les joues de notre enfance. Je
frottais une allumette pour regarder ma montre. Bientôt minuit. C’est
l’instant où le malade, qui a été obligé de partir en voyage et a dû
coucher dans un hôtel inconnu, réveillé par une crise, se réjouit en
apercevant sous la porte une raie de jour. Quel bonheur, c’est déjà le
matin! Dans un moment les domestiques seront levés, il pourra sonner,
on viendra lui porter secours. L’espérance d’être soulagé lui donne du
courage pour souffrir. Justement il a cru entendre des pas; les pas se
rapprochent, puis s’éloignent. Et la raie de jour qui était sous sa
porte a disparu. C’est minuit; on vient d’éteindre le gaz; le dernier
domestique est parti et il faudra rester toute la nuit à souffrir sans
remède."
 :tokens 145
 :processed-at "2025-03-16T02:18:13.779771"
 :entities (list
  (entity :text "Bientôt" :label "ORG" :start 186 :end 193) (entity :text "Quel" :label "ORG" :start 389 :end 393) (entity :text "Dans" :label "ORG" :start 424 :end 428) (entity :text "Justement" :label "ORG" :start 581 :end 590)
 )
 :sentences (list
  (sentence :text "J’appuyais tendrement mes joues contre les belles joues de l’oreiller
qui, pleines et fraîches, sont comme les joues de notre enfance" :start 0 :end 133) (sentence :text "Je
frottais une allumette pour regarder ma montre" :start 134 :end 184) (sentence :text "Bientôt minuit" :start 185 :end 200) (sentence :text "C’est
l’instant où le malade, qui a été obligé de partir en voyage et a dû
coucher dans un hôtel inconnu, réveillé par une crise, se réjouit en
apercevant sous la porte une raie de jour" :start 201 :end 387) (sentence :text "Quel bonheur, c’est déjà le
matin! Dans un moment les domestiques seront levés, il pourra sonner,
on viendra lui porter secours" :start 388 :end 516) (sentence :text "L’espérance d’être soulagé lui donne du
courage pour souffrir" :start 517 :end 579) (sentence :text "Justement il a cru entendre des pas; les pas se
rapprochent, puis s’éloignent" :start 580 :end 658) (sentence :text "Et la raie de jour qui était sous sa
porte a disparu" :start 659 :end 712) (sentence :text "C’est minuit; on vient d’éteindre le gaz; le dernier
domestique est parti et il faudra rester toute la nuit à souffrir sans
remède" :start 713 :end 844)
 ))