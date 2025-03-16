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
 :text "Je la regardais, d’abord de ce regard qui n’est pas que le
porte-parole des yeux, mais à la fenêtre duquel se penchent tous les
sens, anxieux et pétrifiés, le regard qui voudrait toucher, capturer,
emmener le corps qu’il regarde et l’âme avec lui; puis, tant j’avais
peur que d’une seconde à l’autre mon grand-père et mon père,
apercevant cette jeune fille, me fissent éloigner en me disant de
courir un peu devant eux, d’un second regard, inconsciemment
supplicateur, qui tâchait de la forcer à faire attention à moi, à me
connaître! Elle jeta en avant et de côté ses pupilles pour prendre
connaissance de mon grand’père et de mon père, et sans doute l’idée
qu’elle en rapporta fut celle que nous étions ridicules, car elle se
détourna et d’un air indifférent et dédaigneux, se plaça de côté pour
épargner à son visage d’être dans leur champ visuel; et tandis que
continuant à marcher et ne l’ayant pas aperçue, ils m’avaient dépassé,
elle laissa ses regards filer de toute leur longueur dans ma
direction, sans expression particulière, sans avoir l’air de me voir,
mais avec une fixité et un sourire dissimulé, que je ne pouvais
interpréter d’après les notions que l’on m’avait données sur la bonne
éducation, que comme une preuve d’outrageant mépris; et sa main
esquissait en même temps un geste indécent, auquel quand il était
adressé en public à une personne qu’on ne connaissait pas, le petit
dictionnaire de civilité que je portais en moi ne donnait qu’un seul
sens, celui d’une intention insolente."
 :tokens 255
 :processed-at "2025-03-16T02:18:14.111660"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 535 :end 539)
 )
 :sentences (list
  (sentence :text "Je la regardais, d’abord de ce regard qui n’est pas que le
porte-parole des yeux, mais à la fenêtre duquel se penchent tous les
sens, anxieux et pétrifiés, le regard qui voudrait toucher, capturer,
emmener le corps qu’il regarde et l’âme avec lui; puis, tant j’avais
peur que d’une seconde à l’autre mon grand-père et mon père,
apercevant cette jeune fille, me fissent éloigner en me disant de
courir un peu devant eux, d’un second regard, inconsciemment
supplicateur, qui tâchait de la forcer à faire attention à moi, à me
connaître! Elle jeta en avant et de côté ses pupilles pour prendre
connaissance de mon grand’père et de mon père, et sans doute l’idée
qu’elle en rapporta fut celle que nous étions ridicules, car elle se
détourna et d’un air indifférent et dédaigneux, se plaça de côté pour
épargner à son visage d’être dans leur champ visuel; et tandis que
continuant à marcher et ne l’ayant pas aperçue, ils m’avaient dépassé,
elle laissa ses regards filer de toute leur longueur dans ma
direction, sans expression particulière, sans avoir l’air de me voir,
mais avec une fixité et un sourire dissimulé, que je ne pouvais
interpréter d’après les notions que l’on m’avait données sur la bonne
éducation, que comme une preuve d’outrageant mépris; et sa main
esquissait en même temps un geste indécent, auquel quand il était
adressé en public à une personne qu’on ne connaissait pas, le petit
dictionnaire de civilité que je portais en moi ne donnait qu’un seul
sens, celui d’une intention insolente" :start 0 :end 1505)
 ))