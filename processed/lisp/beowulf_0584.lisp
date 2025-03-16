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
 :text "Quelle différence avec un «nouveau» qu’Odette leur avait demandé
d’inviter, quoiqu’elle ne l’eût rencontré que peu de fois, et sur
lequel ils fondaient beaucoup d’espoir, le comte de Forcheville! (Il
se trouva qu’il était justement le beau-frère de Saniette, ce qui
remplit d’étonnement les fidèles: le vieil archiviste avait des
manières si humbles qu’ils l’avaient toujours cru d’un rang social
inférieur au leur et ne s’attendaient pas à apprendre qu’il
appartenait à un monde riche et relativement aristocratique.) Sans
doute Forcheville était grossièrement snob, alors que Swann ne l’était
pas; sans doute il était bien loin de placer, comme lui, le milieu des
Verdurin au-dessus de tous les autres. Mais il n’avait pas cette
délicatesse de nature qui empêchait Swann de s’associer aux critiques
trop manifestement fausses que dirigeait Mme Verdurin contre des gens
qu’il connaissait. Quant aux tirades prétentieuses et vulgaires que le
peintre lançait à certains jours, aux plaisanteries de commis voyageur
que risquait Cottard et auxquelles Swann, qui les aimait l’un et
l’autre, trouvait facilement des excuses mais n’avait pas le courage
et l’hypocrisie d’applaudir, Forcheville était au contraire d’un
niveau intellectuel qui lui permettait d’être abasourdi, émerveillé
par les unes, sans d’ailleurs les comprendre, et de se délecter aux
autres. Et justement le premier dîner chez les Verdurin auquel assista
Forcheville, mit en lumière toutes ces différences, fit ressortir ses
qualités et précipita la disgrâce de Swann."
 :tokens 231
 :processed-at "2025-03-16T02:18:14.416206"
 :entities (list
  (entity :text "Quelle" :label "ORG" :start 0 :end 6) (entity :text "Forcheville!" :label "ORG" :start 183 :end 195) (entity :text "Saniette," :label "ORG" :start 249 :end 258) (entity :text "Sans" :label "ORG" :start 519 :end 523) (entity :text "Forcheville" :label "ORG" :start 530 :end 541) (entity :text "Swann" :label "ORG" :start 578 :end 583) (entity :text "Verdurin" :label "ORG" :start 666 :end 674) (entity :text "Mais" :label "ORG" :start 705 :end 709) (entity :text "Swann" :label "ORG" :start 767 :end 772) (entity :text "Verdurin" :label "ORG" :start 846 :end 854) (entity :text "Quant" :label "ORG" :start 890 :end 895) (entity :text "Cottard" :label "ORG" :start 1026 :end 1033) (entity :text "Swann," :label "ORG" :start 1048 :end 1054) (entity :text "Forcheville" :label "ORG" :start 1176 :end 1187) (entity :text "Verdurin" :label "ORG" :start 1395 :end 1403) (entity :text "Forcheville," :label "ORG" :start 1419 :end 1431) (entity :text "Swann." :label "ORG" :start 1526 :end 1532)
 )
 :sentences (list
  (sentence :text "Quelle différence avec un «nouveau» qu’Odette leur avait demandé
d’inviter, quoiqu’elle ne l’eût rencontré que peu de fois, et sur
lequel ils fondaient beaucoup d’espoir, le comte de Forcheville! (Il
se trouva qu’il était justement le beau-frère de Saniette, ce qui
remplit d’étonnement les fidèles: le vieil archiviste avait des
manières si humbles qu’ils l’avaient toujours cru d’un rang social
inférieur au leur et ne s’attendaient pas à apprendre qu’il
appartenait à un monde riche et relativement aristocratique" :start 0 :end 516) (sentence :text ") Sans
doute Forcheville était grossièrement snob, alors que Swann ne l’était
pas; sans doute il était bien loin de placer, comme lui, le milieu des
Verdurin au-dessus de tous les autres" :start 517 :end 703) (sentence :text "Mais il n’avait pas cette
délicatesse de nature qui empêchait Swann de s’associer aux critiques
trop manifestement fausses que dirigeait Mme Verdurin contre des gens
qu’il connaissait" :start 704 :end 888) (sentence :text "Quant aux tirades prétentieuses et vulgaires que le
peintre lançait à certains jours, aux plaisanteries de commis voyageur
que risquait Cottard et auxquelles Swann, qui les aimait l’un et
l’autre, trouvait facilement des excuses mais n’avait pas le courage
et l’hypocrisie d’applaudir, Forcheville était au contraire d’un
niveau intellectuel qui lui permettait d’être abasourdi, émerveillé
par les unes, sans d’ailleurs les comprendre, et de se délecter aux
autres" :start 889 :end 1354) (sentence :text "Et justement le premier dîner chez les Verdurin auquel assista
Forcheville, mit en lumière toutes ces différences, fit ressortir ses
qualités et précipita la disgrâce de Swann" :start 1355 :end 1531)
 ))