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
 :text "Et sans doute, en se rappelant ainsi leurs entretiens, en pensant
ainsi à elle quand il était seul, il faisait seulement jouer son image
entre beaucoup d’autres images de femmes dans des rêveries
romanesques; mais si, grâce à une circonstance quelconque (ou même
peut-être sans que ce fût grâce à elle, la circonstance qui se
présente au moment où un état, latent jusque-là, se déclare, pouvant
n’avoir influé en rien sur lui) l’image d’Odette de Crécy venait à
absorber toutes ces rêveries, si celles-ci n’étaient plus séparables
de son souvenir, alors l’imperfection de son corps ne garderait plus
aucune importance, ni qu’il eût été, plus ou moins qu’un autre corps,
selon le goût de Swann, puisque devenu le corps de celle qu’il aimait,
il serait désormais le seul qui fût capable de lui causer des joies et
des tourments."
 :tokens 139
 :processed-at "2025-03-16T02:18:14.234551"
 :entities (list
  (entity :text "Crécy" :label "ORG" :start 447 :end 452) (entity :text "Swann," :label "ORG" :start 687 :end 693)
 )
 :sentences (list
  (sentence :text "Et sans doute, en se rappelant ainsi leurs entretiens, en pensant
ainsi à elle quand il était seul, il faisait seulement jouer son image
entre beaucoup d’autres images de femmes dans des rêveries
romanesques; mais si, grâce à une circonstance quelconque (ou même
peut-être sans que ce fût grâce à elle, la circonstance qui se
présente au moment où un état, latent jusque-là, se déclare, pouvant
n’avoir influé en rien sur lui) l’image d’Odette de Crécy venait à
absorber toutes ces rêveries, si celles-ci n’étaient plus séparables
de son souvenir, alors l’imperfection de son corps ne garderait plus
aucune importance, ni qu’il eût été, plus ou moins qu’un autre corps,
selon le goût de Swann, puisque devenu le corps de celle qu’il aimait,
il serait désormais le seul qui fût capable de lui causer des joies et
des tourments" :start 0 :end 825)
 ))