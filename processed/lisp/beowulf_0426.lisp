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
 :text "Quand Mme Verdurin avait annoncé qu’on aurait, dans la soirée, M.
Swann: «Swann?» s’était écrié le docteur d’un accent rendu brutal par
la surprise, car la moindre nouvelle prenait toujours plus au dépourvu
que quiconque cet homme qui se croyait perpétuellement préparé à tout.
Et voyant qu’on ne lui répondait pas: «Swann? Qui ça, Swann!»
hurla-t-il au comble d’une anxiété qui se détendit soudain quand Mme
Verdurin eut dit: «Mais l’ami dont Odette nous avait parlé.»--«Ah! bon,
bon, ça va bien», répondit le docteur apaisé. Quant au peintre il se
réjouissait de l’introduction de Swann chez Mme Verdurin, parce qu’il
le supposait amoureux d’Odette et qu’il aimait à favoriser les
liaisons. «Rien ne m’amuse comme de faire des mariages, confia-t-il,
dans l’oreille, au docteur Cottard, j’en ai déjà réussi beaucoup, même
entre femmes!»"
 :tokens 133
 :processed-at "2025-03-16T02:18:14.244947"
 :entities (list
  (entity :text "Quand" :label "ORG" :start 0 :end 5) (entity :text "Verdurin" :label "ORG" :start 10 :end 18) (entity :text "Swann:" :label "ORG" :start 66 :end 72) (entity :text "«Swann?»" :label "ORG" :start 73 :end 81) (entity :text "«Swann?" :label "ORG" :start 316 :end 323) (entity :text "Swann!»" :label "ORG" :start 332 :end 339) (entity :text "Verdurin" :label "ORG" :start 409 :end 417) (entity :text "«Mais" :label "ORG" :start 427 :end 432) (entity :text "Odette" :label "ORG" :start 444 :end 450) (entity :text "Quant" :label "ORG" :start 527 :end 532) (entity :text "Swann" :label "ORG" :start 583 :end 588) (entity :text "Verdurin," :label "ORG" :start 598 :end 607) (entity :text "«Rien" :label "ORG" :start 693 :end 698) (entity :text "Cottard," :label "ORG" :start 779 :end 787)
 )
 :sentences (list
  (sentence :text "Quand Mme Verdurin avait annoncé qu’on aurait, dans la soirée, M" :start 0 :end 64) (sentence :text "Swann: «Swann?» s’était écrié le docteur d’un accent rendu brutal par
la surprise, car la moindre nouvelle prenait toujours plus au dépourvu
que quiconque cet homme qui se croyait perpétuellement préparé à tout" :start 65 :end 276) (sentence :text "Et voyant qu’on ne lui répondait pas: «Swann? Qui ça, Swann!»
hurla-t-il au comble d’une anxiété qui se détendit soudain quand Mme
Verdurin eut dit: «Mais l’ami dont Odette nous avait parlé" :start 277 :end 467) (sentence :text "»--«Ah! bon,
bon, ça va bien», répondit le docteur apaisé" :start 468 :end 525) (sentence :text "Quant au peintre il se
réjouissait de l’introduction de Swann chez Mme Verdurin, parce qu’il
le supposait amoureux d’Odette et qu’il aimait à favoriser les
liaisons" :start 526 :end 691) (sentence :text "«Rien ne m’amuse comme de faire des mariages, confia-t-il,
dans l’oreille, au docteur Cottard, j’en ai déjà réussi beaucoup, même
entre femmes!»" :start 692 :end 837)
 ))