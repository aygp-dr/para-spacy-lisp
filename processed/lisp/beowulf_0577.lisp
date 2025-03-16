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
 :text "Certes, elle avait la prétention d’aimer les «antiquités» et prenait
un air ravi et fin pour dire qu’elle adorait passer toute une journée
à «bibeloter», à chercher «du bric-à-brac», des choses «du temps».
Bien qu’elle s’entêtât dans une sorte de point d’honneur (et semblât
pratiquer quelque précepte familial) en ne répondant jamais aux
questions et en ne «rendant pas de comptes» sur l’emploi de ses
journées, elle parla une fois à Swann d’une amie qui l’avait invitée
et chez qui tout était «de l’époque». Mais Swann ne put arriver à lui
faire dire quelle était cette époque. Pourtant, après avoir réfléchi,
elle répondit que c’était «moyenâgeux». Elle entendait par là qu’il y
avait des boiseries. Quelque temps après, elle lui reparla de son amie
et ajouta, sur le ton hésitant et de l’air entendu dont on cite
quelqu’un avec qui on a dîné la veille et dont on n’avait jamais
entendu le nom, mais que vos amphitryons avaient l’air de considérer
comme quelqu’un de si célèbre qu’on espère que l’interlocuteur saura
bien de qui vous voulez parler: «Elle a une salle à manger... du...
dix-huitième!» Elle trouvait du reste cela affreux, nu, comme si la
maison n’était pas finie, les femmes y paraissaient affreuses et la
mode n’en prendrait jamais. Enfin, une troisième fois, elle en reparla
et montra à Swann l’adresse de l’homme qui avait fait cette salle à
manger et qu’elle avait envie de faire venir, quand elle aurait de
l’argent pour voir s’il ne pourrait pas lui en faire, non pas certes
une pareille, mais celle qu’elle rêvait et que, malheureusement, les
dimensions de son petit hôtel ne comportaient pas, avec de hauts
dressoirs, des meubles Renaissance et des cheminées comme au château
de Blois. Ce jour-là, elle laissa échapper devant Swann ce qu’elle
pensait de son habitation du quai d’Orléans; comme il avait critiqué
que l’amie d’Odette donnât non pas dans le Louis XVI, car, disait-il,
bien que cela ne se fasse pas, cela peut être charmant, mais dans le
faux ancien: «Tu ne voudrais pas qu’elle vécût comme toi au milieu de
meubles cassés et de tapis usés», lui dit-elle, le respect humain de
la bourgeoise l’emportant encore chez elle sur le dilettantisme de la
cocotte."
 :tokens 371
 :processed-at "2025-03-16T02:18:14.403017"
 :entities (list
  (entity :text "Certes," :label "ORG" :start 0 :end 7) (entity :text "Bien" :label "ORG" :start 206 :end 210) (entity :text "Swann" :label "ORG" :start 435 :end 440) (entity :text "Mais" :label "ORG" :start 510 :end 514) (entity :text "Swann" :label "ORG" :start 515 :end 520) (entity :text "Pourtant," :label "ORG" :start 580 :end 589) (entity :text "Elle" :label "ORG" :start 652 :end 656) (entity :text "Quelque" :label "ORG" :start 703 :end 710) (entity :text "«Elle" :label "ORG" :start 1052 :end 1057) (entity :text "Elle" :label "ORG" :start 1103 :end 1107) (entity :text "Enfin," :label "ORG" :start 1252 :end 1258) (entity :text "Swann" :label "ORG" :start 1307 :end 1312) (entity :text "Renaissance" :label "ORG" :start 1656 :end 1667) (entity :text "Blois." :label "ORG" :start 1705 :end 1711) (entity :text "Swann" :label "ORG" :start 1752 :end 1757) (entity :text "Louis" :label "ORG" :start 1881 :end 1886)
 )
 :sentences (list
  (sentence :text "Certes, elle avait la prétention d’aimer les «antiquités» et prenait
un air ravi et fin pour dire qu’elle adorait passer toute une journée
à «bibeloter», à chercher «du bric-à-brac», des choses «du temps»" :start 0 :end 204) (sentence :text "Bien qu’elle s’entêtât dans une sorte de point d’honneur (et semblât
pratiquer quelque précepte familial) en ne répondant jamais aux
questions et en ne «rendant pas de comptes» sur l’emploi de ses
journées, elle parla une fois à Swann d’une amie qui l’avait invitée
et chez qui tout était «de l’époque»" :start 205 :end 508) (sentence :text "Mais Swann ne put arriver à lui
faire dire quelle était cette époque" :start 509 :end 578) (sentence :text "Pourtant, après avoir réfléchi,
elle répondit que c’était «moyenâgeux»" :start 579 :end 650) (sentence :text "Elle entendait par là qu’il y
avait des boiseries" :start 651 :end 701) (sentence :text "Quelque temps après, elle lui reparla de son amie
et ajouta, sur le ton hésitant et de l’air entendu dont on cite
quelqu’un avec qui on a dîné la veille et dont on n’avait jamais
entendu le nom, mais que vos amphitryons avaient l’air de considérer
comme quelqu’un de si célèbre qu’on espère que l’interlocuteur saura
bien de qui vous voulez parler: «Elle a une salle à manger" :start 702 :end 1078) (sentence :text "du" :start 1081 :end 1084) (sentence :text "dix-huitième!» Elle trouvait du reste cela affreux, nu, comme si la
maison n’était pas finie, les femmes y paraissaient affreuses et la
mode n’en prendrait jamais" :start 1087 :end 1250) (sentence :text "Enfin, une troisième fois, elle en reparla
et montra à Swann l’adresse de l’homme qui avait fait cette salle à
manger et qu’elle avait envie de faire venir, quand elle aurait de
l’argent pour voir s’il ne pourrait pas lui en faire, non pas certes
une pareille, mais celle qu’elle rêvait et que, malheureusement, les
dimensions de son petit hôtel ne comportaient pas, avec de hauts
dressoirs, des meubles Renaissance et des cheminées comme au château
de Blois" :start 1251 :end 1710) (sentence :text "Ce jour-là, elle laissa échapper devant Swann ce qu’elle
pensait de son habitation du quai d’Orléans; comme il avait critiqué
que l’amie d’Odette donnât non pas dans le Louis XVI, car, disait-il,
bien que cela ne se fasse pas, cela peut être charmant, mais dans le
faux ancien: «Tu ne voudrais pas qu’elle vécût comme toi au milieu de
meubles cassés et de tapis usés», lui dit-elle, le respect humain de
la bourgeoise l’emportant encore chez elle sur le dilettantisme de la
cocotte" :start 1711 :end 2193)
 ))