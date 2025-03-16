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
 :text "Alors cette terrible réponse dont il avait arrêté chaque mot la veille
sans oser espérer qu’elle pourrait servir jamais il avait la joie de
la lui faire porter. Hélas! il sentait bien qu’avec l’argent qu’elle
avait, ou qu’elle trouverait facilement, elle pourrait tout de même
louer à Bayreuth puisqu’elle en avait envie, elle qui n’était pas
capable de faire de différence entre Bach et Clapisson. Mais elle y
vivrait malgré tout plus chichement. Pas moyen comme s’il lui eût
envoyé cette fois quelques billets de mille francs, d’organiser chaque
soir, dans un château, de ces soupers fins après lesquels elle se
serait peut-être passé la fantaisie,--qu’il était possible qu’elle
n’eût jamais eue encore--, de tomber dans les bras de Forcheville. Et
puis du moins, ce voyage détesté, ce n’était pas lui, Swann, qui le
paierait!--Ah! s’il avait pu l’empêcher, si elle avait pu se fouler le
pied avant de partir, si le cocher de la voiture qui l’emmènerait à la
gare avait consenti, à n’importe quel prix, à la conduire dans un lieu
où elle fût restée quelque temps séquestrée, cette femme perfide, aux
yeux émaillés par un sourire de complicité adressé à Forcheville,
qu’Odette était pour Swann depuis quarante-huit heures."
 :tokens 201
 :processed-at "2025-03-16T02:18:14.603103"
 :entities (list
  (entity :text "Hélas!" :label "ORG" :start 161 :end 167) (entity :text "Bayreuth" :label "ORG" :start 285 :end 293) (entity :text "Bach" :label "ORG" :start 380 :end 384) (entity :text "Clapisson." :label "ORG" :start 388 :end 398) (entity :text "Mais" :label "ORG" :start 399 :end 403) (entity :text "Forcheville." :label "ORG" :start 735 :end 747) (entity :text "Swann," :label "ORG" :start 805 :end 811) (entity :text "Forcheville," :label "ORG" :start 1155 :end 1167) (entity :text "Swann" :label "ORG" :start 1189 :end 1194)
 )
 :sentences (list
  (sentence :text "Alors cette terrible réponse dont il avait arrêté chaque mot la veille
sans oser espérer qu’elle pourrait servir jamais il avait la joie de
la lui faire porter" :start 0 :end 159) (sentence :text "Hélas! il sentait bien qu’avec l’argent qu’elle
avait, ou qu’elle trouverait facilement, elle pourrait tout de même
louer à Bayreuth puisqu’elle en avait envie, elle qui n’était pas
capable de faire de différence entre Bach et Clapisson" :start 160 :end 397) (sentence :text "Mais elle y
vivrait malgré tout plus chichement" :start 398 :end 446) (sentence :text "Pas moyen comme s’il lui eût
envoyé cette fois quelques billets de mille francs, d’organiser chaque
soir, dans un château, de ces soupers fins après lesquels elle se
serait peut-être passé la fantaisie,--qu’il était possible qu’elle
n’eût jamais eue encore--, de tomber dans les bras de Forcheville" :start 447 :end 746) (sentence :text "Et
puis du moins, ce voyage détesté, ce n’était pas lui, Swann, qui le
paierait!--Ah! s’il avait pu l’empêcher, si elle avait pu se fouler le
pied avant de partir, si le cocher de la voiture qui l’emmènerait à la
gare avait consenti, à n’importe quel prix, à la conduire dans un lieu
où elle fût restée quelque temps séquestrée, cette femme perfide, aux
yeux émaillés par un sourire de complicité adressé à Forcheville,
qu’Odette était pour Swann depuis quarante-huit heures" :start 747 :end 1222)
 ))