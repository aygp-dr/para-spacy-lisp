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
 :text "En disant aux Verdurin que Swann était très «smart», Odette leur avait
fait craindre un «ennuyeux». Il leur fit au contraire une excellente
impression dont à leur insu sa fréquentation dans la société élégante
était une des causes indirectes. Il avait en effet sur les hommes même
intelligents qui ne sont jamais allés dans le monde, une des
supériorités de ceux qui y ont un peu vécu, qui est de ne plus le
transfigurer par le désir ou par l’horreur qu’il inspire à
l’imagination, de le considérer comme sans aucune importance. Leur
amabilité, séparée de tout snobisme et de la peur de paraître trop
aimable, devenue indépendante, a cette aisance, cette grâce des
mouvements de ceux dont les membres assouplis exécutent exactement ce
qu’ils veulent, sans participation indiscrète et maladroite du reste
du corps. La simple gymnastique élémentaire de l’homme du monde
tendant la main avec bonne grâce au jeune homme inconnu qu’on lui
présente et s’inclinant avec réserve devant l’ambassadeur à qui on le
présente, avait fini par passer sans qu’il en fût conscient dans toute
l’attitude sociale de Swann, qui vis-à-vis de gens d’un milieu
inférieur au sien comme étaient les Verdurin et leurs amis, fit
instinctivement montre d’un empressement, se livra à des avances,
dont, selon eux, un ennuyeux se fût abstenu. Il n’eut un moment de
froideur qu’avec le docteur Cottard: en le voyant lui cligner de l’œil
et lui sourire d’un air ambigu avant qu’ils se fussent encore parlé
(mimique que Cottard appelait «laisser venir»), Swann crut que le
docteur le connaissait sans doute pour s’être trouvé avec lui en
quelque lieu de plaisir, bien que lui-même y allât pourtant fort peu,
n’ayant jamais vécu dans le monde de la noce. Trouvant l’allusion de
mauvais goût, surtout en présence d’Odette qui pourrait en prendre une
mauvaise idée de lui, il affecta un air glacial. Mais quand il apprit
qu’une dame qui se trouvait près de lui était Mme Cottard, il pensa
qu’un mari aussi jeune n’aurait pas cherché à faire allusion devant sa
femme à des divertissements de ce genre; et il cessa de donner à l’air
entendu du docteur la signification qu’il redoutait. Le peintre invita
tout de suite Swann à venir avec Odette à son atelier, Swann le trouva
gentil. «Peut-être qu’on vous favorisera plus que moi, dit Mme
Verdurin, sur un ton qui feignait d’être piqué, et qu’on vous montrera
le portrait de Cottard (elle l’avait commandé au peintre). Pensez
bien, «monsieur» Biche, rappela-t-elle au peintre, à qui c’était une
plaisanterie consacrée de dire monsieur, à rendre le joli regard, le
petit côté fin, amusant, de l’œil. Vous savez que ce que je veux
surtout avoir, c’est son sourire, ce que je vous ai demandé c’est le
portrait de son sourire. Et comme cette expression lui sembla
remarquable elle la répéta très haut pour être sûre que plusieurs
invités l’eussent entendue, et même, sous un prétexte vague, en fit
d’abord rapprocher quelques-uns. Swann demanda à faire la connaissance
de tout le monde, même d’un vieil ami des Verdurin, Saniette, à qui sa
timidité, sa simplicité et son bon cœur avaient fait perdre partout la
considération que lui avaient value sa science d’archiviste, sa grosse
fortune, et la famille distinguée dont il sortait. Il avait dans la
bouche, en parlant, une bouillie qui était adorable parce qu’on
sentait qu’elle trahissait moins un défaut de la langue qu’une qualité
de l’âme, comme un reste de l’innocence du premier âge qu’il n’avait
jamais perdue. Toutes les consonnes qu’il ne pouvait prononcer
figuraient comme autant de duretés dont il était incapable. En
demandant à être présenté à M. Saniette, Swann fit à Mme Verdurin
l’effet de renverser les rôles (au point qu’en réponse, elle dit en
insistant sur la différence: «Monsieur Swann, voudriez-vous avoir la
bonté de me permettre de vous présenter notre ami Saniette»), mais
excita chez Saniette une sympathie ardente que d’ailleurs les Verdurin
ne révélèrent jamais à Swann, car Saniette les agaçait un peu et ils
ne tenaient pas à lui faire des amis. Mais en revanche Swann les
toucha infiniment en croyant devoir demander tout de suite à faire la
connaissance de la tante du pianiste. En robe noire comme toujours,
parce qu’elle croyait qu’en noir on est toujours bien et que c’est ce
qu’il y a de plus distingué, elle avait le visage excessivement rouge
comme chaque fois qu’elle venait de manger. Elle s’inclina devant
Swann avec respect, mais se redressa avec majesté. Comme elle n’avait
aucune instruction et avait peur de faire des fautes de français, elle
prononçait exprès d’une manière confuse, pensant que si elle lâchait
un cuir il serait estompé d’un tel vague qu’on ne pourrait le
distinguer avec certitude, de sorte que sa conversation n’était qu’un
graillonnement indistinct duquel émergeaient de temps à autre les
rares vocables dont elle se sentait sûre. Swann crut pouvoir se moquer
légèrement d’elle en parlant à M. Verdurin lequel au contraire fut
piqué."
 :tokens 822
 :processed-at "2025-03-16T02:18:14.247511"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 14 :end 22) (entity :text "Swann" :label "ORG" :start 27 :end 32) (entity :text "Odette" :label "ORG" :start 53 :end 59) (entity :text "Leur" :label "ORG" :start 529 :end 533) (entity :text "Swann," :label "ORG" :start 1097 :end 1103) (entity :text "Verdurin" :label "ORG" :start 1174 :end 1182) (entity :text "Cottard:" :label "ORG" :start 1363 :end 1371) (entity :text "Cottard" :label "ORG" :start 1487 :end 1494) (entity :text "Swann" :label "ORG" :start 1522 :end 1527) (entity :text "Trouvant" :label "ORG" :start 1721 :end 1729) (entity :text "Mais" :label "ORG" :start 1864 :end 1868) (entity :text "Cottard," :label "ORG" :start 1935 :end 1943) (entity :text "Swann" :label "ORG" :start 2180 :end 2185) (entity :text "Odette" :label "ORG" :start 2199 :end 2205) (entity :text "Swann" :label "ORG" :start 2221 :end 2226) (entity :text "Verdurin," :label "ORG" :start 2300 :end 2309) (entity :text "Cottard" :label "ORG" :start 2386 :end 2393) (entity :text "Pensez" :label "ORG" :start 2430 :end 2436) (entity :text "Biche," :label "ORG" :start 2454 :end 2460) (entity :text "Vous" :label "ORG" :start 2610 :end 2614) (entity :text "Swann" :label "ORG" :start 2938 :end 2943) (entity :text "Verdurin," :label "ORG" :start 3018 :end 3027) (entity :text "Saniette," :label "ORG" :start 3028 :end 3037) (entity :text "Toutes" :label "ORG" :start 3476 :end 3482) (entity :text "Saniette," :label "ORG" :start 3618 :end 3627) (entity :text "Swann" :label "ORG" :start 3628 :end 3633) (entity :text "Verdurin" :label "ORG" :start 3644 :end 3652) (entity :text "«Monsieur" :label "ORG" :start 3750 :end 3759) (entity :text "Swann," :label "ORG" :start 3760 :end 3766) (entity :text "Saniette»)," :label "ORG" :start 3840 :end 3851) (entity :text "Saniette" :label "ORG" :start 3869 :end 3877) (entity :text "Verdurin" :label "ORG" :start 3919 :end 3927) (entity :text "Swann," :label "ORG" :start 3951 :end 3957) (entity :text "Saniette" :label "ORG" :start 3962 :end 3970) (entity :text "Mais" :label "ORG" :start 4035 :end 4039) (entity :text "Swann" :label "ORG" :start 4052 :end 4057) (entity :text "Elle" :label "ORG" :start 4384 :end 4388) (entity :text "Swann" :label "ORG" :start 4406 :end 4411) (entity :text "Comme" :label "ORG" :start 4457 :end 4462) (entity :text "Swann" :label "ORG" :start 4856 :end 4861) (entity :text "Verdurin" :label "ORG" :start 4919 :end 4927)
 )
 :sentences (list
  (sentence :text "En disant aux Verdurin que Swann était très «smart», Odette leur avait
fait craindre un «ennuyeux»" :start 0 :end 98) (sentence :text "Il leur fit au contraire une excellente
impression dont à leur insu sa fréquentation dans la société élégante
était une des causes indirectes" :start 99 :end 241) (sentence :text "Il avait en effet sur les hommes même
intelligents qui ne sont jamais allés dans le monde, une des
supériorités de ceux qui y ont un peu vécu, qui est de ne plus le
transfigurer par le désir ou par l’horreur qu’il inspire à
l’imagination, de le considérer comme sans aucune importance" :start 242 :end 527) (sentence :text "Leur
amabilité, séparée de tout snobisme et de la peur de paraître trop
aimable, devenue indépendante, a cette aisance, cette grâce des
mouvements de ceux dont les membres assouplis exécutent exactement ce
qu’ils veulent, sans participation indiscrète et maladroite du reste
du corps" :start 528 :end 812) (sentence :text "La simple gymnastique élémentaire de l’homme du monde
tendant la main avec bonne grâce au jeune homme inconnu qu’on lui
présente et s’inclinant avec réserve devant l’ambassadeur à qui on le
présente, avait fini par passer sans qu’il en fût conscient dans toute
l’attitude sociale de Swann, qui vis-à-vis de gens d’un milieu
inférieur au sien comme étaient les Verdurin et leurs amis, fit
instinctivement montre d’un empressement, se livra à des avances,
dont, selon eux, un ennuyeux se fût abstenu" :start 813 :end 1311) (sentence :text "Il n’eut un moment de
froideur qu’avec le docteur Cottard: en le voyant lui cligner de l’œil
et lui sourire d’un air ambigu avant qu’ils se fussent encore parlé
(mimique que Cottard appelait «laisser venir»), Swann crut que le
docteur le connaissait sans doute pour s’être trouvé avec lui en
quelque lieu de plaisir, bien que lui-même y allât pourtant fort peu,
n’ayant jamais vécu dans le monde de la noce" :start 1312 :end 1719) (sentence :text "Trouvant l’allusion de
mauvais goût, surtout en présence d’Odette qui pourrait en prendre une
mauvaise idée de lui, il affecta un air glacial" :start 1720 :end 1862) (sentence :text "Mais quand il apprit
qu’une dame qui se trouvait près de lui était Mme Cottard, il pensa
qu’un mari aussi jeune n’aurait pas cherché à faire allusion devant sa
femme à des divertissements de ce genre; et il cessa de donner à l’air
entendu du docteur la signification qu’il redoutait" :start 1863 :end 2146) (sentence :text "Le peintre invita
tout de suite Swann à venir avec Odette à son atelier, Swann le trouva
gentil" :start 2147 :end 2243) (sentence :text "«Peut-être qu’on vous favorisera plus que moi, dit Mme
Verdurin, sur un ton qui feignait d’être piqué, et qu’on vous montrera
le portrait de Cottard (elle l’avait commandé au peintre)" :start 2244 :end 2428) (sentence :text "Pensez
bien, «monsieur» Biche, rappela-t-elle au peintre, à qui c’était une
plaisanterie consacrée de dire monsieur, à rendre le joli regard, le
petit côté fin, amusant, de l’œil" :start 2429 :end 2608) (sentence :text "Vous savez que ce que je veux
surtout avoir, c’est son sourire, ce que je vous ai demandé c’est le
portrait de son sourire" :start 2609 :end 2732) (sentence :text "Et comme cette expression lui sembla
remarquable elle la répéta très haut pour être sûre que plusieurs
invités l’eussent entendue, et même, sous un prétexte vague, en fit
d’abord rapprocher quelques-uns" :start 2733 :end 2936) (sentence :text "Swann demanda à faire la connaissance
de tout le monde, même d’un vieil ami des Verdurin, Saniette, à qui sa
timidité, sa simplicité et son bon cœur avaient fait perdre partout la
considération que lui avaient value sa science d’archiviste, sa grosse
fortune, et la famille distinguée dont il sortait" :start 2937 :end 3238) (sentence :text "Il avait dans la
bouche, en parlant, une bouillie qui était adorable parce qu’on
sentait qu’elle trahissait moins un défaut de la langue qu’une qualité
de l’âme, comme un reste de l’innocence du premier âge qu’il n’avait
jamais perdue" :start 3239 :end 3474) (sentence :text "Toutes les consonnes qu’il ne pouvait prononcer
figuraient comme autant de duretés dont il était incapable" :start 3475 :end 3582) (sentence :text "En
demandant à être présenté à M" :start 3583 :end 3616) (sentence :text "Saniette, Swann fit à Mme Verdurin
l’effet de renverser les rôles (au point qu’en réponse, elle dit en
insistant sur la différence: «Monsieur Swann, voudriez-vous avoir la
bonté de me permettre de vous présenter notre ami Saniette»), mais
excita chez Saniette une sympathie ardente que d’ailleurs les Verdurin
ne révélèrent jamais à Swann, car Saniette les agaçait un peu et ils
ne tenaient pas à lui faire des amis" :start 3617 :end 4033) (sentence :text "Mais en revanche Swann les
toucha infiniment en croyant devoir demander tout de suite à faire la
connaissance de la tante du pianiste" :start 4034 :end 4168) (sentence :text "En robe noire comme toujours,
parce qu’elle croyait qu’en noir on est toujours bien et que c’est ce
qu’il y a de plus distingué, elle avait le visage excessivement rouge
comme chaque fois qu’elle venait de manger" :start 4169 :end 4382) (sentence :text "Elle s’inclina devant
Swann avec respect, mais se redressa avec majesté" :start 4383 :end 4455) (sentence :text "Comme elle n’avait
aucune instruction et avait peur de faire des fautes de français, elle
prononçait exprès d’une manière confuse, pensant que si elle lâchait
un cuir il serait estompé d’un tel vague qu’on ne pourrait le
distinguer avec certitude, de sorte que sa conversation n’était qu’un
graillonnement indistinct duquel émergeaient de temps à autre les
rares vocables dont elle se sentait sûre" :start 4456 :end 4854) (sentence :text "Swann crut pouvoir se moquer
légèrement d’elle en parlant à M" :start 4855 :end 4917) (sentence :text "Verdurin lequel au contraire fut
piqué" :start 4918 :end 4957)
 ))