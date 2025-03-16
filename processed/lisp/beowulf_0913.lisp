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
 :text "Elle avait disparu. Swann savait qu’elle reparaîtrait à la fin du
dernier mouvement, après tout un long morceau que le pianiste de Mme
Verdurin sautait toujours. Il y avait là d’admirables idées que Swann
n’avait pas distinguées à la première audition et qu’il percevait
maintenant, comme si elles se fussent, dans le vestiaire de sa
mémoire, débarrassées du déguisement uniforme de la nouveauté. Swann
écoutait tous les thèmes épars qui entreraient dans la composition de
la phrase, comme les prémisses dans la conclusion nécessaire, il
assistait à sa genèse. «O audace aussi géniale peut-être, se
disait-il, que celle d’un Lavoisier, d’un Ampère, l’audace d’un
Vinteuil expérimentant, découvrant les lois secrètes d’une force
inconnue, menant à travers l’inexploré, vers le seul but possible,
l’attelage invisible auquel il se fie et qu’il n’apercevra jamais.» Le
beau dialogue que Swann entendit entre le piano et le violon au
commencement du dernier morceau! La suppression des mots humains, loin
d’y laisser régner la fantaisie, comme on aurait pu croire, l’en avait
éliminée; jamais le langage parlé ne fut si inflexiblement nécessité,
ne connut à ce point la pertinence des questions, l’évidence des
réponses. D’abord le piano solitaire se plaignit, comme un oiseau
abandonné de sa compagne; le violon l’entendit, lui répondit comme
d’un arbre voisin. C’était comme au commencement du monde, comme s’il
n’y avait encore eu qu’eux deux sur la terre, ou plutôt dans ce monde
fermé à tout le reste, construit par la logique d’un créateur et où
ils ne seraient jamais que tous les deux: cette sonate. Est-ce un
oiseau, est-ce l’âme incomplète encore de la petite phrase, est-ce une
fée, invisible et gémissant dont le piano ensuite redisait tendrement
la plainte? Ses cris étaient si soudains que le violoniste devait se
précipiter sur son archet pour les recueillir. Merveilleux oiseau! le
violoniste semblait vouloir le charmer, l’apprivoiser, le capter. Déjà
il avait passé dans son âme, déjà la petite phrase évoquée agitait
comme celui d’un médium le corps vraiment possédé du violoniste. Swann
savait qu’elle allait parler encore une fois. Et il s’était si bien
dédoublé que l’attente de l’instant imminent où il allait se retrouver
en face d’elle le secoua d’un de ces sanglots qu’un beau vers ou une
triste nouvelle provoquent en nous, non pas quand nous sommes seuls,
mais si nous les apprenons à des amis en qui nous nous apercevons
comme un autre dont l’émotion probable les attendrit. Elle reparut,
mais cette fois pour se suspendre dans l’air et se jouer un instant
seulement, comme immobile, et pour expirer après. Aussi Swann ne
perdait-il rien du temps si court où elle se prorogeait. Elle était
encore là comme une bulle irisée qui se soutient. Tel un arc-en-ciel,
dont l’éclat faiblit, s’abaisse, puis se relève et avant de
s’éteindre, s’exalte un moment comme il n’avait pas encore fait: aux
deux couleurs qu’elle avait jusque-là laissé paraître, elle ajouta
d’autres cordes diaprées, toutes celles du prisme, et les fit chanter.
Swann n’osait pas bouger et aurait voulu faire tenir tranquilles aussi
les autres personnes, comme si le moindre mouvement avait pu
compromettre le prestige surnaturel, délicieux et fragile qui était si
près de s’évanouir. Personne, à dire vrai, ne songeait à parler. La
parole ineffable d’un seul absent, peut-être d’un mort (Swann ne
savait pas si Vinteuil vivait encore) s’exhalant au-dessus des rites
de ces officiants, suffisait à tenir en échec l’attention de trois
cents personnes, et faisait de cette estrade où une âme était ainsi
évoquée un des plus nobles autels où pût s’accomplir une cérémonie
surnaturelle. De sorte que quand la phrase se fut enfin défaite
flottant en lambeaux dans les motifs suivants qui déjà avaient pris sa
place, si Swann au premier instant fut irrité de voir la comtesse de
Monteriender, célèbre par ses naïvetés, se pencher vers lui pour lui
confier ses impressions avant même que la sonate fût finie, il ne put
s’empêcher de sourire, et peut-être de trouver aussi un sens profond
qu’elle n’y voyait pas, dans les mots dont elle se servit. Émerveillée
par la virtuosité des exécutants, la comtesse s’écria en s’adressant à
Swann: «C’est prodigieux, je n’ai jamais rien vu d’aussi fort...» Mais
un scrupule d’exactitude lui faisant corriger cette première
assertion, elle ajouta cette réserve: «rien d’aussi fort... depuis les
tables tournantes!»"
 :tokens 714
 :processed-at "2025-03-16T02:18:14.753053"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 20 :end 25) (entity :text "Verdurin" :label "ORG" :start 135 :end 143) (entity :text "Swann" :label "ORG" :start 199 :end 204) (entity :text "Swann" :label "ORG" :start 397 :end 402) (entity :text "Lavoisier," :label "ORG" :start 625 :end 635) (entity :text "Vinteuil" :label "ORG" :start 663 :end 671) (entity :text "Swann" :label "ORG" :start 884 :end 889) (entity :text "Merveilleux" :label "ORG" :start 1871 :end 1882) (entity :text "Déjà" :label "ORG" :start 1960 :end 1964) (entity :text "Swann" :label "ORG" :start 2097 :end 2102) (entity :text "Elle" :label "ORG" :start 2500 :end 2504) (entity :text "Swann" :label "ORG" :start 2638 :end 2643) (entity :text "Elle" :label "ORG" :start 2704 :end 2708) (entity :text "Swann" :label "ORG" :start 3052 :end 3057) (entity :text "Personne," :label "ORG" :start 3275 :end 3284) (entity :text "(Swann" :label "ORG" :start 3378 :end 3384) (entity :text "Vinteuil" :label "ORG" :start 3402 :end 3410) (entity :text "Swann" :label "ORG" :start 3804 :end 3809) (entity :text "Monteriender," :label "ORG" :start 3863 :end 3876) (entity :text "Émerveillée" :label "ORG" :start 4130 :end 4141) (entity :text "Swann:" :label "ORG" :start 4213 :end 4219) (entity :text "Mais" :label "ORG" :start 4279 :end 4283)
 )
 :sentences (list
  (sentence :text "Elle avait disparu" :start 0 :end 18) (sentence :text "Swann savait qu’elle reparaîtrait à la fin du
dernier mouvement, après tout un long morceau que le pianiste de Mme
Verdurin sautait toujours" :start 19 :end 160) (sentence :text "Il y avait là d’admirables idées que Swann
n’avait pas distinguées à la première audition et qu’il percevait
maintenant, comme si elles se fussent, dans le vestiaire de sa
mémoire, débarrassées du déguisement uniforme de la nouveauté" :start 161 :end 395) (sentence :text "Swann
écoutait tous les thèmes épars qui entreraient dans la composition de
la phrase, comme les prémisses dans la conclusion nécessaire, il
assistait à sa genèse" :start 396 :end 559) (sentence :text "«O audace aussi géniale peut-être, se
disait-il, que celle d’un Lavoisier, d’un Ampère, l’audace d’un
Vinteuil expérimentant, découvrant les lois secrètes d’une force
inconnue, menant à travers l’inexploré, vers le seul but possible,
l’attelage invisible auquel il se fie et qu’il n’apercevra jamais" :start 560 :end 860) (sentence :text "» Le
beau dialogue que Swann entendit entre le piano et le violon au
commencement du dernier morceau! La suppression des mots humains, loin
d’y laisser régner la fantaisie, comme on aurait pu croire, l’en avait
éliminée; jamais le langage parlé ne fut si inflexiblement nécessité,
ne connut à ce point la pertinence des questions, l’évidence des
réponses" :start 861 :end 1215) (sentence :text "D’abord le piano solitaire se plaignit, comme un oiseau
abandonné de sa compagne; le violon l’entendit, lui répondit comme
d’un arbre voisin" :start 1216 :end 1357) (sentence :text "C’était comme au commencement du monde, comme s’il
n’y avait encore eu qu’eux deux sur la terre, ou plutôt dans ce monde
fermé à tout le reste, construit par la logique d’un créateur et où
ils ne seraient jamais que tous les deux: cette sonate" :start 1358 :end 1602) (sentence :text "Est-ce un
oiseau, est-ce l’âme incomplète encore de la petite phrase, est-ce une
fée, invisible et gémissant dont le piano ensuite redisait tendrement
la plainte? Ses cris étaient si soudains que le violoniste devait se
précipiter sur son archet pour les recueillir" :start 1603 :end 1869) (sentence :text "Merveilleux oiseau! le
violoniste semblait vouloir le charmer, l’apprivoiser, le capter" :start 1870 :end 1958) (sentence :text "Déjà
il avait passé dans son âme, déjà la petite phrase évoquée agitait
comme celui d’un médium le corps vraiment possédé du violoniste" :start 1959 :end 2095) (sentence :text "Swann
savait qu’elle allait parler encore une fois" :start 2096 :end 2147) (sentence :text "Et il s’était si bien
dédoublé que l’attente de l’instant imminent où il allait se retrouver
en face d’elle le secoua d’un de ces sanglots qu’un beau vers ou une
triste nouvelle provoquent en nous, non pas quand nous sommes seuls,
mais si nous les apprenons à des amis en qui nous nous apercevons
comme un autre dont l’émotion probable les attendrit" :start 2148 :end 2498) (sentence :text "Elle reparut,
mais cette fois pour se suspendre dans l’air et se jouer un instant
seulement, comme immobile, et pour expirer après" :start 2499 :end 2630) (sentence :text "Aussi Swann ne
perdait-il rien du temps si court où elle se prorogeait" :start 2631 :end 2702) (sentence :text "Elle était
encore là comme une bulle irisée qui se soutient" :start 2703 :end 2763) (sentence :text "Tel un arc-en-ciel,
dont l’éclat faiblit, s’abaisse, puis se relève et avant de
s’éteindre, s’exalte un moment comme il n’avait pas encore fait: aux
deux couleurs qu’elle avait jusque-là laissé paraître, elle ajouta
d’autres cordes diaprées, toutes celles du prisme, et les fit chanter" :start 2764 :end 3050) (sentence :text "Swann n’osait pas bouger et aurait voulu faire tenir tranquilles aussi
les autres personnes, comme si le moindre mouvement avait pu
compromettre le prestige surnaturel, délicieux et fragile qui était si
près de s’évanouir" :start 3051 :end 3273) (sentence :text "Personne, à dire vrai, ne songeait à parler" :start 3274 :end 3318) (sentence :text "La
parole ineffable d’un seul absent, peut-être d’un mort (Swann ne
savait pas si Vinteuil vivait encore) s’exhalant au-dessus des rites
de ces officiants, suffisait à tenir en échec l’attention de trois
cents personnes, et faisait de cette estrade où une âme était ainsi
évoquée un des plus nobles autels où pût s’accomplir une cérémonie
surnaturelle" :start 3319 :end 3671) (sentence :text "De sorte que quand la phrase se fut enfin défaite
flottant en lambeaux dans les motifs suivants qui déjà avaient pris sa
place, si Swann au premier instant fut irrité de voir la comtesse de
Monteriender, célèbre par ses naïvetés, se pencher vers lui pour lui
confier ses impressions avant même que la sonate fût finie, il ne put
s’empêcher de sourire, et peut-être de trouver aussi un sens profond
qu’elle n’y voyait pas, dans les mots dont elle se servit" :start 3672 :end 4128) (sentence :text "Émerveillée
par la virtuosité des exécutants, la comtesse s’écria en s’adressant à
Swann: «C’est prodigieux, je n’ai jamais rien vu d’aussi fort" :start 4129 :end 4274) (sentence :text "» Mais
un scrupule d’exactitude lui faisant corriger cette première
assertion, elle ajouta cette réserve: «rien d’aussi fort" :start 4277 :end 4401) (sentence :text "depuis les
tables tournantes!»" :start 4404 :end 4435)
 ))