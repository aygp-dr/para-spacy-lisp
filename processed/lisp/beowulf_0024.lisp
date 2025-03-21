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
 :text "Ma seule consolation, quand je montais me coucher, était que maman
viendrait m’embrasser quand je serais dans mon lit. Mais ce bonsoir
durait si peu de temps, elle redescendait si vite, que le moment où je
l’entendais monter, puis où passait dans le couloir à double porte le
bruit léger de sa robe de jardin en mousseline bleue, à laquelle
pendaient de petits cordons de paille tressée, était pour moi un
moment douloureux. Il annonçait celui qui allait le suivre, où elle
m’aurait quitté, où elle serait redescendue. De sorte que ce bonsoir
que j’aimais tant, j’en arrivais à souhaiter qu’il vînt le plus tard
possible, à ce que se prolongeât le temps de répit où maman n’était
pas encore venue. Quelquefois quand, après m’avoir embrassé, elle
ouvrait la porte pour partir, je voulais la rappeler, lui dire
«embrasse-moi une fois encore», mais je savais qu’aussitôt elle aurait
son visage fâché, car la concession qu’elle faisait à ma tristesse et
à mon agitation en montant m’embrasser, en m’apportant ce baiser de
paix, agaçait mon père qui trouvait ces rites absurdes, et elle eût
voulu tâcher de m’en faire perdre le besoin, l’habitude, bien loin de
me laisser prendre celle de lui demander, quand elle était déjà sur le
pas de la porte, un baiser de plus. Or la voir fâchée détruisait tout
le calme qu’elle m’avait apporté un instant avant, quand elle avait
penché vers mon lit sa figure aimante, et me l’avait tendue comme une
hostie pour une communion de paix où mes lèvres puiseraient sa
présence réelle et le pouvoir de m’endormir. Mais ces soirs-là, où
maman en somme restait si peu de temps dans ma chambre, étaient doux
encore en comparaison de ceux où il y avait du monde à dîner et où, à
cause de cela, elle ne montait pas me dire bonsoir. Le monde se
bornait habituellement à M. Swann, qui, en dehors de quelques
étrangers de passage, était à peu près la seule personne qui vînt chez
nous à Combray, quelquefois pour dîner en voisin (plus rarement depuis
qu’il avait fait ce mauvais mariage, parce que mes parents ne
voulaient pas recevoir sa femme), quelquefois après le dîner, à
l’improviste. Les soirs où, assis devant la maison sous le grand
marronnier, autour de la table de fer, nous entendions au bout du
jardin, non pas le grelot profus et criard qui arrosait, qui
étourdissait au passage de son bruit ferrugineux, intarissable et
glacé, toute personne de la maison qui le déclenchait en entrant «sans
sonner», mais le double tintement timide, ovale et doré de la
clochette pour les étrangers, tout le monde aussitôt se demandait:
«Une visite, qui cela peut-il être?» mais on savait bien que cela ne
pouvait être que M. Swann; ma grand’tante parlant à haute voix, pour
prêcher d’exemple, sur un ton qu’elle s’efforçait de rendre naturel,
disait de ne pas chuchoter ainsi; que rien n’est plus désobligeant
pour une personne qui arrive et à qui cela fait croire qu’on est en
train de dire des choses qu’elle ne doit pas entendre; et on envoyait
en éclaireur ma grand’mère, toujours heureuse d’avoir un prétexte pour
faire un tour de jardin de plus, et qui en profitait pour arracher
subrepticement au passage quelques tuteurs de rosiers afin de rendre
aux roses un peu de naturel, comme une mère qui, pour les faire
bouffer, passe la main dans les cheveux de son fils que le coiffeur a
trop aplatis."
 :tokens 576
 :processed-at "2025-03-16T02:18:13.794362"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 119 :end 123) (entity :text "Quelquefois" :label "ORG" :start 698 :end 709) (entity :text "Mais" :label "ORG" :start 1543 :end 1547) (entity :text "Swann," :label "ORG" :start 1796 :end 1802) (entity :text "Combray," :label "ORG" :start 1908 :end 1916) (entity :text "«Une" :label "ORG" :start 2556 :end 2560) (entity :text "Swann;" :label "ORG" :start 2645 :end 2651)
 )
 :sentences (list
  (sentence :text "Ma seule consolation, quand je montais me coucher, était que maman
viendrait m’embrasser quand je serais dans mon lit" :start 0 :end 117) (sentence :text "Mais ce bonsoir
durait si peu de temps, elle redescendait si vite, que le moment où je
l’entendais monter, puis où passait dans le couloir à double porte le
bruit léger de sa robe de jardin en mousseline bleue, à laquelle
pendaient de petits cordons de paille tressée, était pour moi un
moment douloureux" :start 118 :end 423) (sentence :text "Il annonçait celui qui allait le suivre, où elle
m’aurait quitté, où elle serait redescendue" :start 424 :end 517) (sentence :text "De sorte que ce bonsoir
que j’aimais tant, j’en arrivais à souhaiter qu’il vînt le plus tard
possible, à ce que se prolongeât le temps de répit où maman n’était
pas encore venue" :start 518 :end 696) (sentence :text "Quelquefois quand, après m’avoir embrassé, elle
ouvrait la porte pour partir, je voulais la rappeler, lui dire
«embrasse-moi une fois encore», mais je savais qu’aussitôt elle aurait
son visage fâché, car la concession qu’elle faisait à ma tristesse et
à mon agitation en montant m’embrasser, en m’apportant ce baiser de
paix, agaçait mon père qui trouvait ces rites absurdes, et elle eût
voulu tâcher de m’en faire perdre le besoin, l’habitude, bien loin de
me laisser prendre celle de lui demander, quand elle était déjà sur le
pas de la porte, un baiser de plus" :start 697 :end 1261) (sentence :text "Or la voir fâchée détruisait tout
le calme qu’elle m’avait apporté un instant avant, quand elle avait
penché vers mon lit sa figure aimante, et me l’avait tendue comme une
hostie pour une communion de paix où mes lèvres puiseraient sa
présence réelle et le pouvoir de m’endormir" :start 1262 :end 1541) (sentence :text "Mais ces soirs-là, où
maman en somme restait si peu de temps dans ma chambre, étaient doux
encore en comparaison de ceux où il y avait du monde à dîner et où, à
cause de cela, elle ne montait pas me dire bonsoir" :start 1542 :end 1754) (sentence :text "Le monde se
bornait habituellement à M" :start 1755 :end 1794) (sentence :text "Swann, qui, en dehors de quelques
étrangers de passage, était à peu près la seule personne qui vînt chez
nous à Combray, quelquefois pour dîner en voisin (plus rarement depuis
qu’il avait fait ce mauvais mariage, parce que mes parents ne
voulaient pas recevoir sa femme), quelquefois après le dîner, à
l’improviste" :start 1795 :end 2110) (sentence :text "Les soirs où, assis devant la maison sous le grand
marronnier, autour de la table de fer, nous entendions au bout du
jardin, non pas le grelot profus et criard qui arrosait, qui
étourdissait au passage de son bruit ferrugineux, intarissable et
glacé, toute personne de la maison qui le déclenchait en entrant «sans
sonner», mais le double tintement timide, ovale et doré de la
clochette pour les étrangers, tout le monde aussitôt se demandait:
«Une visite, qui cela peut-il être?» mais on savait bien que cela ne
pouvait être que M" :start 2111 :end 2643) (sentence :text "Swann; ma grand’tante parlant à haute voix, pour
prêcher d’exemple, sur un ton qu’elle s’efforçait de rendre naturel,
disait de ne pas chuchoter ainsi; que rien n’est plus désobligeant
pour une personne qui arrive et à qui cela fait croire qu’on est en
train de dire des choses qu’elle ne doit pas entendre; et on envoyait
en éclaireur ma grand’mère, toujours heureuse d’avoir un prétexte pour
faire un tour de jardin de plus, et qui en profitait pour arracher
subrepticement au passage quelques tuteurs de rosiers afin de rendre
aux roses un peu de naturel, comme une mère qui, pour les faire
bouffer, passe la main dans les cheveux de son fils que le coiffeur a
trop aplatis" :start 2644 :end 3321)
 ))