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
 :text "Swann avait envisagé toutes les possibilités. La réalité est donc
quelque chose qui n’a aucun rapport avec les possibilités, pas plus
qu’un coup de couteau que nous recevons avec les légers mouvements des
nuages au-dessus de notre tête, puisque ces mots: «deux ou trois fois»
marquèrent à vif une sorte de croix dans son cœur. Chose étrange que
ces mots «deux ou trois fois», rien que des mots, des mots prononcés
dans l’air, à distance, puissent ainsi déchirer le cœur comme s’ils le
touchaient véritablement, puissent rendre malade, comme un poison
qu’on absorberait. Involontairement Swann pensa à ce mot qu’il avait
entendu chez Mme de Saint-Euverte: «C’est ce que j’ai vu de plus fort
depuis les tables tournantes.» Cette souffrance qu’il ressentait ne
ressemblait à rien de ce qu’il avait cru. Non pas seulement parce que
dans ses heures de plus entière méfiance il avait rarement imaginé si
loin dans le mal, mais parce que même quand il imaginait cette chose,
elle restait vague, incertaine, dénuée de cette horreur particulière
qui s’était échappée des mots «peut-être deux ou trois fois»,
dépourvue de cette cruauté spécifique aussi différente de tout ce
qu’il avait connu qu’une maladie dont on est atteint pour la première
fois. Et pourtant cette Odette d’où lui venait tout ce mal, ne lui
était pas moins chère, bien au contraire plus précieuse, comme si au
fur et à mesure que grandissait la souffrance, grandissait en même
temps le prix du calmant, du contrepoison que seule cette femme
possédait. Il voulait lui donner plus de soins comme à une maladie
qu’on découvre soudain plus grave. Il voulait que la chose affreuse
qu’elle lui avait dit avoir faite «deux ou trois fois» ne pût pas se
renouveler. Pour cela il lui fallait veiller sur Odette. On dit
souvent qu’en dénonçant à un ami les fautes de sa maîtresse, on ne
réussit qu’à le rapprocher d’elle parce qu’il ne leur ajoute pas foi,
mais combien davantage s’il leur ajoute foi. Mais, se disait Swann,
comment réussir à la protéger? Il pouvait peut-être la préserver d’une
certaine femme mais il y en avait des centaines d’autres et il comprit
quelle folie avait passé sur lui quand il avait le soir où il n’avait
pas trouvé Odette chez les Verdurin, commencé de désirer la
possession, toujours impossible, d’un autre être. Heureusement pour
Swann, sous les souffrances nouvelles qui venaient d’entrer dans son
âme comme des hordes d’envahisseurs, il existait un fond de nature
plus ancien, plus doux et silencieusement laborieux, comme les
cellules d’un organe blessé qui se mettent aussitôt en mesure de
refaire les tissus lésés, comme les muscles d’un membre paralysé qui
tendent à reprendre leurs mouvements. Ces plus anciens, plus
autochtones habitants de son âme, employèrent un instant toutes les
forces de Swann à ce travail obscurément réparateur qui donne
l’illusion du repos à un convalescent, à un opéré. Cette fois-ci ce
fut moins comme d’habitude dans le cerveau de Swann que se produisit
cette détente par épuisement, ce fut plutôt dans son cœur. Mais toutes
les choses de la vie qui ont existé une fois tendent à se récréer, et
comme un animal expirant qu’agite de nouveau le sursaut d’une
convulsion qui semblait finie, sur le cœur, un instant épargné, de
Swann, d’elle-même la même souffrance vint retracer la même croix. Il
se rappela ces soirs de clair de lune, où allongé dans sa victoria qui
le menait rue La Pérouse, il cultivait voluptueusement en lui les
émotions de l’homme amoureux, sans savoir le fruit empoisonné qu’elles
produiraient nécessairement. Mais toutes ces pensées ne durèrent que
l’espace d’une seconde, le temps qu’il portât la main à son cœur,
reprit sa respiration et parvint à sourire pour dissimuler sa torture.
Déjà il recommençait à poser ses questions. Car sa jalousie qui avait
pris une peine qu’un ennemi ne se serait pas donnée pour arriver à lui
faire asséner ce coup, à lui faire faire la connaissance de la douleur
la plus cruelle qu’il eût encore jamais connue, sa jalousie ne
trouvait pas qu’il eut assez souffert et cherchait à lui faire
recevoir une blessure plus profonde encore. Telle comme une divinité
méchante, sa jalousie inspirait Swann et le poussait à sa perte. Ce ne
fut pas sa faute, mais celle d’Odette seulement si d’abord son
supplice ne s’aggrava pas."
 :tokens 719
 :processed-at "2025-03-16T02:18:14.778915"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 0 :end 5) (entity :text "Chose" :label "ORG" :start 327 :end 332) (entity :text "Swann" :label "ORG" :start 587 :end 592) (entity :text "Saint-Euverte:" :label "ORG" :start 640 :end 654) (entity :text "Cette" :label "ORG" :start 721 :end 726) (entity :text "Odette" :label "ORG" :start 1259 :end 1265) (entity :text "Pour" :label "ORG" :start 1718 :end 1722) (entity :text "Odette." :label "ORG" :start 1755 :end 1762) (entity :text "Mais," :label "ORG" :start 1952 :end 1957) (entity :text "Swann," :label "ORG" :start 1968 :end 1974) (entity :text "Odette" :label "ORG" :start 2198 :end 2204) (entity :text "Verdurin," :label "ORG" :start 2214 :end 2223) (entity :text "Heureusement" :label "ORG" :start 2297 :end 2309) (entity :text "Swann," :label "ORG" :start 2315 :end 2321) (entity :text "Swann" :label "ORG" :start 2787 :end 2792) (entity :text "Cette" :label "ORG" :start 2890 :end 2895) (entity :text "Swann" :label "ORG" :start 2953 :end 2958) (entity :text "Mais" :label "ORG" :start 3035 :end 3039) (entity :text "Swann," :label "ORG" :start 3246 :end 3252) (entity :text "Pérouse," :label "ORG" :start 3404 :end 3412) (entity :text "Mais" :label "ORG" :start 3553 :end 3557) (entity :text "Déjà" :label "ORG" :start 3730 :end 3734) (entity :text "Telle" :label "ORG" :start 4112 :end 4117) (entity :text "Swann" :label "ORG" :start 4169 :end 4174)
 )
 :sentences (list
  (sentence :text "Swann avait envisagé toutes les possibilités" :start 0 :end 44) (sentence :text "La réalité est donc
quelque chose qui n’a aucun rapport avec les possibilités, pas plus
qu’un coup de couteau que nous recevons avec les légers mouvements des
nuages au-dessus de notre tête, puisque ces mots: «deux ou trois fois»
marquèrent à vif une sorte de croix dans son cœur" :start 45 :end 325) (sentence :text "Chose étrange que
ces mots «deux ou trois fois», rien que des mots, des mots prononcés
dans l’air, à distance, puissent ainsi déchirer le cœur comme s’ils le
touchaient véritablement, puissent rendre malade, comme un poison
qu’on absorberait" :start 326 :end 568) (sentence :text "Involontairement Swann pensa à ce mot qu’il avait
entendu chez Mme de Saint-Euverte: «C’est ce que j’ai vu de plus fort
depuis les tables tournantes" :start 569 :end 718) (sentence :text "» Cette souffrance qu’il ressentait ne
ressemblait à rien de ce qu’il avait cru" :start 719 :end 798) (sentence :text "Non pas seulement parce que
dans ses heures de plus entière méfiance il avait rarement imaginé si
loin dans le mal, mais parce que même quand il imaginait cette chose,
elle restait vague, incertaine, dénuée de cette horreur particulière
qui s’était échappée des mots «peut-être deux ou trois fois»,
dépourvue de cette cruauté spécifique aussi différente de tout ce
qu’il avait connu qu’une maladie dont on est atteint pour la première
fois" :start 799 :end 1239) (sentence :text "Et pourtant cette Odette d’où lui venait tout ce mal, ne lui
était pas moins chère, bien au contraire plus précieuse, comme si au
fur et à mesure que grandissait la souffrance, grandissait en même
temps le prix du calmant, du contrepoison que seule cette femme
possédait" :start 1240 :end 1511) (sentence :text "Il voulait lui donner plus de soins comme à une maladie
qu’on découvre soudain plus grave" :start 1512 :end 1602) (sentence :text "Il voulait que la chose affreuse
qu’elle lui avait dit avoir faite «deux ou trois fois» ne pût pas se
renouveler" :start 1603 :end 1716) (sentence :text "Pour cela il lui fallait veiller sur Odette" :start 1717 :end 1761) (sentence :text "On dit
souvent qu’en dénonçant à un ami les fautes de sa maîtresse, on ne
réussit qu’à le rapprocher d’elle parce qu’il ne leur ajoute pas foi,
mais combien davantage s’il leur ajoute foi" :start 1762 :end 1950) (sentence :text "Mais, se disait Swann,
comment réussir à la protéger? Il pouvait peut-être la préserver d’une
certaine femme mais il y en avait des centaines d’autres et il comprit
quelle folie avait passé sur lui quand il avait le soir où il n’avait
pas trouvé Odette chez les Verdurin, commencé de désirer la
possession, toujours impossible, d’un autre être" :start 1951 :end 2295) (sentence :text "Heureusement pour
Swann, sous les souffrances nouvelles qui venaient d’entrer dans son
âme comme des hordes d’envahisseurs, il existait un fond de nature
plus ancien, plus doux et silencieusement laborieux, comme les
cellules d’un organe blessé qui se mettent aussitôt en mesure de
refaire les tissus lésés, comme les muscles d’un membre paralysé qui
tendent à reprendre leurs mouvements" :start 2296 :end 2684) (sentence :text "Ces plus anciens, plus
autochtones habitants de son âme, employèrent un instant toutes les
forces de Swann à ce travail obscurément réparateur qui donne
l’illusion du repos à un convalescent, à un opéré" :start 2685 :end 2888) (sentence :text "Cette fois-ci ce
fut moins comme d’habitude dans le cerveau de Swann que se produisit
cette détente par épuisement, ce fut plutôt dans son cœur" :start 2889 :end 3033) (sentence :text "Mais toutes
les choses de la vie qui ont existé une fois tendent à se récréer, et
comme un animal expirant qu’agite de nouveau le sursaut d’une
convulsion qui semblait finie, sur le cœur, un instant épargné, de
Swann, d’elle-même la même souffrance vint retracer la même croix" :start 3034 :end 3311) (sentence :text "Il
se rappela ces soirs de clair de lune, où allongé dans sa victoria qui
le menait rue La Pérouse, il cultivait voluptueusement en lui les
émotions de l’homme amoureux, sans savoir le fruit empoisonné qu’elles
produiraient nécessairement" :start 3312 :end 3551) (sentence :text "Mais toutes ces pensées ne durèrent que
l’espace d’une seconde, le temps qu’il portât la main à son cœur,
reprit sa respiration et parvint à sourire pour dissimuler sa torture" :start 3552 :end 3728) (sentence :text "Déjà il recommençait à poser ses questions" :start 3729 :end 3772) (sentence :text "Car sa jalousie qui avait
pris une peine qu’un ennemi ne se serait pas donnée pour arriver à lui
faire asséner ce coup, à lui faire faire la connaissance de la douleur
la plus cruelle qu’il eût encore jamais connue, sa jalousie ne
trouvait pas qu’il eut assez souffert et cherchait à lui faire
recevoir une blessure plus profonde encore" :start 3773 :end 4110) (sentence :text "Telle comme une divinité
méchante, sa jalousie inspirait Swann et le poussait à sa perte" :start 4111 :end 4200) (sentence :text "Ce ne
fut pas sa faute, mais celle d’Odette seulement si d’abord son
supplice ne s’aggrava pas" :start 4201 :end 4296)
 ))