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
 :text "Mais tandis que, une heure après son réveil, il donnait des
indications au coiffeur pour que sa brosse ne se dérangeât pas en
wagon, il repensa à son rêve, il revit comme il les avait sentis tout
près de lui, le teint pâle d’Odette, les joues trop maigres, les
traits tirés, les yeux battus, tout ce que--au cours des tendresses
successives qui avaient fait de son durable amour pour Odette un long
oubli de l’image première qu’il avait reçue d’elle--il avait cessé de
remarquer depuis les premiers temps de leur liaison dans lesquels sans
doute, pendant qu’il dormait, sa mémoire en avait été chercher la
sensation exacte. Et avec cette muflerie intermittente qui
reparaissait chez lui dès qu’il n’était plus malheureux et que
baissait du même coup le niveau de sa moralité, il s’écria en
lui-même: «Dire que j’ai gâché des années de ma vie, que j’ai voulu
mourir, que j’ai eu mon plus grand amour, pour une femme qui ne me
plaisait pas, qui n’était pas mon genre!»"
 :tokens 169
 :processed-at "2025-03-16T02:18:14.819886"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Odette" :label "ORG" :start 225 :end 231) (entity :text "«Dire" :label "ORG" :start 800 :end 805)
 )
 :sentences (list
  (sentence :text "Mais tandis que, une heure après son réveil, il donnait des
indications au coiffeur pour que sa brosse ne se dérangeât pas en
wagon, il repensa à son rêve, il revit comme il les avait sentis tout
près de lui, le teint pâle d’Odette, les joues trop maigres, les
traits tirés, les yeux battus, tout ce que--au cours des tendresses
successives qui avaient fait de son durable amour pour Odette un long
oubli de l’image première qu’il avait reçue d’elle--il avait cessé de
remarquer depuis les premiers temps de leur liaison dans lesquels sans
doute, pendant qu’il dormait, sa mémoire en avait été chercher la
sensation exacte" :start 0 :end 622) (sentence :text "Et avec cette muflerie intermittente qui
reparaissait chez lui dès qu’il n’était plus malheureux et que
baissait du même coup le niveau de sa moralité, il s’écria en
lui-même: «Dire que j’ai gâché des années de ma vie, que j’ai voulu
mourir, que j’ai eu mon plus grand amour, pour une femme qui ne me
plaisait pas, qui n’était pas mon genre!»" :start 623 :end 966)
 ))