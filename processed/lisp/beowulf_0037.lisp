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
 :text "Je ne quittais pas ma mère des yeux, je savais que quand on serait à
table, on ne me permettrait pas de rester pendant toute la durée du
dîner et que pour ne pas contrarier mon père, maman ne me laisserait
pas l’embrasser à plusieurs reprises devant le monde, comme si ç’avait
été dans ma chambre. Aussi je me promettais, dans la salle à manger,
pendant qu’on commencerait à dîner et que je sentirais approcher
l’heure, de faire d’avance de ce baiser qui serait si court et furtif,
tout ce que j’en pouvais faire seul, de choisir avec mon regard la
place de la joue que j’embrasserais, de préparer ma pensée pour
pouvoir grâce à ce commencement mental de baiser consacrer toute la
minute que m’accorderait maman à sentir sa joue contre mes lèvres,
comme un peintre qui ne peut obtenir que de courtes séances de pose,
prépare sa palette, et a fait d’avance de souvenir, d’après ses notes,
tout ce pour quoi il pouvait à la rigueur se passer de la présence du
modèle. Mais voici qu’avant que le dîner fût sonné mon grand-père eut
la férocité inconsciente de dire: «Le petit a l’air fatigué, il
devrait monter se coucher. On dîne tard du reste ce soir.» Et mon
père, qui ne gardait pas aussi scrupuleusement que ma grand’mère et
que ma mère la foi des traités, dit: «Oui, allons, vas te coucher.» Je
voulus embrasser maman, à cet instant on entendit la cloche du dîner.
«Mais non, voyons, laisse ta mère, vous vous êtes assez dit bonsoir
comme cela, ces manifestations sont ridicules. Allons, monte!» Et il
me fallut partir sans viatique; il me fallut monter chaque marche de
l’escalier, comme dit l’expression populaire, à «contre-cœur», montant
contre mon cœur qui voulait retourner près de ma mère parce qu’elle ne
lui avait pas, en m’embrassant, donné licence de me suivre. Cet
escalier détesté où je m’engageais toujours si tristement, exhalait
une odeur de vernis qui avait en quelque sorte absorbé, fixé, cette
sorte particulière de chagrin que je ressentais chaque soir et la
rendait peut-être plus cruelle encore pour ma sensibilité parce que
sous cette forme olfactive mon intelligence n’en pouvait plus prendre
sa part. Quand nous dormons et qu’une rage de dents n’est encore
perçue par nous que comme une jeune fille que nous nous efforçons deux
cents fois de suite de tirer de l’eau ou que comme un vers de Molière
que nous nous répétons sans arrêter, c’est un grand soulagement de
nous réveiller et que notre intelligence puisse débarrasser l’idée de
rage de dents, de tout déguisement héroïque ou cadencé. C’est
l’inverse de ce soulagement que j’éprouvais quand mon chagrin de
monter dans ma chambre entrait en moi d’une façon infiniment plus
rapide, presque instantanée, à la fois insidieuse et brusque, par
l’inhalation,--beaucoup plus toxique que la pénétration morale,--de
l’odeur de vernis particulière à cet escalier. Une fois dans ma
chambre, il fallut boucher toutes les issues, fermer les volets,
creuser mon propre tombeau, en défaisant mes couvertures, revêtir le
suaire de ma chemise de nuit. Mais avant de m’ensevelir dans le lit de
fer qu’on avait ajouté dans la chambre parce que j’avais trop chaud
l’été sous les courtines de reps du grand lit, j’eus un mouvement de
révolte, je voulus essayer d’une ruse de condamné. J’écrivis à ma mère
en la suppliant de monter pour une chose grave que je ne pouvais lui
dire dans ma lettre. Mon effroi était que Françoise, la cuisinière de
ma tante qui était chargée de s’occuper de moi quand j’étais à
Combray, refusât de porter mon mot. Je me doutais que pour elle, faire
une commission à ma mère quand il y avait du monde lui paraîtrait
aussi impossible que pour le portier d’un théâtre de remettre une
lettre à un acteur pendant qu’il est en scène. Elle possédait à
l’égard des choses qui peuvent ou ne peuvent pas se faire un code
impérieux, abondant, subtil et intransigeant sur des distinctions
insaisissables ou oiseuses (ce qui lui donnait l’apparence de ces lois
antiques qui, à côté de prescriptions féroces comme de massacrer les
enfants à la mamelle, défendent avec une délicatesse exagérée de faire
bouillir le chevreau dans le lait de sa mère, ou de manger dans un
animal le nerf de la cuisse). Ce code, si l’on en jugeait par
l’entêtement soudain qu’elle mettait à ne pas vouloir faire certaines
commissions que nous lui donnions, semblait avoir prévu des
complexités sociales et des raffinements mondains tels que rien dans
l’entourage de Françoise et dans sa vie de domestique de village
n’avait pu les lui suggérer; et l’on était obligé de se dire qu’il y
avait en elle un passé français très ancien, noble et mal compris,
comme dans ces cités manufacturières où de vieux hôtels témoignent
qu’il y eut jadis une vie de cour, et où les ouvriers d’une usine de
produits chimiques travaillent au milieu de délicates sculptures qui
représentent le miracle de saint Théophile ou les quatre fils Aymon.
Dans le cas particulier, l’article du code à cause duquel il était peu
probable que sauf le cas d’incendie Françoise allât déranger maman en
présence de M. Swann pour un aussi petit personnage que moi, exprimait
simplement le respect qu’elle professait non seulement pour les
parents,--comme pour les morts, les prêtres et les rois,--mais encore
pour l’étranger à qui on donne l’hospitalité, respect qui m’aurait
peut-être touché dans un livre mais qui m’irritait toujours dans sa
bouche, à cause du ton grave et attendri qu’elle prenait pour en
parler, et davantage ce soir où le caractère sacré qu’elle conférait
au dîner avait pour effet qu’elle refuserait d’en troubler la
cérémonie. Mais pour mettre une chance de mon côté, je n’hésitai pas à
mentir et à lui dire que ce n’était pas du tout moi qui avais voulu
écrire à maman, mais que c’était maman qui, en me quittant, m’avait
recommandé de ne pas oublier de lui envoyer une réponse relativement à
un objet qu’elle m’avait prié de chercher; et elle serait certainement
très fâchée si on ne lui remettait pas ce mot. Je pense que Françoise
ne me crut pas, car, comme les hommes primitifs dont les sens étaient
plus puissants que les nôtres, elle discernait immédiatement, à des
signes insaisissables pour nous, toute vérité que nous voulions lui
cacher; elle regarda pendant cinq minutes l’enveloppe comme si
l’examen du papier et l’aspect de l’écriture allaient la renseigner
sur la nature du contenu ou lui apprendre à quel article de son code
elle devait se référer. Puis elle sortit d’un air résigné qui semblait
signifier: «C’est-il pas malheureux pour des parents d’avoir un enfant
pareil!» Elle revint au bout d’un moment me dire qu’on n’en était
encore qu’à la glace, qu’il était impossible au maître d’hôtel de
remettre la lettre en ce moment devant tout le monde, mais que, quand
on serait aux rince-bouche, on trouverait le moyen de la faire passer
à maman. Aussitôt mon anxiété tomba; maintenant ce n’était plus comme
tout à l’heure pour jusqu’à demain que j’avais quitté ma mère, puisque
mon petit mot allait, la fâchant sans doute (et doublement parce que
ce manège me rendrait ridicule aux yeux de Swann), me faire du moins
entrer invisible et ravi dans la même pièce qu’elle, allait lui parler
de moi à l’oreille; puisque cette salle à manger interdite, hostile,
où, il y avait un instant encore, la glace elle-même--le «granité»--et
les rince-bouche me semblaient recéler des plaisirs malfaisants et
mortellement tristes parce que maman les goûtait loin de moi,
s’ouvrait à moi et, comme un fruit devenu doux qui brise son
enveloppe, allait faire jaillir, projeter jusqu’à mon cœur enivré
l’attention de maman tandis qu’elle lirait mes lignes. Maintenant je
n’étais plus séparé d’elle; les barrières étaient tombées, un fil
délicieux nous réunissait. Et puis, ce n’était pas tout: maman allait
sans doute venir!"
 :tokens 1313
 :processed-at "2025-03-16T02:18:13.816641"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 966 :end 970) (entity :text "«Oui," :label "ORG" :start 1263 :end 1268) (entity :text "«Mais" :label "ORG" :start 1367 :end 1372) (entity :text "Quand" :label "ORG" :start 2128 :end 2133) (entity :text "Molière" :label "ORG" :start 2317 :end 2324) (entity :text "Mais" :label "ORG" :start 3017 :end 3021) (entity :text "Françoise," :label "ORG" :start 3377 :end 3387) (entity :text "Combray," :label "ORG" :start 3468 :end 3476) (entity :text "Elle" :label "ORG" :start 3718 :end 3722) (entity :text "Françoise" :label "ORG" :start 4421 :end 4430) (entity :text "Théophile" :label "ORG" :start 4845 :end 4854) (entity :text "Dans" :label "ORG" :start 4881 :end 4885) (entity :text "Françoise" :label "ORG" :start 4988 :end 4997) (entity :text "Swann" :label "ORG" :start 5037 :end 5042) (entity :text "Mais" :label "ORG" :start 5569 :end 5573) (entity :text "Françoise" :label "ORG" :start 5967 :end 5976) (entity :text "Puis" :label "ORG" :start 6407 :end 6411) (entity :text "Elle" :label "ORG" :start 6534 :end 6538) (entity :text "Swann)," :label "ORG" :start 7050 :end 7057) (entity :text "Maintenant" :label "ORG" :start 7598 :end 7608)
 )
 :sentences (list
  (sentence :text "Je ne quittais pas ma mère des yeux, je savais que quand on serait à
table, on ne me permettrait pas de rester pendant toute la durée du
dîner et que pour ne pas contrarier mon père, maman ne me laisserait
pas l’embrasser à plusieurs reprises devant le monde, comme si ç’avait
été dans ma chambre" :start 0 :end 296) (sentence :text "Aussi je me promettais, dans la salle à manger,
pendant qu’on commencerait à dîner et que je sentirais approcher
l’heure, de faire d’avance de ce baiser qui serait si court et furtif,
tout ce que j’en pouvais faire seul, de choisir avec mon regard la
place de la joue que j’embrasserais, de préparer ma pensée pour
pouvoir grâce à ce commencement mental de baiser consacrer toute la
minute que m’accorderait maman à sentir sa joue contre mes lèvres,
comme un peintre qui ne peut obtenir que de courtes séances de pose,
prépare sa palette, et a fait d’avance de souvenir, d’après ses notes,
tout ce pour quoi il pouvait à la rigueur se passer de la présence du
modèle" :start 297 :end 964) (sentence :text "Mais voici qu’avant que le dîner fût sonné mon grand-père eut
la férocité inconsciente de dire: «Le petit a l’air fatigué, il
devrait monter se coucher" :start 965 :end 1117) (sentence :text "On dîne tard du reste ce soir" :start 1118 :end 1148) (sentence :text "» Et mon
père, qui ne gardait pas aussi scrupuleusement que ma grand’mère et
que ma mère la foi des traités, dit: «Oui, allons, vas te coucher" :start 1149 :end 1291) (sentence :text "» Je
voulus embrasser maman, à cet instant on entendit la cloche du dîner" :start 1292 :end 1365) (sentence :text "«Mais non, voyons, laisse ta mère, vous vous êtes assez dit bonsoir
comme cela, ces manifestations sont ridicules" :start 1366 :end 1480) (sentence :text "Allons, monte!» Et il
me fallut partir sans viatique; il me fallut monter chaque marche de
l’escalier, comme dit l’expression populaire, à «contre-cœur», montant
contre mon cœur qui voulait retourner près de ma mère parce qu’elle ne
lui avait pas, en m’embrassant, donné licence de me suivre" :start 1481 :end 1773) (sentence :text "Cet
escalier détesté où je m’engageais toujours si tristement, exhalait
une odeur de vernis qui avait en quelque sorte absorbé, fixé, cette
sorte particulière de chagrin que je ressentais chaque soir et la
rendait peut-être plus cruelle encore pour ma sensibilité parce que
sous cette forme olfactive mon intelligence n’en pouvait plus prendre
sa part" :start 1774 :end 2126) (sentence :text "Quand nous dormons et qu’une rage de dents n’est encore
perçue par nous que comme une jeune fille que nous nous efforçons deux
cents fois de suite de tirer de l’eau ou que comme un vers de Molière
que nous nous répétons sans arrêter, c’est un grand soulagement de
nous réveiller et que notre intelligence puisse débarrasser l’idée de
rage de dents, de tout déguisement héroïque ou cadencé" :start 2127 :end 2516) (sentence :text "C’est
l’inverse de ce soulagement que j’éprouvais quand mon chagrin de
monter dans ma chambre entrait en moi d’une façon infiniment plus
rapide, presque instantanée, à la fois insidieuse et brusque, par
l’inhalation,--beaucoup plus toxique que la pénétration morale,--de
l’odeur de vernis particulière à cet escalier" :start 2517 :end 2834) (sentence :text "Une fois dans ma
chambre, il fallut boucher toutes les issues, fermer les volets,
creuser mon propre tombeau, en défaisant mes couvertures, revêtir le
suaire de ma chemise de nuit" :start 2835 :end 3015) (sentence :text "Mais avant de m’ensevelir dans le lit de
fer qu’on avait ajouté dans la chambre parce que j’avais trop chaud
l’été sous les courtines de reps du grand lit, j’eus un mouvement de
révolte, je voulus essayer d’une ruse de condamné" :start 3016 :end 3244) (sentence :text "J’écrivis à ma mère
en la suppliant de monter pour une chose grave que je ne pouvais lui
dire dans ma lettre" :start 3245 :end 3354) (sentence :text "Mon effroi était que Françoise, la cuisinière de
ma tante qui était chargée de s’occuper de moi quand j’étais à
Combray, refusât de porter mon mot" :start 3355 :end 3502) (sentence :text "Je me doutais que pour elle, faire
une commission à ma mère quand il y avait du monde lui paraîtrait
aussi impossible que pour le portier d’un théâtre de remettre une
lettre à un acteur pendant qu’il est en scène" :start 3503 :end 3716) (sentence :text "Elle possédait à
l’égard des choses qui peuvent ou ne peuvent pas se faire un code
impérieux, abondant, subtil et intransigeant sur des distinctions
insaisissables ou oiseuses (ce qui lui donnait l’apparence de ces lois
antiques qui, à côté de prescriptions féroces comme de massacrer les
enfants à la mamelle, défendent avec une délicatesse exagérée de faire
bouillir le chevreau dans le lait de sa mère, ou de manger dans un
animal le nerf de la cuisse)" :start 3717 :end 4173) (sentence :text "Ce code, si l’on en jugeait par
l’entêtement soudain qu’elle mettait à ne pas vouloir faire certaines
commissions que nous lui donnions, semblait avoir prévu des
complexités sociales et des raffinements mondains tels que rien dans
l’entourage de Françoise et dans sa vie de domestique de village
n’avait pu les lui suggérer; et l’on était obligé de se dire qu’il y
avait en elle un passé français très ancien, noble et mal compris,
comme dans ces cités manufacturières où de vieux hôtels témoignent
qu’il y eut jadis une vie de cour, et où les ouvriers d’une usine de
produits chimiques travaillent au milieu de délicates sculptures qui
représentent le miracle de saint Théophile ou les quatre fils Aymon" :start 4174 :end 4879) (sentence :text "Dans le cas particulier, l’article du code à cause duquel il était peu
probable que sauf le cas d’incendie Françoise allât déranger maman en
présence de M" :start 4880 :end 5035) (sentence :text "Swann pour un aussi petit personnage que moi, exprimait
simplement le respect qu’elle professait non seulement pour les
parents,--comme pour les morts, les prêtres et les rois,--mais encore
pour l’étranger à qui on donne l’hospitalité, respect qui m’aurait
peut-être touché dans un livre mais qui m’irritait toujours dans sa
bouche, à cause du ton grave et attendri qu’elle prenait pour en
parler, et davantage ce soir où le caractère sacré qu’elle conférait
au dîner avait pour effet qu’elle refuserait d’en troubler la
cérémonie" :start 5036 :end 5567) (sentence :text "Mais pour mettre une chance de mon côté, je n’hésitai pas à
mentir et à lui dire que ce n’était pas du tout moi qui avais voulu
écrire à maman, mais que c’était maman qui, en me quittant, m’avait
recommandé de ne pas oublier de lui envoyer une réponse relativement à
un objet qu’elle m’avait prié de chercher; et elle serait certainement
très fâchée si on ne lui remettait pas ce mot" :start 5568 :end 5952) (sentence :text "Je pense que Françoise
ne me crut pas, car, comme les hommes primitifs dont les sens étaient
plus puissants que les nôtres, elle discernait immédiatement, à des
signes insaisissables pour nous, toute vérité que nous voulions lui
cacher; elle regarda pendant cinq minutes l’enveloppe comme si
l’examen du papier et l’aspect de l’écriture allaient la renseigner
sur la nature du contenu ou lui apprendre à quel article de son code
elle devait se référer" :start 5953 :end 6405) (sentence :text "Puis elle sortit d’un air résigné qui semblait
signifier: «C’est-il pas malheureux pour des parents d’avoir un enfant
pareil!» Elle revint au bout d’un moment me dire qu’on n’en était
encore qu’à la glace, qu’il était impossible au maître d’hôtel de
remettre la lettre en ce moment devant tout le monde, mais que, quand
on serait aux rince-bouche, on trouverait le moyen de la faire passer
à maman" :start 6406 :end 6804) (sentence :text "Aussitôt mon anxiété tomba; maintenant ce n’était plus comme
tout à l’heure pour jusqu’à demain que j’avais quitté ma mère, puisque
mon petit mot allait, la fâchant sans doute (et doublement parce que
ce manège me rendrait ridicule aux yeux de Swann), me faire du moins
entrer invisible et ravi dans la même pièce qu’elle, allait lui parler
de moi à l’oreille; puisque cette salle à manger interdite, hostile,
où, il y avait un instant encore, la glace elle-même--le «granité»--et
les rince-bouche me semblaient recéler des plaisirs malfaisants et
mortellement tristes parce que maman les goûtait loin de moi,
s’ouvrait à moi et, comme un fruit devenu doux qui brise son
enveloppe, allait faire jaillir, projeter jusqu’à mon cœur enivré
l’attention de maman tandis qu’elle lirait mes lignes" :start 6805 :end 7596) (sentence :text "Maintenant je
n’étais plus séparé d’elle; les barrières étaient tombées, un fil
délicieux nous réunissait" :start 7597 :end 7703) (sentence :text "Et puis, ce n’était pas tout: maman allait
sans doute venir!" :start 7704 :end 7765)
 ))