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
 :text "Bien que Swann n’eût encore jamais pris bien sérieusement ombrage de
l’amitié d’Odette pour tel ou tel fidèle, il éprouvait une douceur
profonde à l’entendre avouer ainsi devant tous, avec cette tranquille
impudeur, leurs rendez-vous quotidiens du soir, la situation
privilégiée qu’il avait chez elle et la préférence pour lui qui y
était impliquée. Certes Swann avait souvent pensé qu’Odette n’était à
aucun degré une femme remarquable; et la suprématie qu’il exerçait sur
un être qui lui était si inférieur n’avait rien qui dût lui paraître
si flatteur à voir proclamer à la face des «fidèles», mais depuis
qu’il s’était aperçu qu’à beaucoup d’hommes Odette semblait une femme
ravissante et désirable, le charme qu’avait pour eux son corps avait
éveillé en lui un besoin douloureux de la maîtriser entièrement dans
les moindres parties de son cœur. Et il avait commencé d’attacher un
prix inestimable à ces moments passés chez elle le soir, où il
l’asseyait sur ses genoux, lui faisait dire ce qu’elle pensait d’une
chose, d’une autre, où il recensait les seuls biens à la possession
desquels il tînt maintenant sur terre. Aussi, après ce dîner, la
prenant à part, il ne manqua pas de la remercier avec effusion,
cherchant à lui enseigner selon les degrés de la reconnaissance qu’il
lui témoignait, l’échelle des plaisirs qu’elle pouvait lui causer, et
dont le suprême était de le garantir, pendant le temps que son amour
durerait et l’y rendrait vulnérable, des atteintes de la jalousie."
 :tokens 244
 :processed-at "2025-03-16T02:18:14.521803"
 :entities (list
  (entity :text "Bien" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 9 :end 14) (entity :text "Certes" :label "ORG" :start 350 :end 356) (entity :text "Swann" :label "ORG" :start 357 :end 362) (entity :text "Odette" :label "ORG" :start 386 :end 392)
 )
 :sentences (list
  (sentence :text "Bien que Swann n’eût encore jamais pris bien sérieusement ombrage de
l’amitié d’Odette pour tel ou tel fidèle, il éprouvait une douceur
profonde à l’entendre avouer ainsi devant tous, avec cette tranquille
impudeur, leurs rendez-vous quotidiens du soir, la situation
privilégiée qu’il avait chez elle et la préférence pour lui qui y
était impliquée" :start 0 :end 348) (sentence :text "Certes Swann avait souvent pensé qu’Odette n’était à
aucun degré une femme remarquable; et la suprématie qu’il exerçait sur
un être qui lui était si inférieur n’avait rien qui dût lui paraître
si flatteur à voir proclamer à la face des «fidèles», mais depuis
qu’il s’était aperçu qu’à beaucoup d’hommes Odette semblait une femme
ravissante et désirable, le charme qu’avait pour eux son corps avait
éveillé en lui un besoin douloureux de la maîtriser entièrement dans
les moindres parties de son cœur" :start 349 :end 849) (sentence :text "Et il avait commencé d’attacher un
prix inestimable à ces moments passés chez elle le soir, où il
l’asseyait sur ses genoux, lui faisait dire ce qu’elle pensait d’une
chose, d’une autre, où il recensait les seuls biens à la possession
desquels il tînt maintenant sur terre" :start 850 :end 1123) (sentence :text "Aussi, après ce dîner, la
prenant à part, il ne manqua pas de la remercier avec effusion,
cherchant à lui enseigner selon les degrés de la reconnaissance qu’il
lui témoignait, l’échelle des plaisirs qu’elle pouvait lui causer, et
dont le suprême était de le garantir, pendant le temps que son amour
durerait et l’y rendrait vulnérable, des atteintes de la jalousie" :start 1124 :end 1489)
 ))