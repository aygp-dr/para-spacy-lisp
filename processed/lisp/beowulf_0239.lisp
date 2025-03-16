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
 :text "«Mais ce qui est incontestablement le plus curieux dans notre église,
c’est le point de vue qu’on a du clocher et qui est grandiose.
Certainement, pour vous qui n’êtes pas très forte, je ne vous
conseillerais pas de monter nos quatre-vingt-dix-sept marches, juste
la moitié du célèbre dôme de Milan. Il y a de quoi fatiguer une
personne bien portante, d’autant plus qu’on monte plié en deux si on
ne veut pas se casser la tête, et on ramasse avec ses effets toutes
les toiles d’araignées de l’escalier. En tous cas il faudrait bien
vous couvrir, ajoutait-il (sans apercevoir l’indignation que causait à
ma tante l’idée qu’elle fût capable de monter dans le clocher), car il
fait un de ces courants d’air une fois arrivé là-haut! Certaines
personnes affirment y avoir ressenti le froid de la mort. N’importe,
le dimanche il y a toujours des sociétés qui viennent même de très
loin pour admirer la beauté du panorama et qui s’en retournent
enchantées. Tenez, dimanche prochain, si le temps se maintient, vous
trouveriez certainement du monde, comme ce sont les Rogations. Il faut
avouer du reste qu’on jouit de là d’un coup d’œil féerique, avec des
sortes d’échappées sur la plaine qui ont un cachet tout particulier.
Quand le temps est clair on peut distinguer jusqu’à Verneuil. Surtout
on embrasse à la fois des choses qu’on ne peut voir habituellement que
l’une sans l’autre, comme le cours de la Vivonne et les fossés de
Saint-Assise-lès-Combray, dont elle est séparée par un rideau de
grands arbres, ou encore comme les différents canaux de
Jouy-le-Vicomte (Gaudiacus vice comitis comme vous savez). Chaque fois
que je suis allé à Jouy-le-Vicomte, j’ai bien vu un bout du canal,
puis quand j’avais tourné une rue j’en voyais un autre, mais alors je
ne voyais plus le précédent. J’avais beau les mettre ensemble par la
pensée, cela ne me faisait pas grand effet. Du clocher de
Saint-Hilaire c’est autre chose, c’est tout un réseau où la localité
est prise. Seulement on ne distingue pas d’eau, on dirait de grandes
fentes qui coupent si bien la ville en quartiers, qu’elle est comme
une brioche dont les morceaux tiennent ensemble mais sont déjà
découpés. Il faudrait pour bien faire être à la fois dans le clocher
de Saint-Hilaire et à Jouy-le-Vicomte.»"
 :tokens 383
 :processed-at "2025-03-16T02:18:14.034504"
 :entities (list
  (entity :text "«Mais" :label "ORG" :start 0 :end 5) (entity :text "Certainement," :label "ORG" :start 133 :end 146) (entity :text "Milan." :label "ORG" :start 293 :end 299) (entity :text "Certaines" :label "ORG" :start 729 :end 738) (entity :text "Tenez," :label "ORG" :start 950 :end 956) (entity :text "Rogations." :label "ORG" :start 1059 :end 1069) (entity :text "Quand" :label "ORG" :start 1216 :end 1221) (entity :text "Verneuil." :label "ORG" :start 1268 :end 1277) (entity :text "Surtout" :label "ORG" :start 1278 :end 1285) (entity :text "Vivonne" :label "ORG" :start 1398 :end 1405) (entity :text "(Gaudiacus" :label "ORG" :start 1560 :end 1570) (entity :text "Chaque" :label "ORG" :start 1603 :end 1609) (entity :text "Saint-Hilaire" :label "ORG" :start 1879 :end 1892) (entity :text "Seulement" :label "ORG" :start 1959 :end 1968) (entity :text "Saint-Hilaire" :label "ORG" :start 2220 :end 2233)
 )
 :sentences (list
  (sentence :text "«Mais ce qui est incontestablement le plus curieux dans notre église,
c’est le point de vue qu’on a du clocher et qui est grandiose" :start 0 :end 131) (sentence :text "Certainement, pour vous qui n’êtes pas très forte, je ne vous
conseillerais pas de monter nos quatre-vingt-dix-sept marches, juste
la moitié du célèbre dôme de Milan" :start 132 :end 298) (sentence :text "Il y a de quoi fatiguer une
personne bien portante, d’autant plus qu’on monte plié en deux si on
ne veut pas se casser la tête, et on ramasse avec ses effets toutes
les toiles d’araignées de l’escalier" :start 299 :end 501) (sentence :text "En tous cas il faudrait bien
vous couvrir, ajoutait-il (sans apercevoir l’indignation que causait à
ma tante l’idée qu’elle fût capable de monter dans le clocher), car il
fait un de ces courants d’air une fois arrivé là-haut! Certaines
personnes affirment y avoir ressenti le froid de la mort" :start 502 :end 795) (sentence :text "N’importe,
le dimanche il y a toujours des sociétés qui viennent même de très
loin pour admirer la beauté du panorama et qui s’en retournent
enchantées" :start 796 :end 948) (sentence :text "Tenez, dimanche prochain, si le temps se maintient, vous
trouveriez certainement du monde, comme ce sont les Rogations" :start 949 :end 1068) (sentence :text "Il faut
avouer du reste qu’on jouit de là d’un coup d’œil féerique, avec des
sortes d’échappées sur la plaine qui ont un cachet tout particulier" :start 1069 :end 1214) (sentence :text "Quand le temps est clair on peut distinguer jusqu’à Verneuil" :start 1215 :end 1276) (sentence :text "Surtout
on embrasse à la fois des choses qu’on ne peut voir habituellement que
l’une sans l’autre, comme le cours de la Vivonne et les fossés de
Saint-Assise-lès-Combray, dont elle est séparée par un rideau de
grands arbres, ou encore comme les différents canaux de
Jouy-le-Vicomte (Gaudiacus vice comitis comme vous savez)" :start 1277 :end 1601) (sentence :text "Chaque fois
que je suis allé à Jouy-le-Vicomte, j’ai bien vu un bout du canal,
puis quand j’avais tourné une rue j’en voyais un autre, mais alors je
ne voyais plus le précédent" :start 1602 :end 1779) (sentence :text "J’avais beau les mettre ensemble par la
pensée, cela ne me faisait pas grand effet" :start 1780 :end 1863) (sentence :text "Du clocher de
Saint-Hilaire c’est autre chose, c’est tout un réseau où la localité
est prise" :start 1864 :end 1957) (sentence :text "Seulement on ne distingue pas d’eau, on dirait de grandes
fentes qui coupent si bien la ville en quartiers, qu’elle est comme
une brioche dont les morceaux tiennent ensemble mais sont déjà
découpés" :start 1958 :end 2156) (sentence :text "Il faudrait pour bien faire être à la fois dans le clocher
de Saint-Hilaire et à Jouy-le-Vicomte" :start 2157 :end 2254) (sentence :text "»" :start 2255 :end 2256)
 ))