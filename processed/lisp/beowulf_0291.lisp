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
 :text "--«Là comme partout, je connais tout le monde et je ne connais
personne, répondit Legrandin qui ne se rendait pas si vite; beaucoup
les choses et fort peu les personnes. Mais les choses elles-mêmes y
semblent des personnes, des personnes rares, d’une essence délicate et
que la vie aurait déçues. Parfois c’est un castel que vous rencontrez
sur la falaise, au bord du chemin où il s’est arrêté pour confronter
son chagrin au soir encore rose où monte la lune d’or et dont les
barques qui rentrent en striant l’eau diaprée hissent à leurs mâts la
flamme et portent les couleurs; parfois c’est une simple maison
solitaire, plutôt laide, l’air timide mais romanesque, qui cache à
tous les yeux quelque secret impérissable de bonheur et de
désenchantement. Ce pays sans vérité, ajouta-t-il avec une délicatesse
machiavélique, ce pays de pure fiction est d’une mauvaise lecture pour
un enfant, et ce n’est certes pas lui que je choisirais et
recommanderais pour mon petit ami déjà si enclin à la tristesse, pour
son cœur prédisposé. Les climats de confidence amoureuse et de regret
inutile peuvent convenir au vieux désabusé que je suis, ils sont
toujours malsains pour un tempérament qui n’est pas formé. Croyez-moi,
reprit-il avec insistance, les eaux de cette baie, déjà à moitié
bretonne, peuvent exercer une action sédative, d’ailleurs discutable,
sur un cœur qui n’est plus intact comme le mien, sur un cœur dont la
lésion n’est plus compensée. Elles sont contre-indiquées à votre âge,
petit garçon. Bonne nuit, voisins», ajouta-t-il en nous quittant avec
cette brusquerie évasive dont il avait l’habitude et, se retournant
vers nous avec un doigt levé de docteur, il résuma sa consultation:
«Pas de Balbec avant cinquante ans et encore cela dépend de l’état du
cœur», nous cria-t-il."
 :tokens 294
 :processed-at "2025-03-16T02:18:14.092801"
 :entities (list
  (entity :text "--«Là" :label "ORG" :start 0 :end 5) (entity :text "Legrandin" :label "ORG" :start 82 :end 91) (entity :text "Mais" :label "ORG" :start 170 :end 174) (entity :text "Parfois" :label "ORG" :start 297 :end 304) (entity :text "Elles" :label "ORG" :start 1446 :end 1451) (entity :text "Bonne" :label "ORG" :start 1501 :end 1506) (entity :text "«Pas" :label "ORG" :start 1693 :end 1697) (entity :text "Balbec" :label "ORG" :start 1701 :end 1707)
 )
 :sentences (list
  (sentence :text "--«Là comme partout, je connais tout le monde et je ne connais
personne, répondit Legrandin qui ne se rendait pas si vite; beaucoup
les choses et fort peu les personnes" :start 0 :end 168) (sentence :text "Mais les choses elles-mêmes y
semblent des personnes, des personnes rares, d’une essence délicate et
que la vie aurait déçues" :start 169 :end 295) (sentence :text "Parfois c’est un castel que vous rencontrez
sur la falaise, au bord du chemin où il s’est arrêté pour confronter
son chagrin au soir encore rose où monte la lune d’or et dont les
barques qui rentrent en striant l’eau diaprée hissent à leurs mâts la
flamme et portent les couleurs; parfois c’est une simple maison
solitaire, plutôt laide, l’air timide mais romanesque, qui cache à
tous les yeux quelque secret impérissable de bonheur et de
désenchantement" :start 296 :end 751) (sentence :text "Ce pays sans vérité, ajouta-t-il avec une délicatesse
machiavélique, ce pays de pure fiction est d’une mauvaise lecture pour
un enfant, et ce n’est certes pas lui que je choisirais et
recommanderais pour mon petit ami déjà si enclin à la tristesse, pour
son cœur prédisposé" :start 752 :end 1026) (sentence :text "Les climats de confidence amoureuse et de regret
inutile peuvent convenir au vieux désabusé que je suis, ils sont
toujours malsains pour un tempérament qui n’est pas formé" :start 1027 :end 1199) (sentence :text "Croyez-moi,
reprit-il avec insistance, les eaux de cette baie, déjà à moitié
bretonne, peuvent exercer une action sédative, d’ailleurs discutable,
sur un cœur qui n’est plus intact comme le mien, sur un cœur dont la
lésion n’est plus compensée" :start 1200 :end 1444) (sentence :text "Elles sont contre-indiquées à votre âge,
petit garçon" :start 1445 :end 1499) (sentence :text "Bonne nuit, voisins», ajouta-t-il en nous quittant avec
cette brusquerie évasive dont il avait l’habitude et, se retournant
vers nous avec un doigt levé de docteur, il résuma sa consultation:
«Pas de Balbec avant cinquante ans et encore cela dépend de l’état du
cœur», nous cria-t-il" :start 1500 :end 1784)
 ))