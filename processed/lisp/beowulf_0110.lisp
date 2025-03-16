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
 :text "Même dans les courses qu’on avait à faire derrière l’église, là où on
ne la voyait pas, tout semblait ordonné par rapport au clocher surgi
ici ou là entre les maisons, peut-être plus émouvant encore quand il
apparaissait ainsi sans l’église. Et certes, il y en a bien d’autres
qui sont plus beaux vus de cette façon, et j’ai dans mon souvenir des
vignettes de clochers dépassant les toits, qui ont un autre caractère
d’art que celles que composaient les tristes rues de Combray. Je
n’oublierai jamais, dans une curieuse ville de Normandie voisine de
Balbec, deux charmants hôtels du XVIIIe siècle, qui me sont à beaucoup
d’égards chers et vénérables et entre lesquels, quand on la regarde du
beau jardin qui descend des perrons vers la rivière, la flèche
gothique d’une église qu’ils cachent s’élance, ayant l’air de
terminer, de surmonter leurs façades, mais d’une matière si
différente, si précieuse, si annelée, si rose, si vernie, qu’on voit
bien qu’elle n’en fait pas plus partie que de deux beaux galets unis,
entre lesquels elle est prise sur la plage, la flèche purpurine et
crénelée de quelque coquillage fuselé en tourelle et glacé d’émail.
Même à Paris, dans un des quartiers les plus laids de la ville, je
sais une fenêtre où on voit après un premier, un second et même un
troisième plan fait des toits amoncelés de plusieurs rues, une cloche
violette, parfois rougeâtre, parfois aussi, dans les plus nobles
«épreuves» qu’en tire l’atmosphère, d’un noir décanté de cendres,
laquelle n’est autre que le dôme Saint-Augustin et qui donne à cette
vue de Paris le caractère de certaines vues de Rome par Piranesi. Mais
comme dans aucune de ces petites gravures, avec quelque goût que ma
mémoire ait pu les exécuter elle ne put mettre ce que j’avais perdu
depuis longtemps, le sentiment qui nous fait non pas considérer une
chose comme un spectacle, mais y croire comme en un être sans
équivalent, aucune d’elles ne tient sous sa dépendance toute une
partie profonde de ma vie, comme fait le souvenir de ces aspects du
clocher de Combray dans les rues qui sont derrière l’église. Qu’on le
vît à cinq heures, quand on allait chercher les lettres à la poste, à
quelques maisons de soi, à gauche, surélevant brusquement d’une cime
isolée la ligne de faîte des toits; que si, au contraire, on voulait
entrer demander des nouvelles de Mme Sazerat, on suivît des yeux cette
ligne redevenue basse après la descente de son autre versant en
sachant qu’il faudrait tourner à la deuxième rue après le clocher;
soit qu’encore, poussant plus loin, si on allait à la gare, on le vît
obliquement, montrant de profil des arêtes et des surfaces nouvelles
comme un solide surpris à un moment inconnu de sa révolution; ou que,
des bords de la Vivonne, l’abside musculeusement ramassée et remontée
par la perspective semblât jaillir de l’effort que le clocher faisait
pour lancer sa flèche au cœur du ciel: c’était toujours à lui qu’il
fallait revenir, toujours lui qui dominait tout, sommant les maisons
d’un pinacle inattendu, levé avant moi comme le doigt de Dieu dont le
corps eût été caché dans la foule des humains sans que je le
confondisse pour cela avec elle. Et aujourd’hui encore si, dans une
grande ville de province ou dans un quartier de Paris que je connais
mal, un passant qui m’a «mis dans mon chemin» me montre au loin, comme
un point de repère, tel beffroi d’hôpital, tel clocher de couvent
levant la pointe de son bonnet ecclésiastique au coin d’une rue que je
dois prendre, pour peu que ma mémoire puisse obscurément lui trouver
quelque trait de ressemblance avec la figure chère et disparue, le
passant, s’il se retourne pour s’assurer que je ne m’égare pas, peut,
à son étonnement, m’apercevoir qui, oublieux de la promenade
entreprise ou de la course obligée, reste là, devant le clocher,
pendant des heures, immobile, essayant de me souvenir, sentant au fond
de moi des terres reconquises sur l’oubli qui s’assèchent et se
rebâtissent; et sans doute alors, et plus anxieusement que tout à
l’heure quand je lui demandais de me renseigner, je cherche encore mon
chemin, je tourne une rue...mais...c’est dans mon cœur..."
 :tokens 706
 :processed-at "2025-03-16T02:18:13.903078"
 :entities (list
  (entity :text "Même" :label "ORG" :start 0 :end 4) (entity :text "Combray." :label "ORG" :start 470 :end 478) (entity :text "Normandie" :label "ORG" :start 529 :end 538) (entity :text "Balbec," :label "ORG" :start 550 :end 557) (entity :text "Même" :label "ORG" :start 1151 :end 1155) (entity :text "Paris," :label "ORG" :start 1158 :end 1164) (entity :text "Saint-Augustin" :label "ORG" :start 1519 :end 1533) (entity :text "Paris" :label "ORG" :start 1562 :end 1567) (entity :text "Rome" :label "ORG" :start 1602 :end 1606) (entity :text "Piranesi." :label "ORG" :start 1611 :end 1620) (entity :text "Mais" :label "ORG" :start 1621 :end 1625) (entity :text "Combray" :label "ORG" :start 2036 :end 2043) (entity :text "Sazerat," :label "ORG" :start 2340 :end 2348) (entity :text "Vivonne," :label "ORG" :start 2730 :end 2738) (entity :text "Dieu" :label "ORG" :start 3048 :end 3052) (entity :text "Paris" :label "ORG" :start 3238 :end 3243)
 )
 :sentences (list
  (sentence :text "Même dans les courses qu’on avait à faire derrière l’église, là où on
ne la voyait pas, tout semblait ordonné par rapport au clocher surgi
ici ou là entre les maisons, peut-être plus émouvant encore quand il
apparaissait ainsi sans l’église" :start 0 :end 240) (sentence :text "Et certes, il y en a bien d’autres
qui sont plus beaux vus de cette façon, et j’ai dans mon souvenir des
vignettes de clochers dépassant les toits, qui ont un autre caractère
d’art que celles que composaient les tristes rues de Combray" :start 241 :end 477) (sentence :text "Je
n’oublierai jamais, dans une curieuse ville de Normandie voisine de
Balbec, deux charmants hôtels du XVIIIe siècle, qui me sont à beaucoup
d’égards chers et vénérables et entre lesquels, quand on la regarde du
beau jardin qui descend des perrons vers la rivière, la flèche
gothique d’une église qu’ils cachent s’élance, ayant l’air de
terminer, de surmonter leurs façades, mais d’une matière si
différente, si précieuse, si annelée, si rose, si vernie, qu’on voit
bien qu’elle n’en fait pas plus partie que de deux beaux galets unis,
entre lesquels elle est prise sur la plage, la flèche purpurine et
crénelée de quelque coquillage fuselé en tourelle et glacé d’émail" :start 478 :end 1149) (sentence :text "Même à Paris, dans un des quartiers les plus laids de la ville, je
sais une fenêtre où on voit après un premier, un second et même un
troisième plan fait des toits amoncelés de plusieurs rues, une cloche
violette, parfois rougeâtre, parfois aussi, dans les plus nobles
«épreuves» qu’en tire l’atmosphère, d’un noir décanté de cendres,
laquelle n’est autre que le dôme Saint-Augustin et qui donne à cette
vue de Paris le caractère de certaines vues de Rome par Piranesi" :start 1150 :end 1619) (sentence :text "Mais
comme dans aucune de ces petites gravures, avec quelque goût que ma
mémoire ait pu les exécuter elle ne put mettre ce que j’avais perdu
depuis longtemps, le sentiment qui nous fait non pas considérer une
chose comme un spectacle, mais y croire comme en un être sans
équivalent, aucune d’elles ne tient sous sa dépendance toute une
partie profonde de ma vie, comme fait le souvenir de ces aspects du
clocher de Combray dans les rues qui sont derrière l’église" :start 1620 :end 2084) (sentence :text "Qu’on le
vît à cinq heures, quand on allait chercher les lettres à la poste, à
quelques maisons de soi, à gauche, surélevant brusquement d’une cime
isolée la ligne de faîte des toits; que si, au contraire, on voulait
entrer demander des nouvelles de Mme Sazerat, on suivît des yeux cette
ligne redevenue basse après la descente de son autre versant en
sachant qu’il faudrait tourner à la deuxième rue après le clocher;
soit qu’encore, poussant plus loin, si on allait à la gare, on le vît
obliquement, montrant de profil des arêtes et des surfaces nouvelles
comme un solide surpris à un moment inconnu de sa révolution; ou que,
des bords de la Vivonne, l’abside musculeusement ramassée et remontée
par la perspective semblât jaillir de l’effort que le clocher faisait
pour lancer sa flèche au cœur du ciel: c’était toujours à lui qu’il
fallait revenir, toujours lui qui dominait tout, sommant les maisons
d’un pinacle inattendu, levé avant moi comme le doigt de Dieu dont le
corps eût été caché dans la foule des humains sans que je le
confondisse pour cela avec elle" :start 2085 :end 3153) (sentence :text "Et aujourd’hui encore si, dans une
grande ville de province ou dans un quartier de Paris que je connais
mal, un passant qui m’a «mis dans mon chemin» me montre au loin, comme
un point de repère, tel beffroi d’hôpital, tel clocher de couvent
levant la pointe de son bonnet ecclésiastique au coin d’une rue que je
dois prendre, pour peu que ma mémoire puisse obscurément lui trouver
quelque trait de ressemblance avec la figure chère et disparue, le
passant, s’il se retourne pour s’assurer que je ne m’égare pas, peut,
à son étonnement, m’apercevoir qui, oublieux de la promenade
entreprise ou de la course obligée, reste là, devant le clocher,
pendant des heures, immobile, essayant de me souvenir, sentant au fond
de moi des terres reconquises sur l’oubli qui s’assèchent et se
rebâtissent; et sans doute alors, et plus anxieusement que tout à
l’heure quand je lui demandais de me renseigner, je cherche encore mon
chemin, je tourne une rue" :start 3154 :end 4096) (sentence :text "mais" :start 159 :end 163) (sentence :text "c’est dans mon cœur" :start 4106 :end 4125)
 ))