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
 :text "Dans la chambre voisine, j’entendais ma tante qui causait toute seule
à mi-voix. Elle ne parlait jamais qu’assez bas parce qu’elle croyait
avoir dans la tête quelque chose de cassé et de flottant qu’elle eût
déplacé en parlant trop fort, mais elle ne restait jamais longtemps,
même seule, sans dire quelque chose, parce qu’elle croyait que c’était
salutaire pour sa gorge et qu’en empêchant le sang de s’y arrêter,
cela rendrait moins fréquents les étouffements et les angoisses dont
elle souffrait; puis, dans l’inertie absolu où elle vivait, elle
prêtait à ses moindres sensations une importance extraordinaire; elle
les douait d’une motilité qui lui rendait difficile de les garder pour
elle, et à défaut de confident à qui les communiquer, elle se les
annonçait à elle-même, en un perpétuel monologue qui était sa seule
forme d’activité. Malheureusement, ayant pris l’habitude de penser
tout haut, elle ne faisait pas toujours attention à ce qu’il n’y eût
personne dans la chambre voisine, et je l’entendais souvent se dire à
elle-même: «Il faut que je me rappelle bien que je n’ai pas dormi»
(car ne jamais dormir était sa grande prétention dont notre langage à
tous gardait le respect et la trace: le matin Françoise ne venait pas
«l’éveiller», mais «entrait» chez elle; quand ma tante voulait faire
un somme dans la journée, on disait qu’elle voulait «réfléchir» ou
«reposer»; et quand il lui arrivait de s’oublier en causant jusqu’à
dire: «Ce qui m’a réveillée» ou «j’ai rêvé que», elle rougissait et se
reprenait au plus vite)."
 :tokens 254
 :processed-at "2025-03-16T02:18:13.854528"
 :entities (list
  (entity :text "Dans" :label "ORG" :start 0 :end 4) (entity :text "Elle" :label "ORG" :start 81 :end 85) (entity :text "Malheureusement," :label "ORG" :start 842 :end 858) (entity :text "Françoise" :label "ORG" :start 1213 :end 1222)
 )
 :sentences (list
  (sentence :text "Dans la chambre voisine, j’entendais ma tante qui causait toute seule
à mi-voix" :start 0 :end 79) (sentence :text "Elle ne parlait jamais qu’assez bas parce qu’elle croyait
avoir dans la tête quelque chose de cassé et de flottant qu’elle eût
déplacé en parlant trop fort, mais elle ne restait jamais longtemps,
même seule, sans dire quelque chose, parce qu’elle croyait que c’était
salutaire pour sa gorge et qu’en empêchant le sang de s’y arrêter,
cela rendrait moins fréquents les étouffements et les angoisses dont
elle souffrait; puis, dans l’inertie absolu où elle vivait, elle
prêtait à ses moindres sensations une importance extraordinaire; elle
les douait d’une motilité qui lui rendait difficile de les garder pour
elle, et à défaut de confident à qui les communiquer, elle se les
annonçait à elle-même, en un perpétuel monologue qui était sa seule
forme d’activité" :start 80 :end 840) (sentence :text "Malheureusement, ayant pris l’habitude de penser
tout haut, elle ne faisait pas toujours attention à ce qu’il n’y eût
personne dans la chambre voisine, et je l’entendais souvent se dire à
elle-même: «Il faut que je me rappelle bien que je n’ai pas dormi»
(car ne jamais dormir était sa grande prétention dont notre langage à
tous gardait le respect et la trace: le matin Françoise ne venait pas
«l’éveiller», mais «entrait» chez elle; quand ma tante voulait faire
un somme dans la journée, on disait qu’elle voulait «réfléchir» ou
«reposer»; et quand il lui arrivait de s’oublier en causant jusqu’à
dire: «Ce qui m’a réveillée» ou «j’ai rêvé que», elle rougissait et se
reprenait au plus vite)" :start 841 :end 1535)
 ))