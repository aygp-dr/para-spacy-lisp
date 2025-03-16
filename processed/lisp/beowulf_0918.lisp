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
 :text "Un jour il reçut une lettre anonyme, qui lui disait qu’Odette avait
été la maîtresse d’innombrables hommes (dont on lui citait
quelques-uns parmi lesquels Forcheville, M. de Bréauté et le peintre),
de femmes, et qu’elle fréquentait les maisons de passe. Il fut
tourmenté de penser qu’il y avait parmi ses amis un être capable de
lui avoir adressé cette lettre (car par certains détails elle révélait
chez celui qui l’avait écrite une connaissance familière de la vie de
Swann). Il chercha qui cela pouvait être. Mais il n’avait jamais eu
aucun soupçon des actions inconnues des êtres, de celles qui sont sans
liens visibles avec leurs propos. Et quand il voulut savoir si c’était
plutôt sous le caractère apparent de M. de Charlus, de M. des Laumes,
de M. d’Orsan, qu’il devait situer la région inconnue où cet acte
ignoble avait dû naître, comme aucun de ces hommes n’avait jamais
approuvé devant lui les lettres anonymes et que tout ce qu’ils lui
avaient dit impliquait qu’ils les réprouvaient, il ne vit pas de
raisons pour relier cette infamie plutôt à la nature de l’un que de
l’autre. Celle de M. de Charlus était un peu d’un détraqué mais
foncièrement bonne et tendre; celle de M. des Laumes un peu sèche mais
saine et droite. Quant à M. d’Orsan, Swann, n’avait jamais rencontré
personne qui dans les circonstances même les plus tristes vînt à lui
avec une parole plus sentie, un geste plus discret et plus juste.
C’était au point qu’il ne pouvait comprendre le rôle peu délicat qu’on
prêtait à M. d’Orsan dans la liaison qu’il avait avec une femme riche,
et que chaque fois que Swann pensait à lui il était obligé de laisser
de côté cette mauvaise réputation inconciliable avec tant de
témoignages certains de délicatesse. Un instant Swann sentit que son
esprit s’obscurcissait et il pensa à autre chose pour retrouver un peu
de lumière. Puis il eut le courage de revenir vers ces réflexions.
Mais alors après n’avoir pu soupçonner personne, il lui fallut
soupçonner tout le monde. Après tout M. de Charlus l’aimait, avait bon
cœur. Mais c’était un névropathe, peut-être demain pleurerait-il de le
savoir malade, et aujourd’hui par jalousie, par colère, sur quelque
idée subite qui s’était emparée de lui, avait-il désiré lui faire du
mal. Au fond, cette race d’hommes est la pire de toutes. Certes, le
prince des Laumes était bien loin d’aimer Swann autant que M. de
Charlus. Mais à cause de cela même il n’avait pas avec lui les mêmes
susceptibilités; et puis c’était une nature froide sans doute, mais
aussi incapable de vilenies que de grandes actions. Swann se repentait
de ne s’être pas attaché, dans la vie, qu’à de tels êtres. Puis il
songeait que ce qui empêche les hommes de faire du mal à leur
prochain, c’est la bonté, qu’il ne pouvait au fond répondre que de
natures analogues à la sienne, comme était, à l’égard du cœur, celle
de M. de Charlus. La seule pensée de faire cette peine à Swann eût
révolté celui-ci. Mais avec un homme insensible, d’une autre humanité,
comme était le prince des Laumes, comment prévoir à quels actes
pouvaient le conduire des mobiles d’une essence différente. Avoir du
cœur c’est tout, et M. de Charlus en avait. M. d’Orsan n’en manquait
pas non plus et ses relations cordiales mais peu intimes avec Swann,
nées de l’agrément que, pensant de même sur tout, ils avaient à causer
ensemble, étaient de plus de repos que l’affection exaltée de M. de
Charlus, capable de se porter à des actes de passion, bons ou mauvais.
S’il y avait quelqu’un par qui Swann s’était toujours senti compris et
délicatement aimé, c’était par M. d’Orsan. Oui, mais cette vie peu
honorable qu’il menait? Swann regrettait de n’en avoir pas tenu
compte, d’avoir souvent avoué en plaisantant qu’il n’avait jamais
éprouvé si vivement des sentiments de sympathie et d’estime que dans
la société d’une canaille. Ce n’est pas pour rien, se disait-il
maintenant, que depuis que les hommes jugent leur prochain, c’est sur
ses actes. Il n’y a que cela qui signifie quelque chose, et nullement
ce que nous disons, ce que nous pensons. Charlus et des Laumes peuvent
avoir tels ou tels défauts, ce sont d’honnêtes gens. Orsan n’en a
peut-être pas, mais ce n’est pas un honnête homme. Il a pu mal agir
une fois de plus. Puis Swann soupçonna Rémi, qui il est vrai n’aurait
pu qu’inspirer la lettre, mais cette piste lui parut un instant la
bonne. D’abord Lorédan avait des raisons d’en vouloir à Odette. Et
puis comment ne pas supposer que nos domestiques, vivant dans une
situation inférieure à la nôtre, ajoutant à notre fortune et à nos
défauts des richesses et des vices imaginaires pour lesquels ils nous
envient et nous méprisent, se trouveront fatalement amenés à agir
autrement que des gens de notre monde. Il soupçonna aussi mon
grand-père. Chaque fois que Swann lui avait demandé un service, ne le
lui avait-il pas toujours refusé? puis avec ses idées bourgeoises il
avait pu croire agir pour le bien de Swann. Celui-ci soupçonna encore
Bergotte, le peintre, les Verdurin, admira une fois de plus au passage
la sagesse des gens du monde de ne pas vouloir frayer avec ces milieux
artistes où de telles choses sont possibles, peut-être même avouées
sous le nom de bonnes farces; mais il se rappelait des traits de
droiture de ces bohèmes, et les rapprocha de la vie d’expédients,
presque d’escroqueries, où le manque d’argent, le besoin de luxe, la
corruption des plaisirs conduisent souvent l’aristocratie. Bref cette
lettre anonyme prouvait qu’il connaissait un être capable de
scélératesse, mais il ne voyait pas plus de raison pour que cette
scélératesse fût cachée dans le tuf--inexploré d’autrui--du caractère de
l’homme tendre que de l’homme froid, de l’artiste que du bourgeois, du
grand seigneur que du valet. Quel critérium adopter pour juger les
hommes? au fond il n’y avait pas une seule des personnes qu’il
connaissait qui ne pût être capable d’une infamie. Fallait-il cesser
de les voir toutes? Son esprit se voila; il passa deux ou trois fois
ses mains sur son front, essuya les verres de son lorgnon avec son
mouchoir, et, songeant qu’après tout, des gens qui le valaient
fréquentaient M. de Charlus, le prince des Laumes, et les autres, il
se dit que cela signifiait sinon qu’ils fussent incapables d’infamie,
du moins, que c’est une nécessité de la vie à laquelle chacun se
soumet de fréquenter des gens qui n’en sont peut-être pas incapables.
Et il continua à serrer la main à tous ces amis qu’il avait
soupçonnés, avec cette réserve de pur style qu’ils avaient peut-être
cherché à le désespérer. Quant au fond même de la lettre, il ne s’en
inquiéta pas, car pas une des accusations formulées contre Odette
n’avait l’ombre de vraisemblance. Swann comme beaucoup de gens avait
l’esprit paresseux et manquait d’invention. Il savait bien comme une
vérité générale que la vie des êtres est pleine de contrastes, mais
pour chaque être en particulier il imaginait toute la partie de sa vie
qu’il ne connaissait pas comme identique à la partie qu’il
connaissait. Il imaginait ce qu’on lui taisait à l’aide de ce qu’on
lui disait. Dans les moments où Odette était auprès de lui, s’ils
parlaient ensemble d’une action indélicate commise, ou d’un sentiment
indélicat éprouvé, par un autre, elle les flétrissait en vertu des
mêmes principes que Swann avait toujours entendu professer par ses
parents et auxquels il était resté fidèle; et puis elle arrangeait ses
fleurs, elle buvait une tasse de thé, elle s’inquiétait des travaux de
Swann. Donc Swann étendait ces habitudes au reste de la vie d’Odette,
il répétait ces gestes quand il voulait se représenter les moments où
elle était loin de lui. Si on la lui avait dépeinte telle qu’elle
était, ou plutôt qu’elle avait été si longtemps avec lui, mais auprès
d’un autre homme, il eût souffert, car cette image lui eût paru
vraisemblable. Mais qu’elle allât chez des maquerelles, se livrât à
des orgies avec des femmes, qu’elle menât la vie crapuleuse de
créatures abjectes, quelle divagation insensée à la réalisation de
laquelle, Dieu merci, les chrysanthèmes imaginés, les thés successifs,
les indignations vertueuses ne laissaient aucune place. Seulement de
temps à autre, il laissait entendre à Odette que par méchanceté, on
lui racontait tout ce qu’elle faisait; et, se servant à propos, d’un
détail insignifiant mais vrai, qu’il avait appris par hasard, comme
s’il était le seul petit bout qu’il laissât passer malgré lui, entre
tant d’autres, d’une reconstitution complète de la vie d’Odette qu’il
tenait cachée en lui, il l’amenait à supposer qu’il était renseigné
sur des choses qu’en réalité il ne savait ni même ne soupçonnait, car
si bien souvent il adjurait Odette de ne pas altérer la vérité,
c’était seulement, qu’il s’en rendît compte ou non, pour qu’Odette lui
dît tout ce qu’elle faisait. Sans doute, comme il le disait à Odette,
il aimait la sincérité, mais il l’aimait comme une proxénète pouvant
le tenir au courant de la vie de sa maîtresse. Aussi son amour de la
sincérité n’étant pas désintéressé, ne l’avait pas rendu meilleur. La
vérité qu’il chérissait c’était celle que lui dirait Odette; mais
lui-même, pour obtenir cette vérité, ne craignait pas de recourir au
mensonge, le mensonge qu’il ne cessait de peindre à Odette comme
conduisant à la dégradation toute créature humaine. En somme il
mentait autant qu’Odette parce que plus malheureux qu’elle, il n’était
pas moins égoïste. Et elle, entendant Swann lui raconter ainsi à
elle-même des choses qu’elle avait faites, le regardait d’un air
méfiant, et, à toute aventure, fâché, pour ne pas avoir l’air de
s’humilier et de rougir de ses actes."
 :tokens 1624
 :processed-at "2025-03-16T02:18:14.762459"
 :entities (list
  (entity :text "Forcheville," :label "ORG" :start 155 :end 167) (entity :text "Bréauté" :label "ORG" :start 174 :end 181) (entity :text "Swann)." :label "ORG" :start 470 :end 477) (entity :text "Mais" :label "ORG" :start 512 :end 516) (entity :text "Charlus," :label "ORG" :start 723 :end 731) (entity :text "Laumes," :label "ORG" :start 742 :end 749) (entity :text "Celle" :label "ORG" :start 1091 :end 1096) (entity :text "Charlus" :label "ORG" :start 1106 :end 1113) (entity :text "Laumes" :label "ORG" :start 1192 :end 1198) (entity :text "Quant" :label "ORG" :start 1234 :end 1239) (entity :text "Swann," :label "ORG" :start 1254 :end 1260) (entity :text "Swann" :label "ORG" :start 1586 :end 1591) (entity :text "Swann" :label "ORG" :start 1742 :end 1747) (entity :text "Puis" :label "ORG" :start 1846 :end 1850) (entity :text "Mais" :label "ORG" :start 1901 :end 1905) (entity :text "Charlus" :label "ORG" :start 2007 :end 2014) (entity :text "Mais" :label "ORG" :start 2041 :end 2045) (entity :text "Certes," :label "ORG" :start 2300 :end 2307) (entity :text "Laumes" :label "ORG" :start 2322 :end 2328) (entity :text "Swann" :label "ORG" :start 2353 :end 2358) (entity :text "Charlus." :label "ORG" :start 2376 :end 2384) (entity :text "Mais" :label "ORG" :start 2385 :end 2389) (entity :text "Swann" :label "ORG" :start 2565 :end 2570) (entity :text "Puis" :label "ORG" :start 2643 :end 2647) (entity :text "Charlus." :label "ORG" :start 2858 :end 2866) (entity :text "Swann" :label "ORG" :start 2906 :end 2911) (entity :text "Mais" :label "ORG" :start 2934 :end 2938) (entity :text "Laumes," :label "ORG" :start 3013 :end 3020) (entity :text "Charlus" :label "ORG" :start 3146 :end 3153) (entity :text "Swann," :label "ORG" :start 3251 :end 3257) (entity :text "Charlus," :label "ORG" :start 3397 :end 3405) (entity :text "Swann" :label "ORG" :start 3499 :end 3504) (entity :text "Oui," :label "ORG" :start 3582 :end 3586) (entity :text "Swann" :label "ORG" :start 3630 :end 3635) (entity :text "Charlus" :label "ORG" :start 4050 :end 4057) (entity :text "Laumes" :label "ORG" :start 4065 :end 4071) (entity :text "Orsan" :label "ORG" :start 4133 :end 4138) (entity :text "Puis" :label "ORG" :start 4232 :end 4236) (entity :text "Swann" :label "ORG" :start 4237 :end 4242) (entity :text "Rémi," :label "ORG" :start 4253 :end 4258) (entity :text "Lorédan" :label "ORG" :start 4366 :end 4373) (entity :text "Odette." :label "ORG" :start 4407 :end 4414) (entity :text "Chaque" :label "ORG" :start 4761 :end 4767) (entity :text "Swann" :label "ORG" :start 4777 :end 4782) (entity :text "Swann." :label "ORG" :start 4925 :end 4931) (entity :text "Bergotte," :label "ORG" :start 4958 :end 4967) (entity :text "Verdurin," :label "ORG" :start 4984 :end 4993) (entity :text "Bref" :label "ORG" :start 5427 :end 5431) (entity :text "Quel" :label "ORG" :start 5738 :end 5742) (entity :text "Charlus," :label "ORG" :start 6127 :end 6135) (entity :text "Laumes," :label "ORG" :start 6150 :end 6157) (entity :text "Quant" :label "ORG" :start 6535 :end 6540) (entity :text "Odette" :label "ORG" :start 6638 :end 6644) (entity :text "Swann" :label "ORG" :start 6679 :end 6684) (entity :text "Dans" :label "ORG" :start 7061 :end 7065) (entity :text "Odette" :label "ORG" :start 7081 :end 7087) (entity :text "Swann" :label "ORG" :start 7272 :end 7277) (entity :text "Swann." :label "ORG" :start 7461 :end 7467) (entity :text "Donc" :label "ORG" :start 7468 :end 7472) (entity :text "Swann" :label "ORG" :start 7473 :end 7478) (entity :text "Mais" :label "ORG" :start 7816 :end 7820) (entity :text "Dieu" :label "ORG" :start 8009 :end 8013) (entity :text "Seulement" :label "ORG" :start 8126 :end 8135) (entity :text "Odette" :label "ORG" :start 8177 :end 8183) (entity :text "Odette" :label "ORG" :start 8470 :end 8476) (entity :text "Sans" :label "ORG" :start 8785 :end 8789) (entity :text "Odette," :label "ORG" :start 8818 :end 8825) (entity :text "Odette;" :label "ORG" :start 9087 :end 9094) (entity :text "Odette" :label "ORG" :start 9221 :end 9227) (entity :text "Swann" :label "ORG" :start 9407 :end 9412)
 )
 :sentences (list
  (sentence :text "Un jour il reçut une lettre anonyme, qui lui disait qu’Odette avait
été la maîtresse d’innombrables hommes (dont on lui citait
quelques-uns parmi lesquels Forcheville, M" :start 0 :end 169) (sentence :text "de Bréauté et le peintre),
de femmes, et qu’elle fréquentait les maisons de passe" :start 170 :end 252) (sentence :text "Il fut
tourmenté de penser qu’il y avait parmi ses amis un être capable de
lui avoir adressé cette lettre (car par certains détails elle révélait
chez celui qui l’avait écrite une connaissance familière de la vie de
Swann)" :start 253 :end 476) (sentence :text "Il chercha qui cela pouvait être" :start 477 :end 510) (sentence :text "Mais il n’avait jamais eu
aucun soupçon des actions inconnues des êtres, de celles qui sont sans
liens visibles avec leurs propos" :start 511 :end 641) (sentence :text "Et quand il voulut savoir si c’était
plutôt sous le caractère apparent de M" :start 642 :end 718) (sentence :text "de Charlus, de M" :start 719 :end 736) (sentence :text "des Laumes,
de M" :start 737 :end 754) (sentence :text "d’Orsan, qu’il devait situer la région inconnue où cet acte
ignoble avait dû naître, comme aucun de ces hommes n’avait jamais
approuvé devant lui les lettres anonymes et que tout ce qu’ils lui
avaient dit impliquait qu’ils les réprouvaient, il ne vit pas de
raisons pour relier cette infamie plutôt à la nature de l’un que de
l’autre" :start 755 :end 1089) (sentence :text "Celle de M" :start 1090 :end 1101) (sentence :text "de Charlus était un peu d’un détraqué mais
foncièrement bonne et tendre; celle de M" :start 1102 :end 1186) (sentence :text "des Laumes un peu sèche mais
saine et droite" :start 1187 :end 1232) (sentence :text "Quant à M" :start 1233 :end 1243) (sentence :text "d’Orsan, Swann, n’avait jamais rencontré
personne qui dans les circonstances même les plus tristes vînt à lui
avec une parole plus sentie, un geste plus discret et plus juste" :start 1244 :end 1419) (sentence :text "C’était au point qu’il ne pouvait comprendre le rôle peu délicat qu’on
prêtait à M" :start 1420 :end 1503) (sentence :text "d’Orsan dans la liaison qu’il avait avec une femme riche,
et que chaque fois que Swann pensait à lui il était obligé de laisser
de côté cette mauvaise réputation inconciliable avec tant de
témoignages certains de délicatesse" :start 1504 :end 1729) (sentence :text "Un instant Swann sentit que son
esprit s’obscurcissait et il pensa à autre chose pour retrouver un peu
de lumière" :start 1730 :end 1844) (sentence :text "Puis il eut le courage de revenir vers ces réflexions" :start 1845 :end 1899) (sentence :text "Mais alors après n’avoir pu soupçonner personne, il lui fallut
soupçonner tout le monde" :start 1900 :end 1988) (sentence :text "Après tout M" :start 1989 :end 2002) (sentence :text "de Charlus l’aimait, avait bon
cœur" :start 2003 :end 2039) (sentence :text "Mais c’était un névropathe, peut-être demain pleurerait-il de le
savoir malade, et aujourd’hui par jalousie, par colère, sur quelque
idée subite qui s’était emparée de lui, avait-il désiré lui faire du
mal" :start 2040 :end 2246) (sentence :text "Au fond, cette race d’hommes est la pire de toutes" :start 2247 :end 2298) (sentence :text "Certes, le
prince des Laumes était bien loin d’aimer Swann autant que M" :start 2299 :end 2371) (sentence :text "de
Charlus" :start 2372 :end 2383) (sentence :text "Mais à cause de cela même il n’avait pas avec lui les mêmes
susceptibilités; et puis c’était une nature froide sans doute, mais
aussi incapable de vilenies que de grandes actions" :start 2384 :end 2563) (sentence :text "Swann se repentait
de ne s’être pas attaché, dans la vie, qu’à de tels êtres" :start 2564 :end 2641) (sentence :text "Puis il
songeait que ce qui empêche les hommes de faire du mal à leur
prochain, c’est la bonté, qu’il ne pouvait au fond répondre que de
natures analogues à la sienne, comme était, à l’égard du cœur, celle
de M" :start 2642 :end 2853) (sentence :text "de Charlus" :start 719 :end 730) (sentence :text "La seule pensée de faire cette peine à Swann eût
révolté celui-ci" :start 2866 :end 2932) (sentence :text "Mais avec un homme insensible, d’une autre humanité,
comme était le prince des Laumes, comment prévoir à quels actes
pouvaient le conduire des mobiles d’une essence différente" :start 2933 :end 3109) (sentence :text "Avoir du
cœur c’est tout, et M" :start 3110 :end 3141) (sentence :text "de Charlus en avait" :start 3142 :end 3162) (sentence :text "M" :start 167 :end 169) (sentence :text "d’Orsan n’en manquait
pas non plus et ses relations cordiales mais peu intimes avec Swann,
nées de l’agrément que, pensant de même sur tout, ils avaient à causer
ensemble, étaient de plus de repos que l’affection exaltée de M" :start 3166 :end 3392) (sentence :text "de
Charlus, capable de se porter à des actes de passion, bons ou mauvais" :start 3393 :end 3466) (sentence :text "S’il y avait quelqu’un par qui Swann s’était toujours senti compris et
délicatement aimé, c’était par M" :start 3467 :end 3571) (sentence :text "d’Orsan" :start 755 :end 763) (sentence :text "Oui, mais cette vie peu
honorable qu’il menait? Swann regrettait de n’en avoir pas tenu
compte, d’avoir souvent avoué en plaisantant qu’il n’avait jamais
éprouvé si vivement des sentiments de sympathie et d’estime que dans
la société d’une canaille" :start 3581 :end 3830) (sentence :text "Ce n’est pas pour rien, se disait-il
maintenant, que depuis que les hommes jugent leur prochain, c’est sur
ses actes" :start 3831 :end 3948) (sentence :text "Il n’y a que cela qui signifie quelque chose, et nullement
ce que nous disons, ce que nous pensons" :start 3949 :end 4048) (sentence :text "Charlus et des Laumes peuvent
avoir tels ou tels défauts, ce sont d’honnêtes gens" :start 4049 :end 4131) (sentence :text "Orsan n’en a
peut-être pas, mais ce n’est pas un honnête homme" :start 4132 :end 4195) (sentence :text "Il a pu mal agir
une fois de plus" :start 4196 :end 4230) (sentence :text "Puis Swann soupçonna Rémi, qui il est vrai n’aurait
pu qu’inspirer la lettre, mais cette piste lui parut un instant la
bonne" :start 4231 :end 4356) (sentence :text "D’abord Lorédan avait des raisons d’en vouloir à Odette" :start 4357 :end 4413) (sentence :text "Et
puis comment ne pas supposer que nos domestiques, vivant dans une
situation inférieure à la nôtre, ajoutant à notre fortune et à nos
défauts des richesses et des vices imaginaires pour lesquels ils nous
envient et nous méprisent, se trouveront fatalement amenés à agir
autrement que des gens de notre monde" :start 4414 :end 4724) (sentence :text "Il soupçonna aussi mon
grand-père" :start 4725 :end 4759) (sentence :text "Chaque fois que Swann lui avait demandé un service, ne le
lui avait-il pas toujours refusé? puis avec ses idées bourgeoises il
avait pu croire agir pour le bien de Swann" :start 4760 :end 4930) (sentence :text "Celui-ci soupçonna encore
Bergotte, le peintre, les Verdurin, admira une fois de plus au passage
la sagesse des gens du monde de ne pas vouloir frayer avec ces milieux
artistes où de telles choses sont possibles, peut-être même avouées
sous le nom de bonnes farces; mais il se rappelait des traits de
droiture de ces bohèmes, et les rapprocha de la vie d’expédients,
presque d’escroqueries, où le manque d’argent, le besoin de luxe, la
corruption des plaisirs conduisent souvent l’aristocratie" :start 4931 :end 5425) (sentence :text "Bref cette
lettre anonyme prouvait qu’il connaissait un être capable de
scélératesse, mais il ne voyait pas plus de raison pour que cette
scélératesse fût cachée dans le tuf--inexploré d’autrui--du caractère de
l’homme tendre que de l’homme froid, de l’artiste que du bourgeois, du
grand seigneur que du valet" :start 5426 :end 5736) (sentence :text "Quel critérium adopter pour juger les
hommes? au fond il n’y avait pas une seule des personnes qu’il
connaissait qui ne pût être capable d’une infamie" :start 5737 :end 5888) (sentence :text "Fallait-il cesser
de les voir toutes? Son esprit se voila; il passa deux ou trois fois
ses mains sur son front, essuya les verres de son lorgnon avec son
mouchoir, et, songeant qu’après tout, des gens qui le valaient
fréquentaient M" :start 5889 :end 6122) (sentence :text "de Charlus, le prince des Laumes, et les autres, il
se dit que cela signifiait sinon qu’ils fussent incapables d’infamie,
du moins, que c’est une nécessité de la vie à laquelle chacun se
soumet de fréquenter des gens qui n’en sont peut-être pas incapables" :start 6123 :end 6379) (sentence :text "Et il continua à serrer la main à tous ces amis qu’il avait
soupçonnés, avec cette réserve de pur style qu’ils avaient peut-être
cherché à le désespérer" :start 6380 :end 6533) (sentence :text "Quant au fond même de la lettre, il ne s’en
inquiéta pas, car pas une des accusations formulées contre Odette
n’avait l’ombre de vraisemblance" :start 6534 :end 6677) (sentence :text "Swann comme beaucoup de gens avait
l’esprit paresseux et manquait d’invention" :start 6678 :end 6756) (sentence :text "Il savait bien comme une
vérité générale que la vie des êtres est pleine de contrastes, mais
pour chaque être en particulier il imaginait toute la partie de sa vie
qu’il ne connaissait pas comme identique à la partie qu’il
connaissait" :start 6757 :end 6992) (sentence :text "Il imaginait ce qu’on lui taisait à l’aide de ce qu’on
lui disait" :start 6993 :end 7059) (sentence :text "Dans les moments où Odette était auprès de lui, s’ils
parlaient ensemble d’une action indélicate commise, ou d’un sentiment
indélicat éprouvé, par un autre, elle les flétrissait en vertu des
mêmes principes que Swann avait toujours entendu professer par ses
parents et auxquels il était resté fidèle; et puis elle arrangeait ses
fleurs, elle buvait une tasse de thé, elle s’inquiétait des travaux de
Swann" :start 7060 :end 7466) (sentence :text "Donc Swann étendait ces habitudes au reste de la vie d’Odette,
il répétait ces gestes quand il voulait se représenter les moments où
elle était loin de lui" :start 7467 :end 7623) (sentence :text "Si on la lui avait dépeinte telle qu’elle
était, ou plutôt qu’elle avait été si longtemps avec lui, mais auprès
d’un autre homme, il eût souffert, car cette image lui eût paru
vraisemblable" :start 7624 :end 7814) (sentence :text "Mais qu’elle allât chez des maquerelles, se livrât à
des orgies avec des femmes, qu’elle menât la vie crapuleuse de
créatures abjectes, quelle divagation insensée à la réalisation de
laquelle, Dieu merci, les chrysanthèmes imaginés, les thés successifs,
les indignations vertueuses ne laissaient aucune place" :start 7815 :end 8124) (sentence :text "Seulement de
temps à autre, il laissait entendre à Odette que par méchanceté, on
lui racontait tout ce qu’elle faisait; et, se servant à propos, d’un
détail insignifiant mais vrai, qu’il avait appris par hasard, comme
s’il était le seul petit bout qu’il laissât passer malgré lui, entre
tant d’autres, d’une reconstitution complète de la vie d’Odette qu’il
tenait cachée en lui, il l’amenait à supposer qu’il était renseigné
sur des choses qu’en réalité il ne savait ni même ne soupçonnait, car
si bien souvent il adjurait Odette de ne pas altérer la vérité,
c’était seulement, qu’il s’en rendît compte ou non, pour qu’Odette lui
dît tout ce qu’elle faisait" :start 8125 :end 8783) (sentence :text "Sans doute, comme il le disait à Odette,
il aimait la sincérité, mais il l’aimait comme une proxénète pouvant
le tenir au courant de la vie de sa maîtresse" :start 8784 :end 8940) (sentence :text "Aussi son amour de la
sincérité n’étant pas désintéressé, ne l’avait pas rendu meilleur" :start 8941 :end 9029) (sentence :text "La
vérité qu’il chérissait c’était celle que lui dirait Odette; mais
lui-même, pour obtenir cette vérité, ne craignait pas de recourir au
mensonge, le mensonge qu’il ne cessait de peindre à Odette comme
conduisant à la dégradation toute créature humaine" :start 9030 :end 9284) (sentence :text "En somme il
mentait autant qu’Odette parce que plus malheureux qu’elle, il n’était
pas moins égoïste" :start 9285 :end 9386) (sentence :text "Et elle, entendant Swann lui raconter ainsi à
elle-même des choses qu’elle avait faites, le regardait d’un air
méfiant, et, à toute aventure, fâché, pour ne pas avoir l’air de
s’humilier et de rougir de ses actes" :start 9387 :end 9600)
 ))