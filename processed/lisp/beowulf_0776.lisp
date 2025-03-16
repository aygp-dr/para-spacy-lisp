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
 :text "Mais elle ne l’était jamais pour très longtemps; au bout de quelques
jours le regard luisant et fourbe perdait de son éclat et de sa
duplicité, cette image d’une Odette exécrée disant à Forcheville: «Ce
qu’il rage!» commençait à pâlir, à s’effacer. Alors, progressivement
reparaissait et s’élevait en brillant doucement, le visage de l’autre
Odette, de celle qui adressait aussi un sourire à Forcheville, mais un
sourire où il n’y avait pour Swann que de la tendresse, quand elle
disait: «Ne restez pas longtemps, car ce monsieur-là n’aime pas
beaucoup que j’aie des visites quand il a envie d’être auprès de moi.
Ah! si vous connaissiez cet être-là autant que je le connais!», ce
même sourire qu’elle avait pour remercier Swann de quelque trait de sa
délicatesse qu’elle prisait si fort, de quelque conseil qu’elle lui
avait demandé dans une de ces circonstances graves où elle n’avait
confiance qu’en lui."
 :tokens 150
 :processed-at "2025-03-16T02:18:14.604695"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Odette" :label "ORG" :start 162 :end 168) (entity :text "Forcheville:" :label "ORG" :start 186 :end 198) (entity :text "Odette," :label "ORG" :start 342 :end 349) (entity :text "Forcheville," :label "ORG" :start 392 :end 404) (entity :text "Swann" :label "ORG" :start 442 :end 447) (entity :text "Swann" :label "ORG" :start 723 :end 728)
 )
 :sentences (list
  (sentence :text "Mais elle ne l’était jamais pour très longtemps; au bout de quelques
jours le regard luisant et fourbe perdait de son éclat et de sa
duplicité, cette image d’une Odette exécrée disant à Forcheville: «Ce
qu’il rage!» commençait à pâlir, à s’effacer" :start 0 :end 247) (sentence :text "Alors, progressivement
reparaissait et s’élevait en brillant doucement, le visage de l’autre
Odette, de celle qui adressait aussi un sourire à Forcheville, mais un
sourire où il n’y avait pour Swann que de la tendresse, quand elle
disait: «Ne restez pas longtemps, car ce monsieur-là n’aime pas
beaucoup que j’aie des visites quand il a envie d’être auprès de moi" :start 248 :end 612) (sentence :text "Ah! si vous connaissiez cet être-là autant que je le connais!», ce
même sourire qu’elle avait pour remercier Swann de quelque trait de sa
délicatesse qu’elle prisait si fort, de quelque conseil qu’elle lui
avait demandé dans une de ces circonstances graves où elle n’avait
confiance qu’en lui" :start 613 :end 906)
 ))