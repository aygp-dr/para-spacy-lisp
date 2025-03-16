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
 :text "Souvent il se trouvait qu’il s’était tant attardé avec la jeune
ouvrière avant d’aller chez les Verdurin, qu’une fois la petite phrase
jouée par le pianiste, Swann s’apercevait qu’il était bientôt l’heure
qu’Odette rentrât. Il la reconduisait jusqu’à la porte de son petit
hôtel, rue La Pérouse, derrière l’Arc de Triomphe. Et c’était
peut-être à cause de cela, pour ne pas lui demander toutes les
faveurs, qu’il sacrifiait le plaisir moins nécessaire pour lui de la
voir plus tôt, d’arriver chez les Verdurin avec elle, à l’exercice de
ce droit qu’elle lui reconnaissait de partir ensemble et auquel il
attachait plus de prix, parce que, grâce à cela, il avait l’impression
que personne ne la voyait, ne se mettait entre eux, ne l’empêchait
d’être encore avec lui, après qu’il l’avait quittée."
 :tokens 131
 :processed-at "2025-03-16T02:18:14.331776"
 :entities (list
  (entity :text "Souvent" :label "ORG" :start 0 :end 7) (entity :text "Verdurin," :label "ORG" :start 96 :end 105) (entity :text "Swann" :label "ORG" :start 158 :end 163) (entity :text "Pérouse," :label "ORG" :start 287 :end 295) (entity :text "Triomphe." :label "ORG" :start 314 :end 323) (entity :text "Verdurin" :label "ORG" :start 501 :end 509)
 )
 :sentences (list
  (sentence :text "Souvent il se trouvait qu’il s’était tant attardé avec la jeune
ouvrière avant d’aller chez les Verdurin, qu’une fois la petite phrase
jouée par le pianiste, Swann s’apercevait qu’il était bientôt l’heure
qu’Odette rentrât" :start 0 :end 222) (sentence :text "Il la reconduisait jusqu’à la porte de son petit
hôtel, rue La Pérouse, derrière l’Arc de Triomphe" :start 223 :end 322) (sentence :text "Et c’était
peut-être à cause de cela, pour ne pas lui demander toutes les
faveurs, qu’il sacrifiait le plaisir moins nécessaire pour lui de la
voir plus tôt, d’arriver chez les Verdurin avec elle, à l’exercice de
ce droit qu’elle lui reconnaissait de partir ensemble et auquel il
attachait plus de prix, parce que, grâce à cela, il avait l’impression
que personne ne la voyait, ne se mettait entre eux, ne l’empêchait
d’être encore avec lui, après qu’il l’avait quittée" :start 323 :end 793)
 ))