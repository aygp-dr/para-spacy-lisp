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
 :text "Elle avait remarqué que devant ce nom Swann et Forcheville avaient
plusieurs fois supprimé la particule. Ne doutant pas que ce fût pour
montrer qu’ils n’étaient pas intimidés par les titres, elle souhaitait
d’imiter leur fierté, mais n’avait pas bien saisi par quelle forme
grammaticale elle se traduisait. Aussi sa vicieuse façon de parler
l’emportant sur son intransigeance républicaine, elle disait encore
les de La Trémoïlle ou plutôt par une abréviation en usage dans les
paroles des chansons de café-concert et les légendes des
caricaturistes et qui dissimulait le de, les d’La Trémoïlle, mais elle
se rattrapait en disant: «Madame La Trémoïlle.» «La Duchesse, comme
dit Swann», ajouta-t-elle ironiquement avec un sourire qui prouvait
qu’elle ne faisait que citer et ne prenait pas à son compte une
dénomination aussi naïve et ridicule."
 :tokens 132
 :processed-at "2025-03-16T02:18:14.502869"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 38 :end 43) (entity :text "Forcheville" :label "ORG" :start 47 :end 58) (entity :text "Trémoïlle" :label "ORG" :start 419 :end 428) (entity :text "Trémoïlle," :label "ORG" :start 584 :end 594) (entity :text "«Madame" :label "ORG" :start 630 :end 637) (entity :text "Trémoïlle.»" :label "ORG" :start 641 :end 652) (entity :text "Duchesse," :label "ORG" :start 657 :end 666) (entity :text "Swann»," :label "ORG" :start 677 :end 684)
 )
 :sentences (list
  (sentence :text "Elle avait remarqué que devant ce nom Swann et Forcheville avaient
plusieurs fois supprimé la particule" :start 0 :end 103) (sentence :text "Ne doutant pas que ce fût pour
montrer qu’ils n’étaient pas intimidés par les titres, elle souhaitait
d’imiter leur fierté, mais n’avait pas bien saisi par quelle forme
grammaticale elle se traduisait" :start 104 :end 305) (sentence :text "Aussi sa vicieuse façon de parler
l’emportant sur son intransigeance républicaine, elle disait encore
les de La Trémoïlle ou plutôt par une abréviation en usage dans les
paroles des chansons de café-concert et les légendes des
caricaturistes et qui dissimulait le de, les d’La Trémoïlle, mais elle
se rattrapait en disant: «Madame La Trémoïlle" :start 306 :end 650) (sentence :text "» «La Duchesse, comme
dit Swann», ajouta-t-elle ironiquement avec un sourire qui prouvait
qu’elle ne faisait que citer et ne prenait pas à son compte une
dénomination aussi naïve et ridicule" :start 651 :end 841)
 ))