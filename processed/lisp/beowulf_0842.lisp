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
 :text "Le pianiste qui avait à jouer deux morceaux de Chopin, après avoir
terminé le prélude avait attaqué aussitôt une polonaise. Mais depuis
que Mme de Gallardon avait signalé à sa cousine la présence de Swann,
Chopin ressuscité aurait pu venir jouer lui-même toutes ses œuvres
sans que Mme des Laumes pût y faire attention. Elle faisait partie
d’une de ces deux moitiés de l’humanité chez qui la curiosité qu’a
l’autre moitié pour les êtres qu’elle ne connaît pas est remplacée par
l’intérêt pour les êtres qu’elle connaît. Comme beaucoup de femmes du
faubourg Saint-Germain la présence dans un endroit où elle se trouvait
de quelqu’un de sa coterie, et auquel d’ailleurs elle n’avait rien de
particulier à dire, accaparait exclusivement son attention aux dépens
de tout le reste. A partir de ce moment, dans l’espoir que Swann la
remarquerait, la princesse ne fit plus, comme une souris blanche
apprivoisée à qui on tend puis on retire un morceau de sucre, que
tourner sa figure, remplie de mille signes de connivence dénués de
rapports avec le sentiment de la polonaise de Chopin, dans la
direction où était Swann et si celui-ci changeait de place, elle
déplaçait parallèlement son sourire aimanté."
 :tokens 199
 :processed-at "2025-03-16T02:18:14.680459"
 :entities (list
  (entity :text "Chopin," :label "ORG" :start 47 :end 54) (entity :text "Mais" :label "ORG" :start 124 :end 128) (entity :text "Gallardon" :label "ORG" :start 147 :end 156) (entity :text "Swann," :label "ORG" :start 199 :end 205) (entity :text "Chopin" :label "ORG" :start 206 :end 212) (entity :text "Laumes" :label "ORG" :start 290 :end 296) (entity :text "Elle" :label "ORG" :start 320 :end 324) (entity :text "Comme" :label "ORG" :start 520 :end 525) (entity :text "Saint-Germain" :label "ORG" :start 557 :end 570) (entity :text "Swann" :label "ORG" :start 818 :end 823) (entity :text "Chopin," :label "ORG" :start 1071 :end 1078) (entity :text "Swann" :label "ORG" :start 1106 :end 1111)
 )
 :sentences (list
  (sentence :text "Le pianiste qui avait à jouer deux morceaux de Chopin, après avoir
terminé le prélude avait attaqué aussitôt une polonaise" :start 0 :end 122) (sentence :text "Mais depuis
que Mme de Gallardon avait signalé à sa cousine la présence de Swann,
Chopin ressuscité aurait pu venir jouer lui-même toutes ses œuvres
sans que Mme des Laumes pût y faire attention" :start 123 :end 318) (sentence :text "Elle faisait partie
d’une de ces deux moitiés de l’humanité chez qui la curiosité qu’a
l’autre moitié pour les êtres qu’elle ne connaît pas est remplacée par
l’intérêt pour les êtres qu’elle connaît" :start 319 :end 518) (sentence :text "Comme beaucoup de femmes du
faubourg Saint-Germain la présence dans un endroit où elle se trouvait
de quelqu’un de sa coterie, et auquel d’ailleurs elle n’avait rien de
particulier à dire, accaparait exclusivement son attention aux dépens
de tout le reste" :start 519 :end 775) (sentence :text "A partir de ce moment, dans l’espoir que Swann la
remarquerait, la princesse ne fit plus, comme une souris blanche
apprivoisée à qui on tend puis on retire un morceau de sucre, que
tourner sa figure, remplie de mille signes de connivence dénués de
rapports avec le sentiment de la polonaise de Chopin, dans la
direction où était Swann et si celui-ci changeait de place, elle
déplaçait parallèlement son sourire aimanté" :start 776 :end 1195)
 ))