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
 :text "Je ne restai pas pour entendre le récit de mon père, car j’étais
justement avec lui après la messe quand nous avions rencontré M.
Legrandin, et je descendis à la cuisine demander le menu du dîner qui
tous les jours me distrayait comme les nouvelles qu’on lit dans un
journal et m’excitait à la façon d’un programme de fête. Comme M.
Legrandin avait passé près de nous en sortant de l’église, marchant à
côté d’une châtelaine du voisinage que nous ne connaissions que de
vue, mon père avait fait un salut à la fois amical et réservé, sans
que nous nous arrêtions; M. Legrandin avait à peine répondu, d’un air
étonné, comme s’il ne nous reconnaissait pas, et avec cette
perspective du regard particulière aux personnes qui ne veulent pas
être aimables et qui, du fond subitement prolongé de leurs yeux, ont
l’air de vous apercevoir comme au bout d’une route interminable et à
une si grande distance qu’elles se contentent de vous adresser un
signe de tête minuscule pour le proportionner à vos dimensions de
marionnette."
 :tokens 177
 :processed-at "2025-03-16T02:18:14.063402"
 :entities (list
  (entity :text "Legrandin," :label "ORG" :start 130 :end 140) (entity :text "Comme" :label "ORG" :start 324 :end 329) (entity :text "Legrandin" :label "ORG" :start 333 :end 342) (entity :text "Legrandin" :label "ORG" :start 566 :end 575)
 )
 :sentences (list
  (sentence :text "Je ne restai pas pour entendre le récit de mon père, car j’étais
justement avec lui après la messe quand nous avions rencontré M" :start 0 :end 128) (sentence :text "Legrandin, et je descendis à la cuisine demander le menu du dîner qui
tous les jours me distrayait comme les nouvelles qu’on lit dans un
journal et m’excitait à la façon d’un programme de fête" :start 129 :end 322) (sentence :text "Comme M" :start 323 :end 331) (sentence :text "Legrandin avait passé près de nous en sortant de l’église, marchant à
côté d’une châtelaine du voisinage que nous ne connaissions que de
vue, mon père avait fait un salut à la fois amical et réservé, sans
que nous nous arrêtions; M" :start 332 :end 564) (sentence :text "Legrandin avait à peine répondu, d’un air
étonné, comme s’il ne nous reconnaissait pas, et avec cette
perspective du regard particulière aux personnes qui ne veulent pas
être aimables et qui, du fond subitement prolongé de leurs yeux, ont
l’air de vous apercevoir comme au bout d’une route interminable et à
une si grande distance qu’elles se contentent de vous adresser un
signe de tête minuscule pour le proportionner à vos dimensions de
marionnette" :start 565 :end 1017)
 ))