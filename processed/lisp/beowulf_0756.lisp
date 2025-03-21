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
 :text "Physiquement, elle traversait une mauvaise phase: elle épaississait;
et le charme expressif et dolent, les regards étonnés et rêveurs
qu’elle avait autrefois semblaient avoir disparu avec sa première
jeunesse. De sorte qu’elle était devenue si chère à Swann au moment
pour ainsi dire où il la trouvait précisément bien moins jolie. Il la
regardait longuement pour tâcher de ressaisir le charme qu’il lui
avait connu, et ne le retrouvait pas. Mais savoir que sous cette
chrysalide nouvelle, c’était toujours Odette qui vivait, toujours la
même volonté fugace, insaisissable et sournoise, suffisait à Swann
pour qu’il continuât de mettre la même passion à chercher à la capter.
Puis il regardait des photographies d’il y avait deux ans, il se
rappelait comme elle avait été délicieuse. Et cela le consolait un peu
de se donner tant de mal pour elle."
 :tokens 138
 :processed-at "2025-03-16T02:18:14.581269"
 :entities (list
  (entity :text "Physiquement," :label "ORG" :start 0 :end 13) (entity :text "Swann" :label "ORG" :start 252 :end 257) (entity :text "Mais" :label "ORG" :start 442 :end 446) (entity :text "Odette" :label "ORG" :start 507 :end 513) (entity :text "Swann" :label "ORG" :start 599 :end 604) (entity :text "Puis" :label "ORG" :start 676 :end 680)
 )
 :sentences (list
  (sentence :text "Physiquement, elle traversait une mauvaise phase: elle épaississait;
et le charme expressif et dolent, les regards étonnés et rêveurs
qu’elle avait autrefois semblaient avoir disparu avec sa première
jeunesse" :start 0 :end 208) (sentence :text "De sorte qu’elle était devenue si chère à Swann au moment
pour ainsi dire où il la trouvait précisément bien moins jolie" :start 209 :end 330) (sentence :text "Il la
regardait longuement pour tâcher de ressaisir le charme qu’il lui
avait connu, et ne le retrouvait pas" :start 331 :end 440) (sentence :text "Mais savoir que sous cette
chrysalide nouvelle, c’était toujours Odette qui vivait, toujours la
même volonté fugace, insaisissable et sournoise, suffisait à Swann
pour qu’il continuât de mettre la même passion à chercher à la capter" :start 441 :end 674) (sentence :text "Puis il regardait des photographies d’il y avait deux ans, il se
rappelait comme elle avait été délicieuse" :start 675 :end 782) (sentence :text "Et cela le consolait un peu
de se donner tant de mal pour elle" :start 783 :end 846)
 ))