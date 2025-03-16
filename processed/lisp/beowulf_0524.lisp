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
 :text "Mais une fois qu’ayant songé avec maussaderie à cet inévitable retour
ensemble, il avait emmené jusqu’au bois sa jeune ouvrière pour
retarder le moment d’aller chez les Verdurin, il arriva chez eux si
tard qu’Odette, croyant qu’il ne viendrait plus, était partie. En
voyant qu’elle n’était plus dans le salon, Swann ressentit une
souffrance au cœur; il tremblait d’être privé d’un plaisir qu’il
mesurait pour la première fois, ayant eu jusque-là cette certitude de
le trouver quand il le voulait, qui pour tous les plaisirs nous
diminue ou même nous empêche d’apercevoir aucunement leur grandeur."
 :tokens 95
 :processed-at "2025-03-16T02:18:14.345415"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Verdurin," :label "ORG" :start 169 :end 178) (entity :text "Swann" :label "ORG" :start 310 :end 315)
 )
 :sentences (list
  (sentence :text "Mais une fois qu’ayant songé avec maussaderie à cet inévitable retour
ensemble, il avait emmené jusqu’au bois sa jeune ouvrière pour
retarder le moment d’aller chez les Verdurin, il arriva chez eux si
tard qu’Odette, croyant qu’il ne viendrait plus, était partie" :start 0 :end 262) (sentence :text "En
voyant qu’elle n’était plus dans le salon, Swann ressentit une
souffrance au cœur; il tremblait d’être privé d’un plaisir qu’il
mesurait pour la première fois, ayant eu jusque-là cette certitude de
le trouver quand il le voulait, qui pour tous les plaisirs nous
diminue ou même nous empêche d’apercevoir aucunement leur grandeur" :start 263 :end 595)
 ))