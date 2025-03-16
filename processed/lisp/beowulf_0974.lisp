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
 :text "Si ma santé s’affermissait et que mes parents me permissent, sinon
d’aller séjourner à Balbec, du moins de prendre une fois, pour faire
connaissance avec l’architecture et les paysages de la Normandie ou de
la Bretagne, ce train d’une heure vingt-deux dans lequel j’étais monté
tant de fois en imagination, j’aurais voulu m’arrêter de préférence
dans les villes les plus belles; mais j’avais beau les comparer,
comment choisir plus qu’entre des êtres individuels, qui ne sont pas
interchangeables, entre Bayeux si haute dans sa noble dentelle
rougeâtre et dont le faîte était illuminé par le vieil or de sa
dernière syllabe; Vitré dont l’accent aigu losangeait de bois noir le
vitrage ancien; le doux Lamballe qui, dans son blanc, va du jaune
coquille d’œuf au gris perle; Coutances, cathédrale normande, que sa
diphtongue finale, grasse et jaunissante couronne par une tour de
beurre; Lannion avec le bruit, dans son silence villageois, du coche
suivi de la mouche; Questambert, Pontorson, risibles et naïfs, plumes
blanches et becs jaunes éparpillés sur la route de ces lieux
fluviatiles et poétiques; Benodet, nom à peine amarré que semble
vouloir entraîner la rivière au milieu de ses algues, Pont-Aven,
envolée blanche et rose de l’aile d’une coiffe légère qui se reflète
en tremblant dans une eau verdie de canal; Quimperlé, lui, mieux
attaché et, depuis le moyen âge, entre les ruisseaux dont il gazouille
et s’emperle en une grisaille pareille à celle que dessinent, à
travers les toiles d’araignées d’une verrière, les rayons de soleil
changés en pointes émoussées d’argent bruni?"
 :tokens 256
 :processed-at "2025-03-16T02:18:14.829438"
 :entities (list
  (entity :text "Balbec," :label "ORG" :start 87 :end 94) (entity :text "Normandie" :label "ORG" :start 191 :end 200) (entity :text "Bretagne," :label "ORG" :start 210 :end 219) (entity :text "Bayeux" :label "ORG" :start 504 :end 510) (entity :text "Vitré" :label "ORG" :start 625 :end 630) (entity :text "Lamballe" :label "ORG" :start 701 :end 709) (entity :text "Coutances," :label "ORG" :start 773 :end 783) (entity :text "Lannion" :label "ORG" :start 886 :end 893) (entity :text "Questambert," :label "ORG" :start 967 :end 979) (entity :text "Pontorson," :label "ORG" :start 980 :end 990) (entity :text "Benodet," :label "ORG" :start 1104 :end 1112) (entity :text "Pont-Aven," :label "ORG" :start 1197 :end 1207) (entity :text "Quimperlé," :label "ORG" :start 1320 :end 1330)
 )
 :sentences (list
  (sentence :text "Si ma santé s’affermissait et que mes parents me permissent, sinon
d’aller séjourner à Balbec, du moins de prendre une fois, pour faire
connaissance avec l’architecture et les paysages de la Normandie ou de
la Bretagne, ce train d’une heure vingt-deux dans lequel j’étais monté
tant de fois en imagination, j’aurais voulu m’arrêter de préférence
dans les villes les plus belles; mais j’avais beau les comparer,
comment choisir plus qu’entre des êtres individuels, qui ne sont pas
interchangeables, entre Bayeux si haute dans sa noble dentelle
rougeâtre et dont le faîte était illuminé par le vieil or de sa
dernière syllabe; Vitré dont l’accent aigu losangeait de bois noir le
vitrage ancien; le doux Lamballe qui, dans son blanc, va du jaune
coquille d’œuf au gris perle; Coutances, cathédrale normande, que sa
diphtongue finale, grasse et jaunissante couronne par une tour de
beurre; Lannion avec le bruit, dans son silence villageois, du coche
suivi de la mouche; Questambert, Pontorson, risibles et naïfs, plumes
blanches et becs jaunes éparpillés sur la route de ces lieux
fluviatiles et poétiques; Benodet, nom à peine amarré que semble
vouloir entraîner la rivière au milieu de ses algues, Pont-Aven,
envolée blanche et rose de l’aile d’une coiffe légère qui se reflète
en tremblant dans une eau verdie de canal; Quimperlé, lui, mieux
attaché et, depuis le moyen âge, entre les ruisseaux dont il gazouille
et s’emperle en une grisaille pareille à celle que dessinent, à
travers les toiles d’araignées d’une verrière, les rayons de soleil
changés en pointes émoussées d’argent bruni?" :start 0 :end 1589)
 ))