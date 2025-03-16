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
 :text "En rentrant de la messe, nous rencontrions souvent M. Legrandin qui,
retenu à Paris par sa profession d’ingénieur, ne pouvait, en dehors
des grandes vacances, venir à sa propriété de Combray que du samedi
soir au lundi matin. C’était un de ces hommes qui, en dehors d’une
carrière scientifique où ils ont d’ailleurs brillamment réussi,
possèdent une culture toute différente, littéraire, artistique, que
leur spécialisation professionnelle n’utilise pas et dont profite leur
conversation. Plus lettrés que bien des littérateurs (nous ne savions
pas à cette époque que M. Legrandin eût une certaine réputation comme
écrivain et nous fûmes très étonnés de voir qu’un musicien célèbre
avait composé une mélodie sur des vers de lui), doués de plus de
«facilité» que bien des peintres, ils s’imaginent que la vie qu’ils
mènent n’est pas celle qui leur aurait convenu et apportent à leurs
occupations positives soit une insouciance mêlée de fantaisie, soit
une application soutenue et hautaine, méprisante, amère et
consciencieuse. Grand, avec une belle tournure, un visage pensif et
fin aux longues moustaches blondes, au regard bleu et désenchanté,
d’une politesse raffinée, causeur comme nous n’en avions jamais
entendu, il était aux yeux de ma famille qui le citait toujours en
exemple, le type de l’homme d’élite, prenant la vie de la façon la
plus noble et la plus délicate. Ma grand’mère lui reprochait seulement
de parler un peu trop bien, un peu trop comme un livre, de ne pas
avoir dans son langage le naturel qu’il y avait dans ses cravates
lavallière toujours flottantes, dans son veston droit presque
d’écolier. Elle s’étonnait aussi des tirades enflammées qu’il entamait
souvent contre l’aristocratie, la vie mondaine, le snobisme,
«certainement le péché auquel pense saint Paul quand il parle du péché
pour lequel il n’y a pas de rémission.»"
 :tokens 296
 :processed-at "2025-03-16T02:18:13.904680"
 :entities (list
  (entity :text "Legrandin" :label "ORG" :start 54 :end 63) (entity :text "Paris" :label "ORG" :start 78 :end 83) (entity :text "Combray" :label "ORG" :start 183 :end 190) (entity :text "Plus" :label "ORG" :start 489 :end 493) (entity :text "Legrandin" :label "ORG" :start 571 :end 580) (entity :text "Grand," :label "ORG" :start 1026 :end 1032) (entity :text "Elle" :label "ORG" :start 1619 :end 1623) (entity :text "Paul" :label "ORG" :start 1782 :end 1786)
 )
 :sentences (list
  (sentence :text "En rentrant de la messe, nous rencontrions souvent M" :start 0 :end 52) (sentence :text "Legrandin qui,
retenu à Paris par sa profession d’ingénieur, ne pouvait, en dehors
des grandes vacances, venir à sa propriété de Combray que du samedi
soir au lundi matin" :start 53 :end 224) (sentence :text "C’était un de ces hommes qui, en dehors d’une
carrière scientifique où ils ont d’ailleurs brillamment réussi,
possèdent une culture toute différente, littéraire, artistique, que
leur spécialisation professionnelle n’utilise pas et dont profite leur
conversation" :start 225 :end 487) (sentence :text "Plus lettrés que bien des littérateurs (nous ne savions
pas à cette époque que M" :start 488 :end 569) (sentence :text "Legrandin eût une certaine réputation comme
écrivain et nous fûmes très étonnés de voir qu’un musicien célèbre
avait composé une mélodie sur des vers de lui), doués de plus de
«facilité» que bien des peintres, ils s’imaginent que la vie qu’ils
mènent n’est pas celle qui leur aurait convenu et apportent à leurs
occupations positives soit une insouciance mêlée de fantaisie, soit
une application soutenue et hautaine, méprisante, amère et
consciencieuse" :start 570 :end 1024) (sentence :text "Grand, avec une belle tournure, un visage pensif et
fin aux longues moustaches blondes, au regard bleu et désenchanté,
d’une politesse raffinée, causeur comme nous n’en avions jamais
entendu, il était aux yeux de ma famille qui le citait toujours en
exemple, le type de l’homme d’élite, prenant la vie de la façon la
plus noble et la plus délicate" :start 1025 :end 1373) (sentence :text "Ma grand’mère lui reprochait seulement
de parler un peu trop bien, un peu trop comme un livre, de ne pas
avoir dans son langage le naturel qu’il y avait dans ses cravates
lavallière toujours flottantes, dans son veston droit presque
d’écolier" :start 1374 :end 1617) (sentence :text "Elle s’étonnait aussi des tirades enflammées qu’il entamait
souvent contre l’aristocratie, la vie mondaine, le snobisme,
«certainement le péché auquel pense saint Paul quand il parle du péché
pour lequel il n’y a pas de rémission" :start 1618 :end 1848) (sentence :text "»" :start 756 :end 757)
 ))