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
 :text "Comme tout ce qui environnait Odette et n’était en quelque sorte que
le mode selon lequel il pouvait la voir, causer avec elle, il aimait
la société des Verdurin. Là, comme au fond de tous les
divertissements, repas, musique, jeux, soupers costumés, parties de
campagne, parties de théâtre, même les rares «grandes soirées» données
pour les «ennuyeux», il y avait la présence d’Odette, la vue d’Odette,
la conversation avec Odette, dont les Verdurin faisaient à Swann, en
l’invitant, le don inestimable, il se plaisait mieux que partout
ailleurs dans le «petit noyau», et cherchait à lui attribuer des
mérites réels, car il s’imaginait ainsi que par goût il le
fréquenterait toute sa vie. Or, n’osant pas se dire, par peur de ne
pas le croire, qu’il aimerait toujours Odette, du moins en cherchant à
supposer qu’il fréquenterait toujours les Verdurin (proposition qui, a
priori, soulevait moins d’objections de principe de la part de son
intelligence), il se voyait dans l’avenir continuant à rencontrer
chaque soir Odette; cela ne revenait peut-être pas tout à fait au même
que l’aimer toujours, mais, pour le moment, pendant qu’il l’aimait,
croire qu’il ne cesserait pas un jour de la voir, c’est tout ce qu’il
demandait. «Quel charmant milieu, se disait-il. Comme c’est au fond la
vraie vie qu’on mène là! Comme on y est plus intelligent, plus artiste
que dans le monde. Comme Mme Verdurin, malgré de petites exagérations
un peu risibles, a un amour sincère de la peinture, de la musique!
quelle passion pour les œuvres, quel désir de faire plaisir aux
artistes! Elle se fait une idée inexacte des gens du monde; mais avec
cela que le monde n’en a pas une plus fausse encore des milieux
artistes! Peut-être n’ai-je pas de grands besoins intellectuels à
assouvir dans la conversation, mais je me plais parfaitement bien avec
Cottard, quoiqu’il fasse des calembours ineptes. Et quant au peintre,
si sa prétention est déplaisante quand il cherche à étonner, en
revanche c’est une des plus belles intelligences que j’aie connues. Et
puis surtout, là, on se sent libre, on fait ce qu’on veut sans
contrainte, sans cérémonie. Quelle dépense de bonne humeur il se fait
par jour dans ce salon-là! Décidément, sauf quelques rares exceptions,
je n’irai plus jamais que dans ce milieu. C’est là que j’aurai de plus
en plus mes habitudes et ma vie.»"
 :tokens 392
 :processed-at "2025-03-16T02:18:14.408133"
 :entities (list
  (entity :text "Comme" :label "ORG" :start 0 :end 5) (entity :text "Odette" :label "ORG" :start 30 :end 36) (entity :text "Verdurin." :label "ORG" :start 153 :end 162) (entity :text "Odette," :label "ORG" :start 378 :end 385) (entity :text "Verdurin" :label "ORG" :start 441 :end 449) (entity :text "Swann," :label "ORG" :start 462 :end 468) (entity :text "Odette," :label "ORG" :start 768 :end 775) (entity :text "Verdurin" :label "ORG" :start 842 :end 850) (entity :text "Odette;" :label "ORG" :start 1016 :end 1023) (entity :text "«Quel" :label "ORG" :start 1224 :end 1229) (entity :text "Comme" :label "ORG" :start 1261 :end 1266) (entity :text "Comme" :label "ORG" :start 1309 :end 1314) (entity :text "Comme" :label "ORG" :start 1374 :end 1379) (entity :text "Verdurin," :label "ORG" :start 1384 :end 1393) (entity :text "Elle" :label "ORG" :start 1566 :end 1570) (entity :text "Cottard," :label "ORG" :start 1827 :end 1835) (entity :text "Quelle" :label "ORG" :start 2123 :end 2129) (entity :text "Décidément," :label "ORG" :start 2192 :end 2203)
 )
 :sentences (list
  (sentence :text "Comme tout ce qui environnait Odette et n’était en quelque sorte que
le mode selon lequel il pouvait la voir, causer avec elle, il aimait
la société des Verdurin" :start 0 :end 161) (sentence :text "Là, comme au fond de tous les
divertissements, repas, musique, jeux, soupers costumés, parties de
campagne, parties de théâtre, même les rares «grandes soirées» données
pour les «ennuyeux», il y avait la présence d’Odette, la vue d’Odette,
la conversation avec Odette, dont les Verdurin faisaient à Swann, en
l’invitant, le don inestimable, il se plaisait mieux que partout
ailleurs dans le «petit noyau», et cherchait à lui attribuer des
mérites réels, car il s’imaginait ainsi que par goût il le
fréquenterait toute sa vie" :start 162 :end 687) (sentence :text "Or, n’osant pas se dire, par peur de ne
pas le croire, qu’il aimerait toujours Odette, du moins en cherchant à
supposer qu’il fréquenterait toujours les Verdurin (proposition qui, a
priori, soulevait moins d’objections de principe de la part de son
intelligence), il se voyait dans l’avenir continuant à rencontrer
chaque soir Odette; cela ne revenait peut-être pas tout à fait au même
que l’aimer toujours, mais, pour le moment, pendant qu’il l’aimait,
croire qu’il ne cesserait pas un jour de la voir, c’est tout ce qu’il
demandait" :start 688 :end 1222) (sentence :text "«Quel charmant milieu, se disait-il" :start 1223 :end 1259) (sentence :text "Comme c’est au fond la
vraie vie qu’on mène là! Comme on y est plus intelligent, plus artiste
que dans le monde" :start 1260 :end 1372) (sentence :text "Comme Mme Verdurin, malgré de petites exagérations
un peu risibles, a un amour sincère de la peinture, de la musique!
quelle passion pour les œuvres, quel désir de faire plaisir aux
artistes! Elle se fait une idée inexacte des gens du monde; mais avec
cela que le monde n’en a pas une plus fausse encore des milieux
artistes! Peut-être n’ai-je pas de grands besoins intellectuels à
assouvir dans la conversation, mais je me plais parfaitement bien avec
Cottard, quoiqu’il fasse des calembours ineptes" :start 1373 :end 1874) (sentence :text "Et quant au peintre,
si sa prétention est déplaisante quand il cherche à étonner, en
revanche c’est une des plus belles intelligences que j’aie connues" :start 1875 :end 2027) (sentence :text "Et
puis surtout, là, on se sent libre, on fait ce qu’on veut sans
contrainte, sans cérémonie" :start 2028 :end 2121) (sentence :text "Quelle dépense de bonne humeur il se fait
par jour dans ce salon-là! Décidément, sauf quelques rares exceptions,
je n’irai plus jamais que dans ce milieu" :start 2122 :end 2276) (sentence :text "C’est là que j’aurai de plus
en plus mes habitudes et ma vie" :start 2277 :end 2338) (sentence :text "»" :start 322 :end 323)
 ))