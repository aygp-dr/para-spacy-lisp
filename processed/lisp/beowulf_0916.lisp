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
 :text "Quelquefois il espérait qu’elle mourrait sans souffrances dans un
accident, elle qui était dehors, dans les rues, sur les routes, du
matin au soir. Et comme elle revenait saine et sauve, il admirait que
le corps humain fût si souple et si fort, qu’il pût continuellement
tenir en échec, déjouer tous les périls qui l’environnent (et que
Swann trouvait innombrables depuis que son secret désir les avait
supputés), et permît ainsi aux êtres de se livrer chaque jour et à peu
près impunément à leur œuvre de mensonge, à la poursuite du plaisir.
Et Swann sentait bien près de son cœur ce Mahomet II dont il aimait le
portrait par Bellini et qui, ayant senti qu’il était devenu amoureux
fou d’une de ses femmes la poignarda afin, dit naïvement son biographe
vénitien, de retrouver sa liberté d’esprit. Puis il s’indignait de ne
penser ainsi qu’à soi, et les souffrances qu’il avait éprouvées lui
semblaient ne mériter aucune pitié puisque lui-même faisait si bon
marché de la vie d’Odette."
 :tokens 168
 :processed-at "2025-03-16T02:18:14.757780"
 :entities (list
  (entity :text "Quelquefois" :label "ORG" :start 0 :end 11) (entity :text "Swann" :label "ORG" :start 337 :end 342) (entity :text "Swann" :label "ORG" :start 546 :end 551) (entity :text "Mahomet" :label "ORG" :start 585 :end 592) (entity :text "Bellini" :label "ORG" :start 627 :end 634) (entity :text "Puis" :label "ORG" :start 798 :end 802)
 )
 :sentences (list
  (sentence :text "Quelquefois il espérait qu’elle mourrait sans souffrances dans un
accident, elle qui était dehors, dans les rues, sur les routes, du
matin au soir" :start 0 :end 146) (sentence :text "Et comme elle revenait saine et sauve, il admirait que
le corps humain fût si souple et si fort, qu’il pût continuellement
tenir en échec, déjouer tous les périls qui l’environnent (et que
Swann trouvait innombrables depuis que son secret désir les avait
supputés), et permît ainsi aux êtres de se livrer chaque jour et à peu
près impunément à leur œuvre de mensonge, à la poursuite du plaisir" :start 147 :end 541) (sentence :text "Et Swann sentait bien près de son cœur ce Mahomet II dont il aimait le
portrait par Bellini et qui, ayant senti qu’il était devenu amoureux
fou d’une de ses femmes la poignarda afin, dit naïvement son biographe
vénitien, de retrouver sa liberté d’esprit" :start 542 :end 796) (sentence :text "Puis il s’indignait de ne
penser ainsi qu’à soi, et les souffrances qu’il avait éprouvées lui
semblaient ne mériter aucune pitié puisque lui-même faisait si bon
marché de la vie d’Odette" :start 797 :end 984)
 ))