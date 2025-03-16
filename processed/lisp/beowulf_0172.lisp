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
 :text "J’avais entendu parler de Bergotte pour la première fois par un de mes
camarades plus âgé que moi et pour qui j’avais une grande admiration,
Bloch. En m’entendant lui avouer mon admiration pour la Nuit
d’Octobre, il avait fait éclater un rire bruyant comme une trompette
et m’avait dit: «Défie-toi de ta dilection assez basse pour le sieur
de Musset. C’est un coco des plus malfaisants et une assez sinistre
brute. Je dois confesser, d’ailleurs, que lui et même le nommé Racine,
ont fait chacun dans leur vie un vers assez bien rythmé, et qui a pour
lui, ce qui est selon moi le mérite suprême, de ne signifier
absolument rien. C’est: «La blanche Oloossone et la blanche Camire» et
«La fille de Minos et de Pasiphaé». Ils m’ont été signalés à la
décharge de ces deux malandrins par un article de mon très cher
maître, le père Leconte, agréable aux Dieux Immortels. A propos voici
un livre que je n’ai pas le temps de lire en ce moment qui est
recommandé, paraît-il, par cet immense bonhomme. Il tient, m’a-t-on
dit, l’auteur, le sieur Bergotte, pour un coco des plus subtils; et
bien qu’il fasse preuve, des fois, de mansuétudes assez mal
explicables, sa parole est pour moi oracle delphique. Lis donc ces
proses lyriques, et si le gigantesque assembleur de rythmes qui a
écrit Bhagavat et le Levrier de Magnus a dit vrai, par Apollôn, tu
goûteras, cher maître, les joies nectaréennes de l’Olympos.» C’est sur
un ton sarcastique qu’il m’avait demandé de l’appeler «cher maître» et
qu’il m’appelait lui-même ainsi. Mais en réalité nous prenions un
certain plaisir à ce jeu, étant encore rapprochés de l’âge où on croit
qu’on crée ce qu’on nomme."
 :tokens 286
 :processed-at "2025-03-16T02:18:13.964758"
 :entities (list
  (entity :text "Bergotte" :label "ORG" :start 26 :end 34) (entity :text "Bloch." :label "ORG" :start 141 :end 147) (entity :text "Nuit" :label "ORG" :start 197 :end 201) (entity :text "Musset." :label "ORG" :start 343 :end 350) (entity :text "Racine," :label "ORG" :start 471 :end 478) (entity :text "Oloossone" :label "ORG" :start 647 :end 656) (entity :text "Camire»" :label "ORG" :start 671 :end 678) (entity :text "Minos" :label "ORG" :start 695 :end 700) (entity :text "Pasiphaé»." :label "ORG" :start 707 :end 717) (entity :text "Leconte," :label "ORG" :start 826 :end 834) (entity :text "Dieux" :label "ORG" :start 848 :end 853) (entity :text "Immortels." :label "ORG" :start 854 :end 864) (entity :text "Bergotte," :label "ORG" :start 1035 :end 1044) (entity :text "Bhagavat" :label "ORG" :start 1278 :end 1286) (entity :text "Levrier" :label "ORG" :start 1293 :end 1300) (entity :text "Magnus" :label "ORG" :start 1304 :end 1310) (entity :text "Mais" :label "ORG" :start 1514 :end 1518)
 )
 :sentences (list
  (sentence :text "J’avais entendu parler de Bergotte pour la première fois par un de mes
camarades plus âgé que moi et pour qui j’avais une grande admiration,
Bloch" :start 0 :end 146) (sentence :text "En m’entendant lui avouer mon admiration pour la Nuit
d’Octobre, il avait fait éclater un rire bruyant comme une trompette
et m’avait dit: «Défie-toi de ta dilection assez basse pour le sieur
de Musset" :start 147 :end 349) (sentence :text "C’est un coco des plus malfaisants et une assez sinistre
brute" :start 350 :end 413) (sentence :text "Je dois confesser, d’ailleurs, que lui et même le nommé Racine,
ont fait chacun dans leur vie un vers assez bien rythmé, et qui a pour
lui, ce qui est selon moi le mérite suprême, de ne signifier
absolument rien" :start 414 :end 626) (sentence :text "C’est: «La blanche Oloossone et la blanche Camire» et
«La fille de Minos et de Pasiphaé»" :start 627 :end 716) (sentence :text "Ils m’ont été signalés à la
décharge de ces deux malandrins par un article de mon très cher
maître, le père Leconte, agréable aux Dieux Immortels" :start 717 :end 863) (sentence :text "A propos voici
un livre que je n’ai pas le temps de lire en ce moment qui est
recommandé, paraît-il, par cet immense bonhomme" :start 864 :end 990) (sentence :text "Il tient, m’a-t-on
dit, l’auteur, le sieur Bergotte, pour un coco des plus subtils; et
bien qu’il fasse preuve, des fois, de mansuétudes assez mal
explicables, sa parole est pour moi oracle delphique" :start 991 :end 1191) (sentence :text "Lis donc ces
proses lyriques, et si le gigantesque assembleur de rythmes qui a
écrit Bhagavat et le Levrier de Magnus a dit vrai, par Apollôn, tu
goûteras, cher maître, les joies nectaréennes de l’Olympos" :start 1192 :end 1397) (sentence :text "» C’est sur
un ton sarcastique qu’il m’avait demandé de l’appeler «cher maître» et
qu’il m’appelait lui-même ainsi" :start 1398 :end 1512) (sentence :text "Mais en réalité nous prenions un
certain plaisir à ce jeu, étant encore rapprochés de l’âge où on croit
qu’on crée ce qu’on nomme" :start 1513 :end 1643)
 ))