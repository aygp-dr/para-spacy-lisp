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
 :text "De ce poste élevé elle participait avec entrain à la conversation des
fidèles et s’égayait de leurs «fumisteries», mais depuis l’accident
qui était arrivé à sa mâchoire, elle avait renoncé à prendre la peine
de pouffer effectivement et se livrait à la place à une mimique
conventionnelle qui signifiait sans fatigue ni risques pour elle,
qu’elle riait aux larmes. Au moindre mot que lâchait un habitué contre
un ennuyeux ou contre un ancien habitué rejeté au camp des
ennuyeux,--et pour le plus grand désespoir de M. Verdurin qui avait eu
longtemps la prétention d’être aussi aimable que sa femme, mais qui
riant pour de bon s’essoufflait vite et avait été distancé et vaincu
par cette ruse d’une incessante et fictive hilarité--, elle poussait un
petit cri, fermait entièrement ses yeux d’oiseau qu’une taie
commençait à voiler, et brusquement, comme si elle n’eût eu que le
temps de cacher un spectacle indécent ou de parer à un accès mortel,
plongeant sa figure dans ses mains qui la recouvraient et n’en
laissaient plus rien voir, elle avait l’air de s’efforcer de réprimer,
d’anéantir un rire qui, si elle s’y fût abandonnée, l’eût conduite à
l’évanouissement. Telle, étourdie par la gaieté des fidèles, ivre de
camaraderie, de médisance et d’assentiment, Mme Verdurin, juchée sur
son perchoir, pareille à un oiseau dont on eût trempé le colifichet
dans du vin chaud, sanglotait d’amabilité."
 :tokens 229
 :processed-at "2025-03-16T02:18:14.257584"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 517 :end 525) (entity :text "Telle," :label "ORG" :start 1166 :end 1172) (entity :text "Verdurin," :label "ORG" :start 1265 :end 1274)
 )
 :sentences (list
  (sentence :text "De ce poste élevé elle participait avec entrain à la conversation des
fidèles et s’égayait de leurs «fumisteries», mais depuis l’accident
qui était arrivé à sa mâchoire, elle avait renoncé à prendre la peine
de pouffer effectivement et se livrait à la place à une mimique
conventionnelle qui signifiait sans fatigue ni risques pour elle,
qu’elle riait aux larmes" :start 0 :end 362) (sentence :text "Au moindre mot que lâchait un habitué contre
un ennuyeux ou contre un ancien habitué rejeté au camp des
ennuyeux,--et pour le plus grand désespoir de M" :start 363 :end 515) (sentence :text "Verdurin qui avait eu
longtemps la prétention d’être aussi aimable que sa femme, mais qui
riant pour de bon s’essoufflait vite et avait été distancé et vaincu
par cette ruse d’une incessante et fictive hilarité--, elle poussait un
petit cri, fermait entièrement ses yeux d’oiseau qu’une taie
commençait à voiler, et brusquement, comme si elle n’eût eu que le
temps de cacher un spectacle indécent ou de parer à un accès mortel,
plongeant sa figure dans ses mains qui la recouvraient et n’en
laissaient plus rien voir, elle avait l’air de s’efforcer de réprimer,
d’anéantir un rire qui, si elle s’y fût abandonnée, l’eût conduite à
l’évanouissement" :start 516 :end 1164) (sentence :text "Telle, étourdie par la gaieté des fidèles, ivre de
camaraderie, de médisance et d’assentiment, Mme Verdurin, juchée sur
son perchoir, pareille à un oiseau dont on eût trempé le colifichet
dans du vin chaud, sanglotait d’amabilité" :start 1165 :end 1395)
 ))