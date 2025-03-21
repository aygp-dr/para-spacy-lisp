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
 :text "Pourtant il se doutait bien que ce qu’il regrettait ainsi c’était un
calme, une paix qui n’auraient pas été pour son amour une atmosphère
favorable. Quand Odette cesserait d’être pour lui une créature
toujours absente, regrettée, imaginaire, quand le sentiment qu’il
aurait pour elle ne serait plus ce même trouble mystérieux que lui
causait la phrase de la sonate, mais de l’affection, de la
reconnaissance quand s’établiraient entre eux des rapports normaux qui
mettraient fin à sa folie et à sa tristesse, alors sans doute les
actes de la vie d’Odette lui paraîtraient peu intéressants en
eux-mêmes--comme il avait déjà eu plusieurs fois le soupçon qu’ils
étaient, par exemple le jour où il avait lu à travers l’enveloppe la
lettre adressée à Forcheville. Considérant son mal avec autant de
sagacité que s’il se l’était inoculé pour en faire l’étude, il se
disait que, quand il serait guéri, ce que pourrait faire Odette lui
serait indifférent. Mais du sein de son état morbide, à vrai dire, il
redoutait à l’égal de la mort une telle guérison, qui eût été en effet
la mort de tout ce qu’il était actuellement."
 :tokens 188
 :processed-at "2025-03-16T02:18:14.597840"
 :entities (list
  (entity :text "Pourtant" :label "ORG" :start 0 :end 8) (entity :text "Quand" :label "ORG" :start 149 :end 154) (entity :text "Odette" :label "ORG" :start 155 :end 161) (entity :text "Forcheville." :label "ORG" :start 746 :end 758) (entity :text "Considérant" :label "ORG" :start 759 :end 770) (entity :text "Odette" :label "ORG" :start 917 :end 923) (entity :text "Mais" :label "ORG" :start 948 :end 952)
 )
 :sentences (list
  (sentence :text "Pourtant il se doutait bien que ce qu’il regrettait ainsi c’était un
calme, une paix qui n’auraient pas été pour son amour une atmosphère
favorable" :start 0 :end 147) (sentence :text "Quand Odette cesserait d’être pour lui une créature
toujours absente, regrettée, imaginaire, quand le sentiment qu’il
aurait pour elle ne serait plus ce même trouble mystérieux que lui
causait la phrase de la sonate, mais de l’affection, de la
reconnaissance quand s’établiraient entre eux des rapports normaux qui
mettraient fin à sa folie et à sa tristesse, alors sans doute les
actes de la vie d’Odette lui paraîtraient peu intéressants en
eux-mêmes--comme il avait déjà eu plusieurs fois le soupçon qu’ils
étaient, par exemple le jour où il avait lu à travers l’enveloppe la
lettre adressée à Forcheville" :start 148 :end 757) (sentence :text "Considérant son mal avec autant de
sagacité que s’il se l’était inoculé pour en faire l’étude, il se
disait que, quand il serait guéri, ce que pourrait faire Odette lui
serait indifférent" :start 758 :end 946) (sentence :text "Mais du sein de son état morbide, à vrai dire, il
redoutait à l’égal de la mort une telle guérison, qui eût été en effet
la mort de tout ce qu’il était actuellement" :start 947 :end 1112)
 ))