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
 :text "C’était chez la marquise de Saint-Euverte, à la dernière, pour cette
année-là, des soirées où elle faisait entendre des artistes qui lui
servaient ensuite pour ses concerts de charité. Swann, qui avait voulu
successivement aller à toutes les précédentes et n’avait pu s’y
résoudre, avait reçu, tandis qu’il s’habillait pour se rendre à
celle-ci, la visite du baron de Charlus qui venait lui offrir de
retourner avec lui chez la marquise, si sa compagnie devait l’aider à
s’y ennuyer un peu moins, à s’y trouver moins triste. Mais Swann lui
avait répondu:"
 :tokens 92
 :processed-at "2025-03-16T02:18:14.650757"
 :entities (list
  (entity :text "Saint-Euverte," :label "ORG" :start 28 :end 42) (entity :text "Swann," :label "ORG" :start 185 :end 191) (entity :text "Charlus" :label "ORG" :start 368 :end 375) (entity :text "Mais" :label "ORG" :start 525 :end 529) (entity :text "Swann" :label "ORG" :start 530 :end 535)
 )
 :sentences (list
  (sentence :text "C’était chez la marquise de Saint-Euverte, à la dernière, pour cette
année-là, des soirées où elle faisait entendre des artistes qui lui
servaient ensuite pour ses concerts de charité" :start 0 :end 183) (sentence :text "Swann, qui avait voulu
successivement aller à toutes les précédentes et n’avait pu s’y
résoudre, avait reçu, tandis qu’il s’habillait pour se rendre à
celle-ci, la visite du baron de Charlus qui venait lui offrir de
retourner avec lui chez la marquise, si sa compagnie devait l’aider à
s’y ennuyer un peu moins, à s’y trouver moins triste" :start 184 :end 523) (sentence :text "Mais Swann lui
avait répondu:" :start 524 :end 554)
 ))