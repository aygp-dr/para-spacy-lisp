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
 :text "Mais à ce nom de Guermantes, je vis au milieu des yeux bleus de notre
ami se ficher une petite encoche brune comme s’ils venaient d’être
percés par une pointe invisible, tandis que le reste de la prunelle
réagissait en sécrétant des flots d’azur. Le cerne de sa paupière
noircit, s’abaissa. Et sa bouche marquée d’un pli amer se ressaisissant
plus vite sourit, tandis que le regard restait douloureux, comme celui
d’un beau martyr dont le corps est hérissé de flèches: «Non, je ne les
connais pas», dit-il, mais au lieu de donner à un renseignement aussi
simple, à une réponse aussi peu surprenante le ton naturel et courant
qui convenait, il le débita en appuyant sur les mots, en s’inclinant,
en saluant de la tête, à la fois avec l’insistance qu’on apporte, pour
être cru, à une affirmation invraisemblable,--comme si ce fait qu’il ne
connût pas les Guermantes ne pouvait être l’effet que d’un hasard
singulier--et aussi avec l’emphase de quelqu’un qui, ne pouvant pas
taire une situation qui lui est pénible, préfère la proclamer pour
donner aux autres l’idée que l’aveu qu’il fait ne lui cause aucun
embarras, est facile, agréable, spontané, que la situation
elle-même--l’absence de relations avec les Guermantes,--pourrait bien
avoir été non pas subie, mais voulue par lui, résulter de quelque
tradition de famille, principe de morale ou vœu mystique lui
interdisant nommément la fréquentation des Guermantes. «Non,
reprit-il, expliquant par ses paroles sa propre intonation, non, je ne
les connais pas, je n’ai jamais voulu, j’ai toujours tenu à
sauvegarder ma pleine indépendance; au fond je suis une tête jacobine,
vous le savez. Beaucoup de gens sont venus à la rescousse, on me
disait que j’avais tort de ne pas aller à Guermantes, que je me
donnais l’air d’un malotru, d’un vieil ours. Mais voilà une réputation
qui n’est pas pour m’effrayer, elle est si vraie! Au fond, je n’aime
plus au monde que quelques églises, deux ou trois livres, à peine
davantage de tableaux, et le clair de lune quand la brise de votre
jeunesse apporte jusqu’à moi l’odeur des parterres que mes vieilles
prunelles ne distinguent plus.» Je ne comprenais pas bien que pour ne
pas aller chez des gens qu’on ne connaît pas, il fût nécessaire de
tenir à son indépendance, et en quoi cela pouvait vous donner l’air
d’un sauvage ou d’un ours. Mais ce que je comprenais c’est que
Legrandin n’était pas tout à fait véridique quand il disait n’aimer
que les églises, le clair de lune et la jeunesse; il aimait beaucoup
les gens des châteaux et se trouvait pris devant eux d’une si grande
peur de leur déplaire qu’il n’osait pas leur laisser voir qu’il avait
pour amis des bourgeois, des fils de notaires ou d’agents de change,
préférant, si la vérité devait se découvrir, que ce fût en son
absence, loin de lui et «par défaut»; il était snob. Sans doute il ne
disait jamais rien de tout cela dans le langage que mes parents et
moi-même nous aimions tant. Et si je demandais: «Connaissez-vous les
Guermantes?», Legrandin le causeur répondait: «Non, je n’ai jamais
voulu les connaître.» Malheureusement il ne le répondait qu’en second,
car un autre Legrandin qu’il cachait soigneusement au fond de lui,
qu’il ne montrait pas, parce que ce Legrandin-là savait sur le nôtre,
sur son snobisme, des histoires compromettantes, un autre Legrandin
avait déjà répondu par la blessure du regard, par le rictus de la
bouche, par la gravité excessive du ton de la réponse, par les mille
flèches dont notre Legrandin s’était trouvé en un instant lardé et
alangui, comme un saint Sébastien du snobisme: «Hélas! que vous me
faites mal, non je ne connais pas les Guermantes, ne réveillez pas la
grande douleur de ma vie.» Et comme ce Legrandin enfant terrible, ce
Legrandin maître chanteur, s’il n’avait pas le joli langage de
l’autre, avait le verbe infiniment plus prompt, composé de ce qu’on
appelle «réflexes», quand Legrandin le causeur voulait lui imposer
silence, l’autre avait déjà parlé et notre ami avait beau se désoler
de la mauvaise impression que les révélations de son alter ego avaient
dû produire, il ne pouvait qu’entreprendre de la pallier."
 :tokens 697
 :processed-at "2025-03-16T02:18:14.082159"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Guermantes," :label "ORG" :start 17 :end 28) (entity :text "«Non," :label "ORG" :start 469 :end 474) (entity :text "Guermantes" :label "ORG" :start 853 :end 863) (entity :text "Guermantes." :label "ORG" :start 1404 :end 1415) (entity :text "«Non," :label "ORG" :start 1416 :end 1421) (entity :text "Beaucoup" :label "ORG" :start 1639 :end 1647) (entity :text "Guermantes," :label "ORG" :start 1731 :end 1742) (entity :text "Mais" :label "ORG" :start 1798 :end 1802) (entity :text "Mais" :label "ORG" :start 2326 :end 2330) (entity :text "Legrandin" :label "ORG" :start 2362 :end 2371) (entity :text "Sans" :label "ORG" :start 2823 :end 2827) (entity :text "Guermantes?»," :label "ORG" :start 2976 :end 2989) (entity :text "Legrandin" :label "ORG" :start 2990 :end 2999) (entity :text "«Non," :label "ORG" :start 3022 :end 3027) (entity :text "Malheureusement" :label "ORG" :start 3065 :end 3080) (entity :text "Legrandin" :label "ORG" :start 3127 :end 3136) (entity :text "Legrandin" :label "ORG" :start 3217 :end 3226) (entity :text "Legrandin" :label "ORG" :start 3309 :end 3318) (entity :text "Sébastien" :label "ORG" :start 3545 :end 3554) (entity :text "«Hélas!" :label "ORG" :start 3568 :end 3575) (entity :text "Guermantes," :label "ORG" :start 3626 :end 3637) (entity :text "Legrandin" :label "ORG" :start 3697 :end 3706) (entity :text "Legrandin" :label "ORG" :start 3727 :end 3736) (entity :text "Legrandin" :label "ORG" :start 3884 :end 3893)
 )
 :sentences (list
  (sentence :text "Mais à ce nom de Guermantes, je vis au milieu des yeux bleus de notre
ami se ficher une petite encoche brune comme s’ils venaient d’être
percés par une pointe invisible, tandis que le reste de la prunelle
réagissait en sécrétant des flots d’azur" :start 0 :end 245) (sentence :text "Le cerne de sa paupière
noircit, s’abaissa" :start 246 :end 289) (sentence :text "Et sa bouche marquée d’un pli amer se ressaisissant
plus vite sourit, tandis que le regard restait douloureux, comme celui
d’un beau martyr dont le corps est hérissé de flèches: «Non, je ne les
connais pas», dit-il, mais au lieu de donner à un renseignement aussi
simple, à une réponse aussi peu surprenante le ton naturel et courant
qui convenait, il le débita en appuyant sur les mots, en s’inclinant,
en saluant de la tête, à la fois avec l’insistance qu’on apporte, pour
être cru, à une affirmation invraisemblable,--comme si ce fait qu’il ne
connût pas les Guermantes ne pouvait être l’effet que d’un hasard
singulier--et aussi avec l’emphase de quelqu’un qui, ne pouvant pas
taire une situation qui lui est pénible, préfère la proclamer pour
donner aux autres l’idée que l’aveu qu’il fait ne lui cause aucun
embarras, est facile, agréable, spontané, que la situation
elle-même--l’absence de relations avec les Guermantes,--pourrait bien
avoir été non pas subie, mais voulue par lui, résulter de quelque
tradition de famille, principe de morale ou vœu mystique lui
interdisant nommément la fréquentation des Guermantes" :start 290 :end 1414) (sentence :text "«Non,
reprit-il, expliquant par ses paroles sa propre intonation, non, je ne
les connais pas, je n’ai jamais voulu, j’ai toujours tenu à
sauvegarder ma pleine indépendance; au fond je suis une tête jacobine,
vous le savez" :start 1415 :end 1637) (sentence :text "Beaucoup de gens sont venus à la rescousse, on me
disait que j’avais tort de ne pas aller à Guermantes, que je me
donnais l’air d’un malotru, d’un vieil ours" :start 1638 :end 1796) (sentence :text "Mais voilà une réputation
qui n’est pas pour m’effrayer, elle est si vraie! Au fond, je n’aime
plus au monde que quelques églises, deux ou trois livres, à peine
davantage de tableaux, et le clair de lune quand la brise de votre
jeunesse apporte jusqu’à moi l’odeur des parterres que mes vieilles
prunelles ne distinguent plus" :start 1797 :end 2123) (sentence :text "» Je ne comprenais pas bien que pour ne
pas aller chez des gens qu’on ne connaît pas, il fût nécessaire de
tenir à son indépendance, et en quoi cela pouvait vous donner l’air
d’un sauvage ou d’un ours" :start 2124 :end 2324) (sentence :text "Mais ce que je comprenais c’est que
Legrandin n’était pas tout à fait véridique quand il disait n’aimer
que les églises, le clair de lune et la jeunesse; il aimait beaucoup
les gens des châteaux et se trouvait pris devant eux d’une si grande
peur de leur déplaire qu’il n’osait pas leur laisser voir qu’il avait
pour amis des bourgeois, des fils de notaires ou d’agents de change,
préférant, si la vérité devait se découvrir, que ce fût en son
absence, loin de lui et «par défaut»; il était snob" :start 2325 :end 2821) (sentence :text "Sans doute il ne
disait jamais rien de tout cela dans le langage que mes parents et
moi-même nous aimions tant" :start 2822 :end 2933) (sentence :text "Et si je demandais: «Connaissez-vous les
Guermantes?», Legrandin le causeur répondait: «Non, je n’ai jamais
voulu les connaître" :start 2934 :end 3062) (sentence :text "» Malheureusement il ne le répondait qu’en second,
car un autre Legrandin qu’il cachait soigneusement au fond de lui,
qu’il ne montrait pas, parce que ce Legrandin-là savait sur le nôtre,
sur son snobisme, des histoires compromettantes, un autre Legrandin
avait déjà répondu par la blessure du regard, par le rictus de la
bouche, par la gravité excessive du ton de la réponse, par les mille
flèches dont notre Legrandin s’était trouvé en un instant lardé et
alangui, comme un saint Sébastien du snobisme: «Hélas! que vous me
faites mal, non je ne connais pas les Guermantes, ne réveillez pas la
grande douleur de ma vie" :start 3063 :end 3682) (sentence :text "» Et comme ce Legrandin enfant terrible, ce
Legrandin maître chanteur, s’il n’avait pas le joli langage de
l’autre, avait le verbe infiniment plus prompt, composé de ce qu’on
appelle «réflexes», quand Legrandin le causeur voulait lui imposer
silence, l’autre avait déjà parlé et notre ami avait beau se désoler
de la mauvaise impression que les révélations de son alter ego avaient
dû produire, il ne pouvait qu’entreprendre de la pallier" :start 3683 :end 4121)
 ))