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
 :text "A quelques pas, un grand gaillard en livrée rêvait, immobile,
sculptural, inutile, comme ce guerrier purement décoratif qu’on voit
dans les tableaux les plus tumultueux de Mantegna, songer, appuyé sur
son bouclier, tandis qu’on se précipite et qu’on s’égorge à côté de
lui; détaché du groupe de ses camarades qui s’empressaient autour de
Swann, il semblait aussi résolu à se désintéresser de cette scène,
qu’il suivait vaguement de ses yeux glauques et cruels, que si ç’eût
été le massacre des Innocents ou le martyre de saint Jacques. Il
semblait précisément appartenir à cette race disparue--ou qui peut-être
n’exista jamais que dans le retable de San Zeno et les fresques des
Eremitani où Swann l’avait approchée et où elle rêve encore--issue de
la fécondation d’une statue antique par quelque modèle padouan du
Maître ou quelque saxon d’Albert Dürer. Et les mèches de ses cheveux
roux crespelés par la nature, mais collés par la brillantine, étaient
largement traitées comme elles sont dans la sculpture grecque
qu’étudiait sans cesse le peintre de Mantoue, et qui, si dans la
création elle ne figure que l’homme, sait du moins tirer de ses
simples formes des richesses si variées et comme empruntées à toute la
nature vivante, qu’une chevelure, par l’enroulement lisse et les becs
aigus de ses boucles, ou dans la superposition du triple et
fleurissant diadème de ses tresses, a l’air à la fois d’un paquet
d’algues, d’une nichée de colombes, d’un bandeau de jacinthes et d’une
torsade de serpent."
 :tokens 246
 :processed-at "2025-03-16T02:18:14.655176"
 :entities (list
  (entity :text "Mantegna," :label "ORG" :start 172 :end 181) (entity :text "Swann," :label "ORG" :start 338 :end 344) (entity :text "Jacques." :label "ORG" :start 527 :end 535) (entity :text "Zeno" :label "ORG" :start 654 :end 658) (entity :text "Eremitani" :label "ORG" :start 679 :end 688) (entity :text "Swann" :label "ORG" :start 692 :end 697) (entity :text "Maître" :label "ORG" :start 815 :end 821) (entity :text "Dürer." :label "ORG" :start 848 :end 854) (entity :text "Mantoue," :label "ORG" :start 1053 :end 1061)
 )
 :sentences (list
  (sentence :text "A quelques pas, un grand gaillard en livrée rêvait, immobile,
sculptural, inutile, comme ce guerrier purement décoratif qu’on voit
dans les tableaux les plus tumultueux de Mantegna, songer, appuyé sur
son bouclier, tandis qu’on se précipite et qu’on s’égorge à côté de
lui; détaché du groupe de ses camarades qui s’empressaient autour de
Swann, il semblait aussi résolu à se désintéresser de cette scène,
qu’il suivait vaguement de ses yeux glauques et cruels, que si ç’eût
été le massacre des Innocents ou le martyre de saint Jacques" :start 0 :end 534) (sentence :text "Il
semblait précisément appartenir à cette race disparue--ou qui peut-être
n’exista jamais que dans le retable de San Zeno et les fresques des
Eremitani où Swann l’avait approchée et où elle rêve encore--issue de
la fécondation d’une statue antique par quelque modèle padouan du
Maître ou quelque saxon d’Albert Dürer" :start 535 :end 853) (sentence :text "Et les mèches de ses cheveux
roux crespelés par la nature, mais collés par la brillantine, étaient
largement traitées comme elles sont dans la sculpture grecque
qu’étudiait sans cesse le peintre de Mantoue, et qui, si dans la
création elle ne figure que l’homme, sait du moins tirer de ses
simples formes des richesses si variées et comme empruntées à toute la
nature vivante, qu’une chevelure, par l’enroulement lisse et les becs
aigus de ses boucles, ou dans la superposition du triple et
fleurissant diadème de ses tresses, a l’air à la fois d’un paquet
d’algues, d’une nichée de colombes, d’un bandeau de jacinthes et d’une
torsade de serpent" :start 854 :end 1501)
 ))