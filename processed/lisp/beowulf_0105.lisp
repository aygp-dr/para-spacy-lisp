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
 :text "L’église! Familière; mitoyenne, rue Saint-Hilaire, où était sa porte
nord, de ses deux voisines, la pharmacie de M. Rapin et la maison de
Mme Loiseau, qu’elle touchait sans aucune séparation; simple citoyenne
de Combray qui aurait pu avoir son numéro dans la rue si les rues de
Combray avaient eu des numéros, et où il semble que le facteur aurait
dû s’arrêter le matin quand il faisait sa distribution, avant d’entrer
chez Mme Loiseau et en sortant de chez M. Rapin, il y avait pourtant
entre elle et tout ce qui n’était pas elle une démarcation que mon
esprit n’a jamais pu arriver à franchir. Mme Loiseau avait beau avoir
à sa fenêtre des fuchsias, qui prenaient la mauvaise habitude de
laisser leurs branches courir toujours partout tête baissée, et dont
les fleurs n’avaient rien de plus pressé, quand elles étaient assez
grandes, que d’aller rafraîchir leurs joues violettes et
congestionnées contre la sombre façade de l’église, les fuchsias ne
devenaient pas sacrés pour cela pour moi; entre les fleurs et la
pierre noircie sur laquelle elles s’appuyaient, si mes yeux ne
percevaient pas d’intervalle, mon esprit réservait un abîme."
 :tokens 190
 :processed-at "2025-03-16T02:18:13.897399"
 :entities (list
  (entity :text "Familière;" :label "ORG" :start 10 :end 20) (entity :text "Saint-Hilaire," :label "ORG" :start 36 :end 50) (entity :text "Rapin" :label "ORG" :start 116 :end 121) (entity :text "Loiseau," :label "ORG" :start 142 :end 150) (entity :text "Combray" :label "ORG" :start 212 :end 219) (entity :text "Combray" :label "ORG" :start 278 :end 285) (entity :text "Loiseau" :label "ORG" :start 428 :end 435) (entity :text "Rapin," :label "ORG" :start 461 :end 467) (entity :text "Loiseau" :label "ORG" :start 600 :end 607)
 )
 :sentences (list
  (sentence :text "L’église! Familière; mitoyenne, rue Saint-Hilaire, où était sa porte
nord, de ses deux voisines, la pharmacie de M" :start 0 :end 114) (sentence :text "Rapin et la maison de
Mme Loiseau, qu’elle touchait sans aucune séparation; simple citoyenne
de Combray qui aurait pu avoir son numéro dans la rue si les rues de
Combray avaient eu des numéros, et où il semble que le facteur aurait
dû s’arrêter le matin quand il faisait sa distribution, avant d’entrer
chez Mme Loiseau et en sortant de chez M" :start 115 :end 459) (sentence :text "Rapin, il y avait pourtant
entre elle et tout ce qui n’était pas elle une démarcation que mon
esprit n’a jamais pu arriver à franchir" :start 460 :end 594) (sentence :text "Mme Loiseau avait beau avoir
à sa fenêtre des fuchsias, qui prenaient la mauvaise habitude de
laisser leurs branches courir toujours partout tête baissée, et dont
les fleurs n’avaient rien de plus pressé, quand elles étaient assez
grandes, que d’aller rafraîchir leurs joues violettes et
congestionnées contre la sombre façade de l’église, les fuchsias ne
devenaient pas sacrés pour cela pour moi; entre les fleurs et la
pierre noircie sur laquelle elles s’appuyaient, si mes yeux ne
percevaient pas d’intervalle, mon esprit réservait un abîme" :start 595 :end 1139)
 ))