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
 :text "Je dînai avec Legrandin sur sa terrasse; il faisait clair de lune: «Il
y a une jolie qualité de silence, n’est-ce pas, me dit-il; aux cœurs
blessés comme l’est le mien, un romancier que vous lirez plus tard,
prétend que conviennent seulement l’ombre et le silence. Et
voyez-vous, mon enfant, il vient dans la vie une heure dont vous êtes
bien loin encore où les yeux las ne tolèrent plus qu’une lumière,
celle qu’une belle nuit comme celle-ci prépare et distille avec
l’obscurité, où les oreilles ne peuvent plus écouter de musique que
celle que joue le clair de lune sur la flûte du silence.» J’écoutais
les paroles de M. Legrandin qui me paraissaient toujours si agréables;
mais troublé par le souvenir d’une femme que j’avais aperçue
dernièrement pour la première fois, et pensant, maintenant que je
savais que Legrandin était lié avec plusieurs personnalités
aristocratiques des environs, que peut-être il connaissait celle-ci,
prenant mon courage, je lui dis: «Est-ce que vous connaissez,
monsieur, la... les châtelaines de Guermantes», heureux aussi en
prononçant ce nom de prendre sur lui une sorte de pouvoir, par le seul
fait de le tirer de mon rêve et de lui donner une existence objective
et sonore."
 :tokens 202
 :processed-at "2025-03-16T02:18:14.080568"
 :entities (list
  (entity :text "Legrandin" :label "ORG" :start 14 :end 23) (entity :text "Legrandin" :label "ORG" :start 623 :end 632) (entity :text "Legrandin" :label "ORG" :start 814 :end 823) (entity :text "Guermantes»," :label "ORG" :start 1029 :end 1041)
 )
 :sentences (list
  (sentence :text "Je dînai avec Legrandin sur sa terrasse; il faisait clair de lune: «Il
y a une jolie qualité de silence, n’est-ce pas, me dit-il; aux cœurs
blessés comme l’est le mien, un romancier que vous lirez plus tard,
prétend que conviennent seulement l’ombre et le silence" :start 0 :end 263) (sentence :text "Et
voyez-vous, mon enfant, il vient dans la vie une heure dont vous êtes
bien loin encore où les yeux las ne tolèrent plus qu’une lumière,
celle qu’une belle nuit comme celle-ci prépare et distille avec
l’obscurité, où les oreilles ne peuvent plus écouter de musique que
celle que joue le clair de lune sur la flûte du silence" :start 264 :end 591) (sentence :text "» J’écoutais
les paroles de M" :start 592 :end 621) (sentence :text "Legrandin qui me paraissaient toujours si agréables;
mais troublé par le souvenir d’une femme que j’avais aperçue
dernièrement pour la première fois, et pensant, maintenant que je
savais que Legrandin était lié avec plusieurs personnalités
aristocratiques des environs, que peut-être il connaissait celle-ci,
prenant mon courage, je lui dis: «Est-ce que vous connaissez,
monsieur, la" :start 622 :end 1006) (sentence :text "les châtelaines de Guermantes», heureux aussi en
prononçant ce nom de prendre sur lui une sorte de pouvoir, par le seul
fait de le tirer de mon rêve et de lui donner une existence objective
et sonore" :start 1009 :end 1209)
 ))