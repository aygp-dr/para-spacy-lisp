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
 :text "Mais le jour où, pendant que mon père consultait le conseil de famille
sur la rencontre de Legrandin, je descendis à la cuisine, était un de
ceux où la Charité de Giotto, très malade de son accouchement récent,
ne pouvait se lever; Françoise, n’étant plus aidée, était en retard.
Quand je fus en bas, elle était en train, dans l’arrière-cuisine qui
donnait sur la basse-cour, de tuer un poulet qui, par sa résistance
désespérée et bien naturelle, mais accompagnée par Françoise hors
d’elle, tandis qu’elle cherchait à lui fendre le cou sous l’oreille,
des cris de «sale bête! sale bête!», mettait la sainte douceur et
l’onction de notre servante un peu moins en lumière qu’il n’eût fait,
au dîner du lendemain, par sa peau brodée d’or comme une chasuble et
son jus précieux égoutté d’un ciboire. Quand il fut mort, Françoise
recueillit le sang qui coulait sans noyer sa rancune, eut encore un
sursaut de colère, et regardant le cadavre de son ennemi, dit une
dernière fois: «Sale bête!» Je remontai tout tremblant; j’aurais voulu
qu’on mît Françoise tout de suite à la porte. Mais qui m’eût fait des
boules aussi chaudes, du café aussi parfumé, et même... ces
poulets?... Et en réalité, ce lâche calcul, tout le monde avait eu à
le faire comme moi. Car ma tante Léonie savait,--ce que j’ignorais
encore,--que Françoise qui, pour sa fille, pour ses neveux, aurait
donné sa vie sans une plainte, était pour d’autres êtres d’une dureté
singulière. Malgré cela ma tante l’avait gardée, car si elle
connaissait sa cruauté, elle appréciait son service. Je m’aperçus peu
à peu que la douceur, la componction, les vertus de Françoise
cachaient des tragédies d’arrière-cuisine, comme l’histoire découvre
que les règnes des Rois et des Reines, qui sont représentés les mains
jointes dans les vitraux des églises, furent marqués d’incidents
sanglants. Je me rendis compte que, en dehors de ceux de sa parenté,
les humains excitaient d’autant plus sa pitié par leurs malheurs,
qu’ils vivaient plus éloignés d’elle. Les torrents de larmes qu’elle
versait en lisant le journal sur les infortunes des inconnus se
tarissaient vite si elle pouvait se représenter la personne qui en
était l’objet d’une façon un peu précise. Une de ces nuits qui
suivirent l’accouchement de la fille de cuisine, celle-ci fut prise
d’atroces coliques; maman l’entendit se plaindre, se leva et réveilla
Françoise qui, insensible, déclara que tous ces cris étaient une
comédie, qu’elle voulait «faire la maîtresse». Le médecin, qui
craignait ces crises, avait mis un signet, dans un livre de médecine
que nous avions, à la page où elles sont décrites et où il nous avait
dit de nous reporter pour trouver l’indication des premiers soins à
donner. Ma mère envoya Françoise chercher le livre en lui recommandant
de ne pas laisser tomber le signet. Au bout d’une heure, Françoise
n’était pas revenue; ma mère indignée crut qu’elle s’était recouchée
et me dit d’aller voir moi-même dans la bibliothèque. J’y trouvai
Françoise qui, ayant voulu regarder ce que le signet marquait, lisait
la description clinique de la crise et poussait des sanglots
maintenant qu’il s’agissait d’une malade-type qu’elle ne connaissait
pas. A chaque symptôme douloureux mentionné par l’auteur du traité,
elle s’écriait: «Hé là! Sainte Vierge, est-il possible que le bon Dieu
veuille faire souffrir ainsi une malheureuse créature humaine? Hé! la
pauvre!»"
 :tokens 555
 :processed-at "2025-03-16T02:18:14.071243"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Legrandin," :label "ORG" :start 91 :end 101) (entity :text "Charité" :label "ORG" :start 152 :end 159) (entity :text "Giotto," :label "ORG" :start 163 :end 170) (entity :text "Françoise," :label "ORG" :start 232 :end 242) (entity :text "Quand" :label "ORG" :start 280 :end 285) (entity :text "Françoise" :label "ORG" :start 468 :end 477) (entity :text "Quand" :label "ORG" :start 796 :end 801) (entity :text "Françoise" :label "ORG" :start 815 :end 824) (entity :text "«Sale" :label "ORG" :start 974 :end 979) (entity :text "Françoise" :label "ORG" :start 1040 :end 1049) (entity :text "Mais" :label "ORG" :start 1076 :end 1080) (entity :text "Léonie" :label "ORG" :start 1262 :end 1268) (entity :text "Françoise" :label "ORG" :start 1309 :end 1318) (entity :text "Malgré" :label "ORG" :start 1445 :end 1451) (entity :text "Françoise" :label "ORG" :start 1616 :end 1625) (entity :text "Rois" :label "ORG" :start 1714 :end 1718) (entity :text "Reines," :label "ORG" :start 1726 :end 1733) (entity :text "Françoise" :label "ORG" :start 2366 :end 2375) (entity :text "Françoise" :label "ORG" :start 2724 :end 2733) (entity :text "Françoise" :label "ORG" :start 2829 :end 2838) (entity :text "Françoise" :label "ORG" :start 2974 :end 2983) (entity :text "Sainte" :label "ORG" :start 3266 :end 3272) (entity :text "Vierge," :label "ORG" :start 3273 :end 3280) (entity :text "Dieu" :label "ORG" :start 3308 :end 3312)
 )
 :sentences (list
  (sentence :text "Mais le jour où, pendant que mon père consultait le conseil de famille
sur la rencontre de Legrandin, je descendis à la cuisine, était un de
ceux où la Charité de Giotto, très malade de son accouchement récent,
ne pouvait se lever; Françoise, n’étant plus aidée, était en retard" :start 0 :end 278) (sentence :text "Quand je fus en bas, elle était en train, dans l’arrière-cuisine qui
donnait sur la basse-cour, de tuer un poulet qui, par sa résistance
désespérée et bien naturelle, mais accompagnée par Françoise hors
d’elle, tandis qu’elle cherchait à lui fendre le cou sous l’oreille,
des cris de «sale bête! sale bête!», mettait la sainte douceur et
l’onction de notre servante un peu moins en lumière qu’il n’eût fait,
au dîner du lendemain, par sa peau brodée d’or comme une chasuble et
son jus précieux égoutté d’un ciboire" :start 279 :end 794) (sentence :text "Quand il fut mort, Françoise
recueillit le sang qui coulait sans noyer sa rancune, eut encore un
sursaut de colère, et regardant le cadavre de son ennemi, dit une
dernière fois: «Sale bête!» Je remontai tout tremblant; j’aurais voulu
qu’on mît Françoise tout de suite à la porte" :start 795 :end 1074) (sentence :text "Mais qui m’eût fait des
boules aussi chaudes, du café aussi parfumé, et même" :start 1075 :end 1152) (sentence :text "ces
poulets?" :start 1155 :end 1168) (sentence :text "Et en réalité, ce lâche calcul, tout le monde avait eu à
le faire comme moi" :start 1171 :end 1247) (sentence :text "Car ma tante Léonie savait,--ce que j’ignorais
encore,--que Françoise qui, pour sa fille, pour ses neveux, aurait
donné sa vie sans une plainte, était pour d’autres êtres d’une dureté
singulière" :start 1248 :end 1443) (sentence :text "Malgré cela ma tante l’avait gardée, car si elle
connaissait sa cruauté, elle appréciait son service" :start 1444 :end 1545) (sentence :text "Je m’aperçus peu
à peu que la douceur, la componction, les vertus de Françoise
cachaient des tragédies d’arrière-cuisine, comme l’histoire découvre
que les règnes des Rois et des Reines, qui sont représentés les mains
jointes dans les vitraux des églises, furent marqués d’incidents
sanglants" :start 1546 :end 1839) (sentence :text "Je me rendis compte que, en dehors de ceux de sa parenté,
les humains excitaient d’autant plus sa pitié par leurs malheurs,
qu’ils vivaient plus éloignés d’elle" :start 1840 :end 2001) (sentence :text "Les torrents de larmes qu’elle
versait en lisant le journal sur les infortunes des inconnus se
tarissaient vite si elle pouvait se représenter la personne qui en
était l’objet d’une façon un peu précise" :start 2002 :end 2205) (sentence :text "Une de ces nuits qui
suivirent l’accouchement de la fille de cuisine, celle-ci fut prise
d’atroces coliques; maman l’entendit se plaindre, se leva et réveilla
Françoise qui, insensible, déclara que tous ces cris étaient une
comédie, qu’elle voulait «faire la maîtresse»" :start 2206 :end 2476) (sentence :text "Le médecin, qui
craignait ces crises, avait mis un signet, dans un livre de médecine
que nous avions, à la page où elles sont décrites et où il nous avait
dit de nous reporter pour trouver l’indication des premiers soins à
donner" :start 2477 :end 2707) (sentence :text "Ma mère envoya Françoise chercher le livre en lui recommandant
de ne pas laisser tomber le signet" :start 2708 :end 2806) (sentence :text "Au bout d’une heure, Françoise
n’était pas revenue; ma mère indignée crut qu’elle s’était recouchée
et me dit d’aller voir moi-même dans la bibliothèque" :start 2807 :end 2960) (sentence :text "J’y trouvai
Françoise qui, ayant voulu regarder ce que le signet marquait, lisait
la description clinique de la crise et poussait des sanglots
maintenant qu’il s’agissait d’une malade-type qu’elle ne connaissait
pas" :start 2961 :end 3177) (sentence :text "A chaque symptôme douloureux mentionné par l’auteur du traité,
elle s’écriait: «Hé là! Sainte Vierge, est-il possible que le bon Dieu
veuille faire souffrir ainsi une malheureuse créature humaine? Hé! la
pauvre!»" :start 3178 :end 3391)
 ))