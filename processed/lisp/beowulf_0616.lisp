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
 :text "--Je vais vous paraître bien provinciale, monsieur, dit Mme Cottard à
Swann, mais je n’ai pas encore vu cette fameuse Francillon dont tout
le monde parle. Le docteur y est allé (je me rappelle même qu’il m’a
dit avoir eu le très grand plaisir de passer la soirée avec vous) et
j’avoue que je n’ai pas trouvé raisonnable qu’il louât des places pour
y retourner avec moi. Évidemment, au Théâtre-Français, on ne regrette
jamais sa soirée, c’est toujours si bien joué, mais comme nous avons
des amis très aimables (Mme Cottard prononçait rarement un nom propre
et se contentait de dire «des amis à nous», «une de mes amies», par
«distinction», sur un ton factice, et avec l’air d’importance d’une
personne qui ne nomme que qui elle veut) qui ont souvent des loges et
ont la bonne idée de nous emmener à toutes les nouveautés qui en
valent la peine, je suis toujours sûre de voir Francillon un peu plus
tôt ou un peu plus tard, et de pouvoir me former une opinion. Je dois
pourtant confesser que je me trouve assez sotte, car, dans tous les
salons où je vais en visite, on ne parle naturellement que de cette
malheureuse salade japonaise. On commence même à en être un peu
fatigué, ajouta-t-elle en voyant que Swann n’avait pas l’air aussi
intéressé qu’elle aurait cru par une si brûlante actualité. Il faut
avouer pourtant que cela donne quelquefois prétexte à des idées assez
amusantes. Ainsi j’ai une de mes amies qui est très originale, quoique
très jolie femme, très entourée, très lancée, et qui prétend qu’elle a
fait faire chez elle cette salade japonaise, mais en faisant mettre
tout ce qu’Alexandre Dumas fils dit dans la pièce. Elle avait invité
quelques amies à venir en manger. Malheureusement je n’étais pas des
élues. Mais elle nous l’a raconté tantôt, à son jour; il paraît que
c’était détestable, elle nous a fait rire aux larmes. Mais vous savez,
tout est dans la manière de raconter, dit-elle en voyant que Swann
gardait un air grave."
 :tokens 342
 :processed-at "2025-03-16T02:18:14.445208"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Cottard" :label "ORG" :start 60 :end 67) (entity :text "Swann," :label "ORG" :start 70 :end 76) (entity :text "Francillon" :label "ORG" :start 118 :end 128) (entity :text "Évidemment," :label "ORG" :start 370 :end 381) (entity :text "Théâtre-Français," :label "ORG" :start 385 :end 402) (entity :text "(Mme" :label "ORG" :start 510 :end 514) (entity :text "Cottard" :label "ORG" :start 515 :end 522) (entity :text "Francillon" :label "ORG" :start 875 :end 885) (entity :text "Swann" :label "ORG" :start 1205 :end 1210) (entity :text "Dumas" :label "ORG" :start 1604 :end 1609) (entity :text "Elle" :label "ORG" :start 1634 :end 1638) (entity :text "Malheureusement" :label "ORG" :start 1686 :end 1701) (entity :text "Mais" :label "ORG" :start 1728 :end 1732) (entity :text "Mais" :label "ORG" :start 1843 :end 1847) (entity :text "Swann" :label "ORG" :start 1921 :end 1926)
 )
 :sentences (list
  (sentence :text "--Je vais vous paraître bien provinciale, monsieur, dit Mme Cottard à
Swann, mais je n’ai pas encore vu cette fameuse Francillon dont tout
le monde parle" :start 0 :end 153) (sentence :text "Le docteur y est allé (je me rappelle même qu’il m’a
dit avoir eu le très grand plaisir de passer la soirée avec vous) et
j’avoue que je n’ai pas trouvé raisonnable qu’il louât des places pour
y retourner avec moi" :start 154 :end 368) (sentence :text "Évidemment, au Théâtre-Français, on ne regrette
jamais sa soirée, c’est toujours si bien joué, mais comme nous avons
des amis très aimables (Mme Cottard prononçait rarement un nom propre
et se contentait de dire «des amis à nous», «une de mes amies», par
«distinction», sur un ton factice, et avec l’air d’importance d’une
personne qui ne nomme que qui elle veut) qui ont souvent des loges et
ont la bonne idée de nous emmener à toutes les nouveautés qui en
valent la peine, je suis toujours sûre de voir Francillon un peu plus
tôt ou un peu plus tard, et de pouvoir me former une opinion" :start 369 :end 958) (sentence :text "Je dois
pourtant confesser que je me trouve assez sotte, car, dans tous les
salons où je vais en visite, on ne parle naturellement que de cette
malheureuse salade japonaise" :start 959 :end 1132) (sentence :text "On commence même à en être un peu
fatigué, ajouta-t-elle en voyant que Swann n’avait pas l’air aussi
intéressé qu’elle aurait cru par une si brûlante actualité" :start 1133 :end 1293) (sentence :text "Il faut
avouer pourtant que cela donne quelquefois prétexte à des idées assez
amusantes" :start 1294 :end 1382) (sentence :text "Ainsi j’ai une de mes amies qui est très originale, quoique
très jolie femme, très entourée, très lancée, et qui prétend qu’elle a
fait faire chez elle cette salade japonaise, mais en faisant mettre
tout ce qu’Alexandre Dumas fils dit dans la pièce" :start 1383 :end 1632) (sentence :text "Elle avait invité
quelques amies à venir en manger" :start 1633 :end 1684) (sentence :text "Malheureusement je n’étais pas des
élues" :start 1685 :end 1726) (sentence :text "Mais elle nous l’a raconté tantôt, à son jour; il paraît que
c’était détestable, elle nous a fait rire aux larmes" :start 1727 :end 1841) (sentence :text "Mais vous savez,
tout est dans la manière de raconter, dit-elle en voyant que Swann
gardait un air grave" :start 1842 :end 1947)
 ))