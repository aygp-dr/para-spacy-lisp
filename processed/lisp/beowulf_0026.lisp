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
 :text "Pendant bien des années, où pourtant, surtout avant son mariage, M.
Swann, le fils, vint souvent les voir à Combray, ma grand’tante et mes
grands-parents ne soupçonnèrent pas qu’il ne vivait plus du tout dans
la société qu’avait fréquentée sa famille et que sous l’espèce
d’incognito que lui faisait chez nous ce nom de Swann, ils
hébergeaient,--avec la parfaite innocence d’honnêtes hôteliers qui ont
chez eux, sans le savoir, un célèbre brigand,--un des membres les plus
élégants du Jockey-Club, ami préféré du comte de Paris et du prince de
Galles, un des hommes les plus choyés de la haute société du faubourg
Saint-Germain."
 :tokens 103
 :processed-at "2025-03-16T02:18:13.797592"
 :entities (list
  (entity :text "Pendant" :label "ORG" :start 0 :end 7) (entity :text "Swann," :label "ORG" :start 68 :end 74) (entity :text "Combray," :label "ORG" :start 108 :end 116) (entity :text "Swann," :label "ORG" :start 320 :end 326) (entity :text "Jockey-Club," :label "ORG" :start 485 :end 497) (entity :text "Paris" :label "ORG" :start 522 :end 527) (entity :text "Galles," :label "ORG" :start 544 :end 551) (entity :text "Saint-Germain." :label "ORG" :start 614 :end 628)
 )
 :sentences (list
  (sentence :text "Pendant bien des années, où pourtant, surtout avant son mariage, M" :start 0 :end 66) (sentence :text "Swann, le fils, vint souvent les voir à Combray, ma grand’tante et mes
grands-parents ne soupçonnèrent pas qu’il ne vivait plus du tout dans
la société qu’avait fréquentée sa famille et que sous l’espèce
d’incognito que lui faisait chez nous ce nom de Swann, ils
hébergeaient,--avec la parfaite innocence d’honnêtes hôteliers qui ont
chez eux, sans le savoir, un célèbre brigand,--un des membres les plus
élégants du Jockey-Club, ami préféré du comte de Paris et du prince de
Galles, un des hommes les plus choyés de la haute société du faubourg
Saint-Germain" :start 67 :end 627)
 ))