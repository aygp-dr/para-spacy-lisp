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
 :text "Swann le renvoya, il voulait marcher et ce fut à pied, par le Bois,
qu’il rentra. Il parlait seul, à haute voix, et sur le même ton un peu
factice qu’il avait pris jusqu’ici quand il détaillait les charmes du
petit noyau et exaltait la magnanimité des Verdurin. Mais de même que
les propos, les sourires, les baisers d’Odette lui devenaient aussi
odieux qu’il les avait trouvés doux, s’ils étaient adressés à d’autres
que lui, de même, le salon des Verdurin, qui tout à l’heure encore lui
semblait amusant, respirant un goût vrai pour l’art et même une sorte
de noblesse morale, maintenant que c’était un autre que lui qu’Odette
allait y rencontrer, y aimer librement, lui exhibait ses ridicules, sa
sottise, son ignominie."
 :tokens 124
 :processed-at "2025-03-16T02:18:14.566059"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 0 :end 5) (entity :text "Bois," :label "ORG" :start 62 :end 67) (entity :text "Verdurin." :label "ORG" :start 252 :end 261) (entity :text "Mais" :label "ORG" :start 262 :end 266) (entity :text "Verdurin," :label "ORG" :start 449 :end 458)
 )
 :sentences (list
  (sentence :text "Swann le renvoya, il voulait marcher et ce fut à pied, par le Bois,
qu’il rentra" :start 0 :end 80) (sentence :text "Il parlait seul, à haute voix, et sur le même ton un peu
factice qu’il avait pris jusqu’ici quand il détaillait les charmes du
petit noyau et exaltait la magnanimité des Verdurin" :start 81 :end 260) (sentence :text "Mais de même que
les propos, les sourires, les baisers d’Odette lui devenaient aussi
odieux qu’il les avait trouvés doux, s’ils étaient adressés à d’autres
que lui, de même, le salon des Verdurin, qui tout à l’heure encore lui
semblait amusant, respirant un goût vrai pour l’art et même une sorte
de noblesse morale, maintenant que c’était un autre que lui qu’Odette
allait y rencontrer, y aimer librement, lui exhibait ses ridicules, sa
sottise, son ignominie" :start 261 :end 722)
 ))