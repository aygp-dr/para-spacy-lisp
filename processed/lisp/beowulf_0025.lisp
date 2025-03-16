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
 :text "Nous restions tous suspendus aux nouvelles que ma grand’mère allait
nous apporter de l’ennemi, comme si on eût pu hésiter entre un grand
nombre possible d’assaillants, et bientôt après mon grand-père disait:
«Je reconnais la voix de Swann.» On ne le reconnaissait en effet qu’à
la voix, on distinguait mal son visage au nez busqué, aux yeux verts,
sous un haut front entouré de cheveux blonds presque roux, coiffés à
la Bressant, parce que nous gardions le moins de lumière possible au
jardin pour ne pas attirer les moustiques et j’allais, sans en avoir
l’air, dire qu’on apportât les sirops; ma grand’mère attachait
beaucoup d’importance, trouvant cela plus aimable, à ce qu’ils
n’eussent pas l’air de figurer d’une façon exceptionnelle, et pour les
visites seulement. M. Swann, quoique beaucoup plus jeune que lui,
était très lié avec mon grand-père qui avait été un des meilleurs amis
de son père, homme excellent mais singulier, chez qui, paraît-il, un
rien suffisait parfois pour interrompre les élans du cœur, changer le
cours de la pensée. J’entendais plusieurs fois par an mon grand-père
raconter à table des anecdotes toujours les mêmes sur l’attitude
qu’avait eue M. Swann le père, à la mort de sa femme qu’il avait
veillée jour et nuit. Mon grand-père qui ne l’avait pas vu depuis
longtemps était accouru auprès de lui dans la propriété que les Swann
possédaient aux environs de Combray, et avait réussi, pour qu’il
n’assistât pas à la mise en bière, à lui faire quitter un moment, tout
en pleurs, la chambre mortuaire. Ils firent quelques pas dans le parc
où il y avait un peu de soleil. Tout d’un coup, M. Swann prenant mon
grand-père par le bras, s’était écrié: «Ah! mon vieil ami, quel
bonheur de se promener ensemble par ce beau temps. Vous ne trouvez pas
ça joli tous ces arbres, ces aubépines et mon étang dont vous ne
m’avez jamais félicité? Vous avez l’air comme un bonnet de nuit.
Sentez-vous ce petit vent? Ah! on a beau dire, la vie a du bon tout de
même, mon cher Amédée!» Brusquement le souvenir de sa femme morte lui
revint, et trouvant sans doute trop compliqué de chercher comment il
avait pu à un pareil moment se laisser aller à un mouvement de joie,
il se contenta, par un geste qui lui était familier chaque fois qu’une
question ardue se présentait à son esprit, de passer la main sur son
front, d’essuyer ses yeux et les verres de son lorgnon. Il ne put
pourtant pas se consoler de la mort de sa femme, mais pendant les deux
années qu’il lui survécut, il disait à mon grand-père: «C’est drôle,
je pense très souvent à ma pauvre femme, mais je ne peux y penser
beaucoup à la fois.» «Souvent, mais peu à la fois, comme le pauvre
père Swann», était devenu une des phrases favorites de mon grand-père
qui la prononçait à propos des choses les plus différentes. Il
m’aurait paru que ce père de Swann était un monstre, si mon grand-père
que je considérais comme meilleur juge et dont la sentence faisant
jurisprudence pour moi, m’a souvent servi dans la suite à absoudre des
fautes que j’aurais été enclin à condamner, ne s’était récrié: «Mais
comment? c’était un cœur d’or!»"
 :tokens 544
 :processed-at "2025-03-16T02:18:13.796147"
 :entities (list
  (entity :text "Nous" :label "ORG" :start 0 :end 4) (entity :text "Swann.»" :label "ORG" :start 233 :end 240) (entity :text "Bressant," :label "ORG" :start 420 :end 429) (entity :text "Swann," :label "ORG" :start 774 :end 780) (entity :text "Swann" :label "ORG" :start 1178 :end 1183) (entity :text "Swann" :label "ORG" :start 1357 :end 1362) (entity :text "Combray," :label "ORG" :start 1391 :end 1399) (entity :text "Tout" :label "ORG" :start 1601 :end 1605) (entity :text "Swann" :label "ORG" :start 1620 :end 1625) (entity :text "«Ah!" :label "ORG" :start 1677 :end 1681) (entity :text "Vous" :label "ORG" :start 1753 :end 1757) (entity :text "Vous" :label "ORG" :start 1862 :end 1866) (entity :text "Brusquement" :label "ORG" :start 1998 :end 2009) (entity :text "«Souvent," :label "ORG" :start 2615 :end 2624) (entity :text "Swann»," :label "ORG" :start 2666 :end 2673) (entity :text "Swann" :label "ORG" :start 2823 :end 2828) (entity :text "«Mais" :label "ORG" :start 3066 :end 3071)
 )
 :sentences (list
  (sentence :text "Nous restions tous suspendus aux nouvelles que ma grand’mère allait
nous apporter de l’ennemi, comme si on eût pu hésiter entre un grand
nombre possible d’assaillants, et bientôt après mon grand-père disait:
«Je reconnais la voix de Swann" :start 0 :end 238) (sentence :text "» On ne le reconnaissait en effet qu’à
la voix, on distinguait mal son visage au nez busqué, aux yeux verts,
sous un haut front entouré de cheveux blonds presque roux, coiffés à
la Bressant, parce que nous gardions le moins de lumière possible au
jardin pour ne pas attirer les moustiques et j’allais, sans en avoir
l’air, dire qu’on apportât les sirops; ma grand’mère attachait
beaucoup d’importance, trouvant cela plus aimable, à ce qu’ils
n’eussent pas l’air de figurer d’une façon exceptionnelle, et pour les
visites seulement" :start 239 :end 769) (sentence :text "M" :start 770 :end 772) (sentence :text "Swann, quoique beaucoup plus jeune que lui,
était très lié avec mon grand-père qui avait été un des meilleurs amis
de son père, homme excellent mais singulier, chez qui, paraît-il, un
rien suffisait parfois pour interrompre les élans du cœur, changer le
cours de la pensée" :start 773 :end 1046) (sentence :text "J’entendais plusieurs fois par an mon grand-père
raconter à table des anecdotes toujours les mêmes sur l’attitude
qu’avait eue M" :start 1047 :end 1176) (sentence :text "Swann le père, à la mort de sa femme qu’il avait
veillée jour et nuit" :start 1177 :end 1247) (sentence :text "Mon grand-père qui ne l’avait pas vu depuis
longtemps était accouru auprès de lui dans la propriété que les Swann
possédaient aux environs de Combray, et avait réussi, pour qu’il
n’assistât pas à la mise en bière, à lui faire quitter un moment, tout
en pleurs, la chambre mortuaire" :start 1248 :end 1530) (sentence :text "Ils firent quelques pas dans le parc
où il y avait un peu de soleil" :start 1531 :end 1599) (sentence :text "Tout d’un coup, M" :start 1600 :end 1618) (sentence :text "Swann prenant mon
grand-père par le bras, s’était écrié: «Ah! mon vieil ami, quel
bonheur de se promener ensemble par ce beau temps" :start 1619 :end 1751) (sentence :text "Vous ne trouvez pas
ça joli tous ces arbres, ces aubépines et mon étang dont vous ne
m’avez jamais félicité? Vous avez l’air comme un bonnet de nuit" :start 1752 :end 1901) (sentence :text "Sentez-vous ce petit vent? Ah! on a beau dire, la vie a du bon tout de
même, mon cher Amédée!» Brusquement le souvenir de sa femme morte lui
revint, et trouvant sans doute trop compliqué de chercher comment il
avait pu à un pareil moment se laisser aller à un mouvement de joie,
il se contenta, par un geste qui lui était familier chaque fois qu’une
question ardue se présentait à son esprit, de passer la main sur son
front, d’essuyer ses yeux et les verres de son lorgnon" :start 1902 :end 2376) (sentence :text "Il ne put
pourtant pas se consoler de la mort de sa femme, mais pendant les deux
années qu’il lui survécut, il disait à mon grand-père: «C’est drôle,
je pense très souvent à ma pauvre femme, mais je ne peux y penser
beaucoup à la fois" :start 2377 :end 2612) (sentence :text "» «Souvent, mais peu à la fois, comme le pauvre
père Swann», était devenu une des phrases favorites de mon grand-père
qui la prononçait à propos des choses les plus différentes" :start 2613 :end 2789) (sentence :text "Il
m’aurait paru que ce père de Swann était un monstre, si mon grand-père
que je considérais comme meilleur juge et dont la sentence faisant
jurisprudence pour moi, m’a souvent servi dans la suite à absoudre des
fautes que j’aurais été enclin à condamner, ne s’était récrié: «Mais
comment? c’était un cœur d’or!»" :start 2790 :end 3103)
 ))