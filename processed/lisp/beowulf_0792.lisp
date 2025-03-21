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
 :text "Certes, il avait trop longtemps oublié qu’il était le «fils Swann»
pour ne pas ressentir quand il le redevenait un moment, un plaisir
plus vif que ceux qu’il eût pu éprouver le reste du temps et sur
lesquels il était blasé; et si l’amabilité des bourgeois, pour
lesquels il restait surtout cela, était moins vive que celle de
l’aristocratie (mais plus flatteuse d’ailleurs, car chez eux du moins
elle ne se sépare jamais de la considération), une lettre d’altesse,
quelques divertissements princiers qu’elle lui proposât, ne pouvait
lui être aussi agréable que celle qui lui demandait d’être témoin, ou
seulement d’assister à un mariage dans la famille de vieux amis de ses
parents dont les uns avaient continué à le voir--comme mon grand-père
qui, l’année précédente, l’avait invité au mariage de ma mère--et dont
certains autres le connaissaient personnellement à peine mais se
croyaient des devoirs de politesse envers le fils, envers le digne
successeur de feu M. Swann."
 :tokens 159
 :processed-at "2025-03-16T02:18:14.624636"
 :entities (list
  (entity :text "Certes," :label "ORG" :start 0 :end 7) (entity :text "Swann»" :label "ORG" :start 60 :end 66) (entity :text "Swann." :label "ORG" :start 968 :end 974)
 )
 :sentences (list
  (sentence :text "Certes, il avait trop longtemps oublié qu’il était le «fils Swann»
pour ne pas ressentir quand il le redevenait un moment, un plaisir
plus vif que ceux qu’il eût pu éprouver le reste du temps et sur
lesquels il était blasé; et si l’amabilité des bourgeois, pour
lesquels il restait surtout cela, était moins vive que celle de
l’aristocratie (mais plus flatteuse d’ailleurs, car chez eux du moins
elle ne se sépare jamais de la considération), une lettre d’altesse,
quelques divertissements princiers qu’elle lui proposât, ne pouvait
lui être aussi agréable que celle qui lui demandait d’être témoin, ou
seulement d’assister à un mariage dans la famille de vieux amis de ses
parents dont les uns avaient continué à le voir--comme mon grand-père
qui, l’année précédente, l’avait invité au mariage de ma mère--et dont
certains autres le connaissaient personnellement à peine mais se
croyaient des devoirs de politesse envers le fils, envers le digne
successeur de feu M" :start 0 :end 966) (sentence :text "Swann" :start 59 :end 65)
 ))