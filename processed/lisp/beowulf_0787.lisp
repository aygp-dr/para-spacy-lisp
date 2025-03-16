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
 :text "Mais d’autres fois au contraire,--Odette était sur le point de partir
en voyage,--c’était après quelque petite querelle dont il choisissait
le prétexte, qu’il se résolvait à ne pas lui écrire et à ne pas la
revoir avant son retour, donnant ainsi les apparences, et demandant le
bénéfice d’une grande brouille, qu’elle croirait peut-être définitive,
à une séparation dont la plus longue part était inévitable du fait du
voyage et qu’il faisait commencer seulement un peu plus tôt. Déjà il
se figurait Odette inquiète, affligée, de n’avoir reçu ni visite ni
lettre et cette image, en calmant sa jalousie, lui rendait facile de
se déshabituer de la voir. Sans doute, par moments, tout au bout de
son esprit où sa résolution la refoulait grâce à toute la longueur
interposée des trois semaines de séparation acceptée, c’était avec
plaisir qu’il considérait l’idée qu’il reverrait Odette à son retour:
mais c’était aussi avec si peu d’impatience qu’il commençait à se
demander s’il ne doublerait pas volontairement la durée d’une
abstinence si facile. Elle ne datait encore que de trois jours, temps
beaucoup moins long que celui qu’il avait souvent passé en ne voyant
pas Odette, et sans l’avoir comme maintenant prémédité. Et pourtant
voici qu’une légère contrariété ou un malaise physique,--en l’incitant
à considérer le moment présent comme un moment exceptionnel, en dehors
de la règle, où la sagesse même admettrait d’accueillir l’apaisement
qu’apporte un plaisir et de donner congé, jusqu’à la reprise utile de
l’effort, à la volonté--suspendait l’action de celle-ci qui cessait
d’exercer sa compression; ou, moins que cela, le souvenir d’un
renseignement qu’il avait oublié de demander à Odette, si elle avait
décidé la couleur dont elle voulait faire repeindre sa voiture, ou
pour une certaine valeur de bourse, si c’était des actions ordinaires
ou privilégiées qu’elle désirait acquérir (c’était très joli de lui
montrer qu’il pouvait rester sans la voir, mais si après ça la
peinture était à refaire ou si les actions ne donnaient pas de
dividende, il serait bien avancé), voici que comme un caoutchouc tendu
qu’on lâche ou comme l’air dans une machine pneumatique qu’on
entr’ouvre, l’idée de la revoir, des lointains où elle était
maintenue, revenait d’un bond dans le champ du présent et des
possibilités immédiates."
 :tokens 372
 :processed-at "2025-03-16T02:18:14.618440"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Déjà" :label "ORG" :start 480 :end 484) (entity :text "Odette" :label "ORG" :start 500 :end 506) (entity :text "Sans" :label "ORG" :start 652 :end 656) (entity :text "Odette" :label "ORG" :start 876 :end 882) (entity :text "Elle" :label "ORG" :start 1047 :end 1051) (entity :text "Odette," :label "ORG" :start 1168 :end 1175) (entity :text "Odette," :label "ORG" :start 1691 :end 1698)
 )
 :sentences (list
  (sentence :text "Mais d’autres fois au contraire,--Odette était sur le point de partir
en voyage,--c’était après quelque petite querelle dont il choisissait
le prétexte, qu’il se résolvait à ne pas lui écrire et à ne pas la
revoir avant son retour, donnant ainsi les apparences, et demandant le
bénéfice d’une grande brouille, qu’elle croirait peut-être définitive,
à une séparation dont la plus longue part était inévitable du fait du
voyage et qu’il faisait commencer seulement un peu plus tôt" :start 0 :end 478) (sentence :text "Déjà il
se figurait Odette inquiète, affligée, de n’avoir reçu ni visite ni
lettre et cette image, en calmant sa jalousie, lui rendait facile de
se déshabituer de la voir" :start 479 :end 650) (sentence :text "Sans doute, par moments, tout au bout de
son esprit où sa résolution la refoulait grâce à toute la longueur
interposée des trois semaines de séparation acceptée, c’était avec
plaisir qu’il considérait l’idée qu’il reverrait Odette à son retour:
mais c’était aussi avec si peu d’impatience qu’il commençait à se
demander s’il ne doublerait pas volontairement la durée d’une
abstinence si facile" :start 651 :end 1045) (sentence :text "Elle ne datait encore que de trois jours, temps
beaucoup moins long que celui qu’il avait souvent passé en ne voyant
pas Odette, et sans l’avoir comme maintenant prémédité" :start 1046 :end 1218) (sentence :text "Et pourtant
voici qu’une légère contrariété ou un malaise physique,--en l’incitant
à considérer le moment présent comme un moment exceptionnel, en dehors
de la règle, où la sagesse même admettrait d’accueillir l’apaisement
qu’apporte un plaisir et de donner congé, jusqu’à la reprise utile de
l’effort, à la volonté--suspendait l’action de celle-ci qui cessait
d’exercer sa compression; ou, moins que cela, le souvenir d’un
renseignement qu’il avait oublié de demander à Odette, si elle avait
décidé la couleur dont elle voulait faire repeindre sa voiture, ou
pour une certaine valeur de bourse, si c’était des actions ordinaires
ou privilégiées qu’elle désirait acquérir (c’était très joli de lui
montrer qu’il pouvait rester sans la voir, mais si après ça la
peinture était à refaire ou si les actions ne donnaient pas de
dividende, il serait bien avancé), voici que comme un caoutchouc tendu
qu’on lâche ou comme l’air dans une machine pneumatique qu’on
entr’ouvre, l’idée de la revoir, des lointains où elle était
maintenue, revenait d’un bond dans le champ du présent et des
possibilités immédiates" :start 1219 :end 2323)
 ))