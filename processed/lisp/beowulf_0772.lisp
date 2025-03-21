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
 :text "Mais, à d’autres moments, sa douleur le reprenait, il s’imaginait
qu’Odette était la maîtresse de Forcheville et que quand tous deux
l’avaient vu, du fond du landau des Verdurin, au Bois, la veille de la
fête de Chatou où il n’avait pas été invité, la prier vainement, avec
cet air de désespoir qu’avait remarqué jusqu’à son cocher, de revenir
avec lui, puis s’en retourner de son côté, seul et vaincu, elle avait
dû avoir pour le désigner à Forcheville et lui dire: «Hein! ce qu’il
rage!» les mêmes regards, brillants, malicieux, abaissés et sournois,
que le jour où celui-ci avait chassé Saniette de chez les Verdurin."
 :tokens 106
 :processed-at "2025-03-16T02:18:14.599761"
 :entities (list
  (entity :text "Mais," :label "ORG" :start 0 :end 5) (entity :text "Forcheville" :label "ORG" :start 98 :end 109) (entity :text "Verdurin," :label "ORG" :start 169 :end 178) (entity :text "Bois," :label "ORG" :start 182 :end 187) (entity :text "Chatou" :label "ORG" :start 212 :end 218) (entity :text "Forcheville" :label "ORG" :start 442 :end 453) (entity :text "«Hein!" :label "ORG" :start 467 :end 473) (entity :text "Saniette" :label "ORG" :start 590 :end 598) (entity :text "Verdurin." :label "ORG" :start 611 :end 620)
 )
 :sentences (list
  (sentence :text "Mais, à d’autres moments, sa douleur le reprenait, il s’imaginait
qu’Odette était la maîtresse de Forcheville et que quand tous deux
l’avaient vu, du fond du landau des Verdurin, au Bois, la veille de la
fête de Chatou où il n’avait pas été invité, la prier vainement, avec
cet air de désespoir qu’avait remarqué jusqu’à son cocher, de revenir
avec lui, puis s’en retourner de son côté, seul et vaincu, elle avait
dû avoir pour le désigner à Forcheville et lui dire: «Hein! ce qu’il
rage!» les mêmes regards, brillants, malicieux, abaissés et sournois,
que le jour où celui-ci avait chassé Saniette de chez les Verdurin" :start 0 :end 619)
 ))