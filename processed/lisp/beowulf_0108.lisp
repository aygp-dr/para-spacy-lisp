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
 :text "C’était le clocher de Saint-Hilaire qui donnait à toutes les
occupations, à toutes les heures, à tous les points de vue de la
ville, leur figure, leur couronnement, leur consécration. De ma
chambre, je ne pouvais apercevoir que sa base qui avait été recouverte
d’ardoises; mais quand, le dimanche, je les voyais, par une chaude
matinée d’été, flamboyer comme un soleil noir, je me disais:
«Mon-Dieu! neuf heures! il faut se préparer pour aller à la
grand’messe si je veux avoir le temps d’aller embrasser tante Léonie
avant», et je savais exactement la couleur qu’avait le soleil sur la
place, la chaleur et la poussière du marché, l’ombre que faisait le
store du magasin où maman entrerait peut-être avant la messe dans une
odeur de toile écrue, faire emplette de quelque mouchoir que lui
ferait montrer, en cambrant la taille, le patron qui, tout en se
préparant à fermer, venait d’aller dans l’arrière-boutique passer sa
veste du dimanche et se savonner les mains qu’il avait l’habitude,
toutes les cinq minutes, même dans les circonstances les plus
mélancoliques, de frotter l’une contre l’autre d’un air d’entreprise,
de partie fine et de réussite."
 :tokens 191
 :processed-at "2025-03-16T02:18:13.900788"
 :entities (list
  (entity :text "Saint-Hilaire" :label "ORG" :start 22 :end 35) (entity :text "«Mon-Dieu!" :label "ORG" :start 389 :end 399) (entity :text "Léonie" :label "ORG" :start 511 :end 517)
 )
 :sentences (list
  (sentence :text "C’était le clocher de Saint-Hilaire qui donnait à toutes les
occupations, à toutes les heures, à tous les points de vue de la
ville, leur figure, leur couronnement, leur consécration" :start 0 :end 182) (sentence :text "De ma
chambre, je ne pouvais apercevoir que sa base qui avait été recouverte
d’ardoises; mais quand, le dimanche, je les voyais, par une chaude
matinée d’été, flamboyer comme un soleil noir, je me disais:
«Mon-Dieu! neuf heures! il faut se préparer pour aller à la
grand’messe si je veux avoir le temps d’aller embrasser tante Léonie
avant», et je savais exactement la couleur qu’avait le soleil sur la
place, la chaleur et la poussière du marché, l’ombre que faisait le
store du magasin où maman entrerait peut-être avant la messe dans une
odeur de toile écrue, faire emplette de quelque mouchoir que lui
ferait montrer, en cambrant la taille, le patron qui, tout en se
préparant à fermer, venait d’aller dans l’arrière-boutique passer sa
veste du dimanche et se savonner les mains qu’il avait l’habitude,
toutes les cinq minutes, même dans les circonstances les plus
mélancoliques, de frotter l’une contre l’autre d’un air d’entreprise,
de partie fine et de réussite" :start 183 :end 1152)
 ))