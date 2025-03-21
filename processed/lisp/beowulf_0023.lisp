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
 :text "Quand ces tours de jardin de ma grand’mère avaient lieu après dîner,
une chose avait le pouvoir de la faire rentrer: c’était, à un des
moments où la révolution de sa promenade la ramenait périodiquement,
comme un insecte, en face des lumières du petit salon où les liqueurs
étaient servies sur la table à jeu,--si ma grand’tante lui criait:
«Bathilde! viens donc empêcher ton mari de boire du cognac!» Pour la
taquiner, en effet (elle avait apporté dans la famille de mon père un
esprit si différent que tout le monde la plaisantait et la
tourmentait), comme les liqueurs étaient défendues à mon grand-père,
ma grand’tante lui en faisait boire quelques gouttes. Ma pauvre
grand’mère entrait, priait ardemment son mari de ne pas goûter au
cognac; il se fâchait, buvait tout de même sa gorgée, et ma grand’mère
repartait, triste, découragée, souriante pourtant, car elle était si
humble de cœur et si douce que sa tendresse pour les autres et le peu
de cas qu’elle faisait de sa propre personne et de ses souffrances, se
conciliaient dans son regard en un sourire où, contrairement à ce
qu’on voit dans le visage de beaucoup d’humains, il n’y avait
d’ironie que pour elle-même, et pour nous tous comme un baiser de ses
yeux qui ne pouvaient voir ceux qu’elle chérissait sans les caresser
passionnément du regard. Ce supplice que lui infligeait ma
grand’tante, le spectacle des vaines prières de ma grand’mère et de sa
faiblesse, vaincue d’avance, essayant inutilement d’ôter à mon
grand-père le verre à liqueur, c’était de ces choses à la vue
desquelles on s’habitue plus tard jusqu’à les considérer en riant et à
prendre le parti du persécuteur assez résolument et gaiement pour se
persuader à soi-même qu’il ne s’agit pas de persécution; elles me
causaient alors une telle horreur, que j’aurais aimé battre ma
grand’tante. Mais dès que j’entendais: «Bathilde, viens donc empêcher
ton mari de boire du cognac!» déjà homme par la lâcheté, je faisais ce
que nous faisons tous, une fois que nous sommes grands, quand il y a
devant nous des souffrances et des injustices: je ne voulais pas les
voir; je montais sangloter tout en haut de la maison à côté de la
salle d’études, sous les toits, dans une petite pièce sentant l’iris,
et que parfumait aussi un cassis sauvage poussé au dehors entre les
pierres de la muraille et qui passait une branche de fleurs par la
fenêtre entr’ouverte. Destinée à un usage plus spécial et plus
vulgaire, cette pièce, d’où l’on voyait pendant le jour jusqu’au
donjon de Roussainville-le-Pin, servit longtemps de refuge pour moi,
sans doute parce qu’elle était la seule qu’il me fût permis de fermer
à clef, à toutes celles de mes occupations qui réclamaient une
inviolable solitude: la lecture, la rêverie, les larmes et la volupté.
Hélas! je ne savais pas que, bien plus tristement que les petits
écarts de régime de son mari, mon manque de volonté, ma santé
délicate, l’incertitude qu’ils projetaient sur mon avenir,
préoccupaient ma grand’mère, au cours de ces déambulations
incessantes, de l’après-midi et du soir, où on voyait passer et
repasser, obliquement levé vers le ciel, son beau visage aux joues
brunes et sillonnées, devenues au retour de l’âge presque mauves comme
les labours à l’automne, barrées, si elle sortait, par une voilette à
demi relevée, et sur lesquelles, amené là par le froid ou quelque
triste pensée, était toujours en train de sécher un pleur
involontaire."
 :tokens 576
 :processed-at "2025-03-16T02:18:13.792880"
 :entities (list
  (entity :text "Quand" :label "ORG" :start 0 :end 5) (entity :text "«Bathilde!" :label "ORG" :start 341 :end 351) (entity :text "Pour" :label "ORG" :start 402 :end 406) (entity :text "Mais" :label "ORG" :start 1823 :end 1827) (entity :text "«Bathilde," :label "ORG" :start 1849 :end 1859) (entity :text "Destinée" :label "ORG" :start 2382 :end 2390) (entity :text "Hélas!" :label "ORG" :start 2761 :end 2767)
 )
 :sentences (list
  (sentence :text "Quand ces tours de jardin de ma grand’mère avaient lieu après dîner,
une chose avait le pouvoir de la faire rentrer: c’était, à un des
moments où la révolution de sa promenade la ramenait périodiquement,
comme un insecte, en face des lumières du petit salon où les liqueurs
étaient servies sur la table à jeu,--si ma grand’tante lui criait:
«Bathilde! viens donc empêcher ton mari de boire du cognac!» Pour la
taquiner, en effet (elle avait apporté dans la famille de mon père un
esprit si différent que tout le monde la plaisantait et la
tourmentait), comme les liqueurs étaient défendues à mon grand-père,
ma grand’tante lui en faisait boire quelques gouttes" :start 0 :end 660) (sentence :text "Ma pauvre
grand’mère entrait, priait ardemment son mari de ne pas goûter au
cognac; il se fâchait, buvait tout de même sa gorgée, et ma grand’mère
repartait, triste, découragée, souriante pourtant, car elle était si
humble de cœur et si douce que sa tendresse pour les autres et le peu
de cas qu’elle faisait de sa propre personne et de ses souffrances, se
conciliaient dans son regard en un sourire où, contrairement à ce
qu’on voit dans le visage de beaucoup d’humains, il n’y avait
d’ironie que pour elle-même, et pour nous tous comme un baiser de ses
yeux qui ne pouvaient voir ceux qu’elle chérissait sans les caresser
passionnément du regard" :start 661 :end 1309) (sentence :text "Ce supplice que lui infligeait ma
grand’tante, le spectacle des vaines prières de ma grand’mère et de sa
faiblesse, vaincue d’avance, essayant inutilement d’ôter à mon
grand-père le verre à liqueur, c’était de ces choses à la vue
desquelles on s’habitue plus tard jusqu’à les considérer en riant et à
prendre le parti du persécuteur assez résolument et gaiement pour se
persuader à soi-même qu’il ne s’agit pas de persécution; elles me
causaient alors une telle horreur, que j’aurais aimé battre ma
grand’tante" :start 1310 :end 1821) (sentence :text "Mais dès que j’entendais: «Bathilde, viens donc empêcher
ton mari de boire du cognac!» déjà homme par la lâcheté, je faisais ce
que nous faisons tous, une fois que nous sommes grands, quand il y a
devant nous des souffrances et des injustices: je ne voulais pas les
voir; je montais sangloter tout en haut de la maison à côté de la
salle d’études, sous les toits, dans une petite pièce sentant l’iris,
et que parfumait aussi un cassis sauvage poussé au dehors entre les
pierres de la muraille et qui passait une branche de fleurs par la
fenêtre entr’ouverte" :start 1822 :end 2380) (sentence :text "Destinée à un usage plus spécial et plus
vulgaire, cette pièce, d’où l’on voyait pendant le jour jusqu’au
donjon de Roussainville-le-Pin, servit longtemps de refuge pour moi,
sans doute parce qu’elle était la seule qu’il me fût permis de fermer
à clef, à toutes celles de mes occupations qui réclamaient une
inviolable solitude: la lecture, la rêverie, les larmes et la volupté" :start 2381 :end 2759) (sentence :text "Hélas! je ne savais pas que, bien plus tristement que les petits
écarts de régime de son mari, mon manque de volonté, ma santé
délicate, l’incertitude qu’ils projetaient sur mon avenir,
préoccupaient ma grand’mère, au cours de ces déambulations
incessantes, de l’après-midi et du soir, où on voyait passer et
repasser, obliquement levé vers le ciel, son beau visage aux joues
brunes et sillonnées, devenues au retour de l’âge presque mauves comme
les labours à l’automne, barrées, si elle sortait, par une voilette à
demi relevée, et sur lesquelles, amené là par le froid ou quelque
triste pensée, était toujours en train de sécher un pleur
involontaire" :start 2760 :end 3414)
 ))