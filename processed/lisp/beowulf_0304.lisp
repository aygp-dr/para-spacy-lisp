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
 :text "Le départ de Mlle Swann qui,--en m’ôtant la chance terrible de la voir
apparaître dans une allée, d’être connu et méprisé par la petite fille
privilégiée qui avait Bergotte pour ami et allait avec lui visiter des
cathédrales--, me rendait la contemplation de Tansonville indifférente
la première fois où elle m’était permise, semblait au contraire
ajouter à cette propriété, aux yeux de mon grand-père et de mon père,
des commodités, un agrément passager, et, comme fait pour une
excursion en pays de montagnes, l’absence de tout nuage, rendre cette
journée exceptionnellement propice à une promenade de ce côté;
j’aurais voulu que leurs calculs fussent déjoués, qu’un miracle fît
apparaître Mlle Swann avec son père, si près de nous, que nous
n’aurions pas le temps de l’éviter et serions obligés de faire sa
connaissance. Aussi, quand tout d’un coup, j’aperçus sur l’herbe,
comme un signe de sa présence possible, un koufin oublié à côté d’une
ligne dont le bouchon flottait sur l’eau, je m’empressai de détourner
d’un autre côté, les regards de mon père et de mon grand-père.
D’ailleurs Swann nous ayant dit que c’était mal à lui de s’absenter,
car il avait pour le moment de la famille à demeure, la ligne pouvait
appartenir à quelque invité. On n’entendait aucun bruit de pas dans
les allées. Divisant la hauteur d’un arbre incertain, un invisible
oiseau s’ingéniait à faire trouver la journée courte, explorait d’une
note prolongée, la solitude environnante, mais il recevait d’elle une
réplique si unanime, un choc en retour si redoublé de silence et
d’immobilité qu’on aurait dit qu’il venait d’arrêter pour toujours
l’instant qu’il avait cherché à faire passer plus vite. La lumière
tombait si implacable du ciel devenu fixe que l’on aurait voulu se
soustraire à son attention, et l’eau dormante elle-même, dont des
insectes irritaient perpétuellement le sommeil, rêvant sans doute de
quelque Maelstrôm imaginaire, augmentait le trouble où m’avait jeté la
vue du flotteur de liège en semblant l’entraîner à toute vitesse sur
les étendues silencieuses du ciel reflété; presque vertical il
paraissait prêt à plonger et déjà je me demandais, si, sans tenir
compte du désir et de la crainte que j’avais de la connaître, je
n’avais pas le devoir de faire prévenir Mlle Swann que le poisson
mordait,--quand il me fallut rejoindre en courant mon père et mon
grand-père qui m’appelaient, étonnés que je ne les eusse pas suivis
dans le petit chemin qui monte vers les champs et où ils s’étaient
engagés. Je le trouvai tout bourdonnant de l’odeur des aubépines. La
haie formait comme une suite de chapelles qui disparaissaient sous la
jonchée de leurs fleurs amoncelées en reposoir; au-dessous d’elles, le
soleil posait à terre un quadrillage de clarté, comme s’il venait de
traverser une verrière; leur parfum s’étendait aussi onctueux, aussi
délimité en sa forme que si j’eusse été devant l’autel de la Vierge,
et les fleurs, aussi parées, tenaient chacune d’un air distrait son
étincelant bouquet d’étamines, fines et rayonnantes nervures de style
flamboyant comme celles qui à l’église ajouraient la rampe du jubé ou
les meneaux du vitrail et qui s’épanouissaient en blanche chair de
fleur de fraisier. Combien naïves et paysannes en comparaison
sembleraient les églantines qui, dans quelques semaines, monteraient
elles aussi en plein soleil le même chemin rustique, en la soie unie
de leur corsage rougissant qu’un souffle défait."
 :tokens 556
 :processed-at "2025-03-16T02:18:14.106528"
 :entities (list
  (entity :text "Mlle" :label "ORG" :start 13 :end 17) (entity :text "Swann" :label "ORG" :start 18 :end 23) (entity :text "Bergotte" :label "ORG" :start 164 :end 172) (entity :text "Tansonville" :label "ORG" :start 259 :end 270) (entity :text "Mlle" :label "ORG" :start 692 :end 696) (entity :text "Swann" :label "ORG" :start 697 :end 702) (entity :text "Swann" :label "ORG" :start 1090 :end 1095) (entity :text "Divisant" :label "ORG" :start 1298 :end 1306) (entity :text "Maelstrôm" :label "ORG" :start 1902 :end 1911) (entity :text "Mlle" :label "ORG" :start 2268 :end 2272) (entity :text "Swann" :label "ORG" :start 2273 :end 2278) (entity :text "Vierge," :label "ORG" :start 2904 :end 2911) (entity :text "Combien" :label "ORG" :start 3206 :end 3213)
 )
 :sentences (list
  (sentence :text "Le départ de Mlle Swann qui,--en m’ôtant la chance terrible de la voir
apparaître dans une allée, d’être connu et méprisé par la petite fille
privilégiée qui avait Bergotte pour ami et allait avec lui visiter des
cathédrales--, me rendait la contemplation de Tansonville indifférente
la première fois où elle m’était permise, semblait au contraire
ajouter à cette propriété, aux yeux de mon grand-père et de mon père,
des commodités, un agrément passager, et, comme fait pour une
excursion en pays de montagnes, l’absence de tout nuage, rendre cette
journée exceptionnellement propice à une promenade de ce côté;
j’aurais voulu que leurs calculs fussent déjoués, qu’un miracle fît
apparaître Mlle Swann avec son père, si près de nous, que nous
n’aurions pas le temps de l’éviter et serions obligés de faire sa
connaissance" :start 0 :end 822) (sentence :text "Aussi, quand tout d’un coup, j’aperçus sur l’herbe,
comme un signe de sa présence possible, un koufin oublié à côté d’une
ligne dont le bouchon flottait sur l’eau, je m’empressai de détourner
d’un autre côté, les regards de mon père et de mon grand-père" :start 823 :end 1077) (sentence :text "D’ailleurs Swann nous ayant dit que c’était mal à lui de s’absenter,
car il avait pour le moment de la famille à demeure, la ligne pouvait
appartenir à quelque invité" :start 1078 :end 1245) (sentence :text "On n’entendait aucun bruit de pas dans
les allées" :start 1246 :end 1296) (sentence :text "Divisant la hauteur d’un arbre incertain, un invisible
oiseau s’ingéniait à faire trouver la journée courte, explorait d’une
note prolongée, la solitude environnante, mais il recevait d’elle une
réplique si unanime, un choc en retour si redoublé de silence et
d’immobilité qu’on aurait dit qu’il venait d’arrêter pour toujours
l’instant qu’il avait cherché à faire passer plus vite" :start 1297 :end 1679) (sentence :text "La lumière
tombait si implacable du ciel devenu fixe que l’on aurait voulu se
soustraire à son attention, et l’eau dormante elle-même, dont des
insectes irritaient perpétuellement le sommeil, rêvant sans doute de
quelque Maelstrôm imaginaire, augmentait le trouble où m’avait jeté la
vue du flotteur de liège en semblant l’entraîner à toute vitesse sur
les étendues silencieuses du ciel reflété; presque vertical il
paraissait prêt à plonger et déjà je me demandais, si, sans tenir
compte du désir et de la crainte que j’avais de la connaître, je
n’avais pas le devoir de faire prévenir Mlle Swann que le poisson
mordait,--quand il me fallut rejoindre en courant mon père et mon
grand-père qui m’appelaient, étonnés que je ne les eusse pas suivis
dans le petit chemin qui monte vers les champs et où ils s’étaient
engagés" :start 1680 :end 2502) (sentence :text "Je le trouvai tout bourdonnant de l’odeur des aubépines" :start 2503 :end 2559) (sentence :text "La
haie formait comme une suite de chapelles qui disparaissaient sous la
jonchée de leurs fleurs amoncelées en reposoir; au-dessous d’elles, le
soleil posait à terre un quadrillage de clarté, comme s’il venait de
traverser une verrière; leur parfum s’étendait aussi onctueux, aussi
délimité en sa forme que si j’eusse été devant l’autel de la Vierge,
et les fleurs, aussi parées, tenaient chacune d’un air distrait son
étincelant bouquet d’étamines, fines et rayonnantes nervures de style
flamboyant comme celles qui à l’église ajouraient la rampe du jubé ou
les meneaux du vitrail et qui s’épanouissaient en blanche chair de
fleur de fraisier" :start 2560 :end 3204) (sentence :text "Combien naïves et paysannes en comparaison
sembleraient les églantines qui, dans quelques semaines, monteraient
elles aussi en plein soleil le même chemin rustique, en la soie unie
de leur corsage rougissant qu’un souffle défait" :start 3205 :end 3434)
 ))