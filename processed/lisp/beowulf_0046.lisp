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
 :text "Maman s’assit à côté de mon lit; elle avait pris François le Champi à
qui sa couverture rougeâtre et son titre incompréhensible, donnaient
pour moi une personnalité distincte et un attrait mystérieux. Je
n’avais jamais lu encore de vrais romans. J’avais entendu dire que
George Sand était le type du romancier. Cela me disposait déjà à
imaginer dans François le Champi quelque chose d’indéfinissable et de
délicieux. Les procédés de narration destinés à exciter la curiosité
ou l’attendrissement, certaines façons de dire qui éveillent
l’inquiétude et la mélancolie, et qu’un lecteur un peu instruit
reconnaît pour communs à beaucoup de romans, me paraissaient simples--à
moi qui considérais un livre nouveau non comme une chose ayant
beaucoup de semblables, mais comme une personne unique, n’ayant de
raison d’exister qu’en soi,--une émanation troublante de l’essence
particulière à François le Champi. Sous ces événements si journaliers,
ces choses si communes, ces mots si courants, je sentais comme une
intonation, une accentuation étrange. L’action s’engagea; elle me
parut d’autant plus obscure que dans ce temps-là, quand je lisais, je
rêvassais souvent, pendant des pages entières, à tout autre chose. Et
aux lacunes que cette distraction laissait dans le récit, s’ajoutait,
quand c’était maman qui me lisait à haute voix, qu’elle passait toutes
les scènes d’amour. Aussi tous les changements bizarres qui se
produisent dans l’attitude respective de la meunière et de l’enfant et
qui ne trouvent leur explication que dans les progrès d’un amour
naissant me paraissaient empreints d’un profond mystère dont je me
figurais volontiers que la source devait être dans ce nom inconnu et
si doux de «Champi» qui mettait sur l’enfant, qui le portait sans que
je susse pourquoi, sa couleur vive, empourprée et charmante. Si ma
mère était une lectrice infidèle c’était aussi, pour les ouvrages où
elle trouvait l’accent d’un sentiment vrai, une lectrice admirable par
le respect et la simplicité de l’interprétation, par la beauté et la
douceur du son. Même dans la vie, quand c’étaient des êtres et non des
œuvres d’art qui excitaient ainsi son attendrissement ou son
admiration, c’était touchant de voir avec quelle déférence elle
écartait de sa voix, de son geste, de ses propos, tel éclat de gaîté
qui eût pu faire mal à cette mère qui avait autrefois perdu un enfant,
tel rappel de fête, d’anniversaire, qui aurait pu faire penser ce
vieillard à son grand âge, tel propos de ménage qui aurait paru
fastidieux à ce jeune savant. De même, quand elle lisait la prose de
George Sand, qui respire toujours cette bonté, cette distinction
morale que maman avait appris de ma grand’mère à tenir pour
supérieures à tout dans la vie, et que je ne devais lui apprendre que
bien plus tard à ne pas tenir également pour supérieures à tout dans
les livres, attentive à bannir de sa voix toute petitesse, toute
affectation qui eût pu empêcher le flot puissant d’y être reçu, elle
fournissait toute la tendresse naturelle, toute l’ample douceur
qu’elles réclamaient à ces phrases qui semblaient écrites pour sa voix
et qui pour ainsi dire tenaient tout entières dans le registre de sa
sensibilité. Elle retrouvait pour les attaquer dans le ton qu’il faut,
l’accent cordial qui leur préexiste et les dicta, mais que les mots
n’indiquent pas; grâce à lui elle amortissait au passage toute crudité
dans les temps des verbes, donnait à l’imparfait et au passé défini la
douceur qu’il y a dans la bonté, la mélancolie qu’il y a dans la
tendresse, dirigeait la phrase qui finissait vers celle qui allait
commencer, tantôt pressant, tantôt ralentissant la marche des syllabes
pour les faire entrer, quoique leurs quantités fussent différentes,
dans un rythme uniforme, elle insufflait à cette prose si commune une
sorte de vie sentimentale et continue."
 :tokens 624
 :processed-at "2025-03-16T02:18:13.834373"
 :entities (list
  (entity :text "Maman" :label "ORG" :start 0 :end 5) (entity :text "François" :label "ORG" :start 49 :end 57) (entity :text "Champi" :label "ORG" :start 61 :end 67) (entity :text "George" :label "ORG" :start 271 :end 277) (entity :text "Sand" :label "ORG" :start 278 :end 282) (entity :text "Cela" :label "ORG" :start 311 :end 315) (entity :text "François" :label "ORG" :start 350 :end 358) (entity :text "Champi" :label "ORG" :start 362 :end 368) (entity :text "François" :label "ORG" :start 884 :end 892) (entity :text "Champi." :label "ORG" :start 896 :end 903) (entity :text "Sous" :label "ORG" :start 904 :end 908) (entity :text "«Champi»" :label "ORG" :start 1700 :end 1708) (entity :text "Même" :label "ORG" :start 2051 :end 2055) (entity :text "George" :label "ORG" :start 2570 :end 2576) (entity :text "Sand," :label "ORG" :start 2577 :end 2582) (entity :text "Elle" :label "ORG" :start 3185 :end 3189)
 )
 :sentences (list
  (sentence :text "Maman s’assit à côté de mon lit; elle avait pris François le Champi à
qui sa couverture rougeâtre et son titre incompréhensible, donnaient
pour moi une personnalité distincte et un attrait mystérieux" :start 0 :end 199) (sentence :text "Je
n’avais jamais lu encore de vrais romans" :start 200 :end 244) (sentence :text "J’avais entendu dire que
George Sand était le type du romancier" :start 245 :end 309) (sentence :text "Cela me disposait déjà à
imaginer dans François le Champi quelque chose d’indéfinissable et de
délicieux" :start 310 :end 415) (sentence :text "Les procédés de narration destinés à exciter la curiosité
ou l’attendrissement, certaines façons de dire qui éveillent
l’inquiétude et la mélancolie, et qu’un lecteur un peu instruit
reconnaît pour communs à beaucoup de romans, me paraissaient simples--à
moi qui considérais un livre nouveau non comme une chose ayant
beaucoup de semblables, mais comme une personne unique, n’ayant de
raison d’exister qu’en soi,--une émanation troublante de l’essence
particulière à François le Champi" :start 416 :end 902) (sentence :text "Sous ces événements si journaliers,
ces choses si communes, ces mots si courants, je sentais comme une
intonation, une accentuation étrange" :start 903 :end 1043) (sentence :text "L’action s’engagea; elle me
parut d’autant plus obscure que dans ce temps-là, quand je lisais, je
rêvassais souvent, pendant des pages entières, à tout autre chose" :start 1044 :end 1208) (sentence :text "Et
aux lacunes que cette distraction laissait dans le récit, s’ajoutait,
quand c’était maman qui me lisait à haute voix, qu’elle passait toutes
les scènes d’amour" :start 1209 :end 1372) (sentence :text "Aussi tous les changements bizarres qui se
produisent dans l’attitude respective de la meunière et de l’enfant et
qui ne trouvent leur explication que dans les progrès d’un amour
naissant me paraissaient empreints d’un profond mystère dont je me
figurais volontiers que la source devait être dans ce nom inconnu et
si doux de «Champi» qui mettait sur l’enfant, qui le portait sans que
je susse pourquoi, sa couleur vive, empourprée et charmante" :start 1373 :end 1818) (sentence :text "Si ma
mère était une lectrice infidèle c’était aussi, pour les ouvrages où
elle trouvait l’accent d’un sentiment vrai, une lectrice admirable par
le respect et la simplicité de l’interprétation, par la beauté et la
douceur du son" :start 1819 :end 2049) (sentence :text "Même dans la vie, quand c’étaient des êtres et non des
œuvres d’art qui excitaient ainsi son attendrissement ou son
admiration, c’était touchant de voir avec quelle déférence elle
écartait de sa voix, de son geste, de ses propos, tel éclat de gaîté
qui eût pu faire mal à cette mère qui avait autrefois perdu un enfant,
tel rappel de fête, d’anniversaire, qui aurait pu faire penser ce
vieillard à son grand âge, tel propos de ménage qui aurait paru
fastidieux à ce jeune savant" :start 2050 :end 2529) (sentence :text "De même, quand elle lisait la prose de
George Sand, qui respire toujours cette bonté, cette distinction
morale que maman avait appris de ma grand’mère à tenir pour
supérieures à tout dans la vie, et que je ne devais lui apprendre que
bien plus tard à ne pas tenir également pour supérieures à tout dans
les livres, attentive à bannir de sa voix toute petitesse, toute
affectation qui eût pu empêcher le flot puissant d’y être reçu, elle
fournissait toute la tendresse naturelle, toute l’ample douceur
qu’elles réclamaient à ces phrases qui semblaient écrites pour sa voix
et qui pour ainsi dire tenaient tout entières dans le registre de sa
sensibilité" :start 2530 :end 3183) (sentence :text "Elle retrouvait pour les attaquer dans le ton qu’il faut,
l’accent cordial qui leur préexiste et les dicta, mais que les mots
n’indiquent pas; grâce à lui elle amortissait au passage toute crudité
dans les temps des verbes, donnait à l’imparfait et au passé défini la
douceur qu’il y a dans la bonté, la mélancolie qu’il y a dans la
tendresse, dirigeait la phrase qui finissait vers celle qui allait
commencer, tantôt pressant, tantôt ralentissant la marche des syllabes
pour les faire entrer, quoique leurs quantités fussent différentes,
dans un rythme uniforme, elle insufflait à cette prose si commune une
sorte de vie sentimentale et continue" :start 3184 :end 3831)
 ))