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
 :text "Parfois à l’exaltation que me donnait la solitude, s’en ajoutait une
autre que je ne savais pas en départager nettement, causée par le
désir de voir surgir devant moi une paysanne, que je pourrais serrer
dans mes bras. Né brusquement, et sans que j’eusse eu le temps de le
rapporter exactement à sa cause, au milieu de pensées très
différentes, le plaisir dont il était accompagné ne me semblait qu’un
degré supérieur de celui qu’elles me donnaient. Je faisais un mérite
de plus à tout ce qui était à ce moment-là dans mon esprit, au reflet
rose du toit de tuile, aux herbes folles, au village de Roussainville
où je désirais depuis longtemps aller, aux arbres de son bois, au
clocher de son église, de cet émoi nouveau qui me les faisait
seulement paraître plus désirables parce que je croyais que c’était
eux qui le provoquaient, et qui semblait ne vouloir que me porter vers
eux plus rapidement quand il enflait ma voile d’une brise puissante,
inconnue et propice. Mais si ce désir qu’une femme apparût ajoutait
pour moi aux charmes de la nature quelque chose de plus exaltant, les
charmes de la nature, en retour, élargissaient ce que celui de la
femme aurait eu de trop restreint. Il me semblait que la beauté des
arbres c’était encore la sienne et que l’âme de ces horizons, du
village de Roussainville, des livres que je lisais cette année-là, son
baiser me la livrerait; et mon imagination reprenant des forces au
contact de ma sensualité, ma sensualité se répandant dans tous les
domaines de mon imagination, mon désir n’avait plus de limites. C’est
qu’aussi,--comme il arrive dans ces moments de rêverie au milieu de la
nature où l’action de l’habitude étant suspendue, nos notions
abstraites des choses mises de côté, nous croyons d’une foi profonde,
à l’originalité, à la vie individuelle du lieu où nous nous
trouvons--la passante qu’appelait mon désir me semblait être non un
exemplaire quelconque de ce type général: la femme, mais un produit
nécessaire et naturel de ce sol. Car en ce temps-là tout ce qui
n’était pas moi, la terre et les êtres, me paraissait plus précieux,
plus important, doué d’une existence plus réelle que cela ne paraît
aux hommes faits. Et la terre et les êtres je ne les séparais pas.
J’avais le désir d’une paysanne de Méséglise ou de Roussainville,
d’une pêcheuse de Balbec, comme j’avais le désir de Méséglise et de
Balbec. Le plaisir qu’elles pouvaient me donner m’aurait paru moins
vrai, je n’aurais plus cru en lui, si j’en avais modifié à ma guise
les conditions. Connaître à Paris une pêcheuse de Balbec ou une
paysanne de Méséglise c’eût été recevoir des coquillages que je
n’aurais pas vus sur la plage, une fougère que je n’aurais pas trouvée
dans les bois, c’eût été retrancher au plaisir que la femme me
donnerait tous ceux au milieu desquels l’avait enveloppée mon
imagination. Mais errer ainsi dans les bois de Roussainville sans une
paysanne à embrasser, c’était ne pas connaître de ces bois le trésor
caché, la beauté profonde. Cette fille que je ne voyais que criblée de
feuillages, elle était elle-même pour moi comme une plante locale
d’une espèce plus élevée seulement que les autres et dont la structure
permet d’approcher de plus près qu’en elles, la saveur profonde du
pays. Je pouvais d’autant plus facilement le croire (et que les
caresses par lesquelles elle m’y ferait parvenir, seraient aussi d’une
sorte particulière et dont je n’aurais pas pu connaître le plaisir par
une autre qu’elle), que j’étais pour longtemps encore à l’âge où on ne
l’a pas encore abstrait ce plaisir de la possession des femmes
différentes avec lesquelles on l’a goûté, où on ne l’a pas réduit à
une notion générale qui les fait considérer dès lors comme les
instruments interchangeables d’un plaisir toujours identique. Il
n’existe même pas, isolé, séparé et formulé dans l’esprit, comme le
but qu’on poursuit en s’approchant d’une femme, comme la cause du
trouble préalable qu’on ressent. A peine y songe-t-on comme à un
plaisir qu’on aura; plutôt, on l’appelle son charme à elle; car on ne
pense pas à soi, on ne pense qu’à sortir de soi. Obscurément attendu,
immanent et caché, il porte seulement à un tel paroxysme au moment où
il s’accomplit, les autres plaisirs que nous causent les doux regards,
les baisers de celle qui est auprès de nous, qu’il nous apparaît
surtout à nous-même comme une sorte de transport de notre
reconnaissance pour la bonté de cœur de notre compagne et pour sa
touchante prédilection à notre égard que nous mesurons aux bienfaits,
au bonheur dont elle nous comble."
 :tokens 776
 :processed-at "2025-03-16T02:18:14.144474"
 :entities (list
  (entity :text "Parfois" :label "ORG" :start 0 :end 7) (entity :text "Roussainville" :label "ORG" :start 597 :end 610) (entity :text "Mais" :label "ORG" :start 968 :end 972) (entity :text "Roussainville," :label "ORG" :start 1295 :end 1309) (entity :text "Méséglise" :label "ORG" :start 2261 :end 2270) (entity :text "Roussainville," :label "ORG" :start 2277 :end 2291) (entity :text "Balbec," :label "ORG" :start 2310 :end 2317) (entity :text "Méséglise" :label "ORG" :start 2344 :end 2353) (entity :text "Balbec." :label "ORG" :start 2360 :end 2367) (entity :text "Connaître" :label "ORG" :start 2512 :end 2521) (entity :text "Paris" :label "ORG" :start 2524 :end 2529) (entity :text "Balbec" :label "ORG" :start 2546 :end 2552) (entity :text "Méséglise" :label "ORG" :start 2572 :end 2581) (entity :text "Mais" :label "ORG" :start 2833 :end 2837) (entity :text "Roussainville" :label "ORG" :start 2867 :end 2880) (entity :text "Cette" :label "ORG" :start 2986 :end 2991) (entity :text "Obscurément" :label "ORG" :start 4088 :end 4099)
 )
 :sentences (list
  (sentence :text "Parfois à l’exaltation que me donnait la solitude, s’en ajoutait une
autre que je ne savais pas en départager nettement, causée par le
désir de voir surgir devant moi une paysanne, que je pourrais serrer
dans mes bras" :start 0 :end 217) (sentence :text "Né brusquement, et sans que j’eusse eu le temps de le
rapporter exactement à sa cause, au milieu de pensées très
différentes, le plaisir dont il était accompagné ne me semblait qu’un
degré supérieur de celui qu’elles me donnaient" :start 218 :end 448) (sentence :text "Je faisais un mérite
de plus à tout ce qui était à ce moment-là dans mon esprit, au reflet
rose du toit de tuile, aux herbes folles, au village de Roussainville
où je désirais depuis longtemps aller, aux arbres de son bois, au
clocher de son église, de cet émoi nouveau qui me les faisait
seulement paraître plus désirables parce que je croyais que c’était
eux qui le provoquaient, et qui semblait ne vouloir que me porter vers
eux plus rapidement quand il enflait ma voile d’une brise puissante,
inconnue et propice" :start 449 :end 966) (sentence :text "Mais si ce désir qu’une femme apparût ajoutait
pour moi aux charmes de la nature quelque chose de plus exaltant, les
charmes de la nature, en retour, élargissaient ce que celui de la
femme aurait eu de trop restreint" :start 967 :end 1184) (sentence :text "Il me semblait que la beauté des
arbres c’était encore la sienne et que l’âme de ces horizons, du
village de Roussainville, des livres que je lisais cette année-là, son
baiser me la livrerait; et mon imagination reprenant des forces au
contact de ma sensualité, ma sensualité se répandant dans tous les
domaines de mon imagination, mon désir n’avait plus de limites" :start 1185 :end 1551) (sentence :text "C’est
qu’aussi,--comme il arrive dans ces moments de rêverie au milieu de la
nature où l’action de l’habitude étant suspendue, nos notions
abstraites des choses mises de côté, nous croyons d’une foi profonde,
à l’originalité, à la vie individuelle du lieu où nous nous
trouvons--la passante qu’appelait mon désir me semblait être non un
exemplaire quelconque de ce type général: la femme, mais un produit
nécessaire et naturel de ce sol" :start 1552 :end 1989) (sentence :text "Car en ce temps-là tout ce qui
n’était pas moi, la terre et les êtres, me paraissait plus précieux,
plus important, doué d’une existence plus réelle que cela ne paraît
aux hommes faits" :start 1990 :end 2175) (sentence :text "Et la terre et les êtres je ne les séparais pas" :start 2176 :end 2224) (sentence :text "J’avais le désir d’une paysanne de Méséglise ou de Roussainville,
d’une pêcheuse de Balbec, comme j’avais le désir de Méséglise et de
Balbec" :start 2225 :end 2366) (sentence :text "Le plaisir qu’elles pouvaient me donner m’aurait paru moins
vrai, je n’aurais plus cru en lui, si j’en avais modifié à ma guise
les conditions" :start 2367 :end 2510) (sentence :text "Connaître à Paris une pêcheuse de Balbec ou une
paysanne de Méséglise c’eût été recevoir des coquillages que je
n’aurais pas vus sur la plage, une fougère que je n’aurais pas trouvée
dans les bois, c’eût été retrancher au plaisir que la femme me
donnerait tous ceux au milieu desquels l’avait enveloppée mon
imagination" :start 2511 :end 2831) (sentence :text "Mais errer ainsi dans les bois de Roussainville sans une
paysanne à embrasser, c’était ne pas connaître de ces bois le trésor
caché, la beauté profonde" :start 2832 :end 2984) (sentence :text "Cette fille que je ne voyais que criblée de
feuillages, elle était elle-même pour moi comme une plante locale
d’une espèce plus élevée seulement que les autres et dont la structure
permet d’approcher de plus près qu’en elles, la saveur profonde du
pays" :start 2985 :end 3238) (sentence :text "Je pouvais d’autant plus facilement le croire (et que les
caresses par lesquelles elle m’y ferait parvenir, seraient aussi d’une
sorte particulière et dont je n’aurais pas pu connaître le plaisir par
une autre qu’elle), que j’étais pour longtemps encore à l’âge où on ne
l’a pas encore abstrait ce plaisir de la possession des femmes
différentes avec lesquelles on l’a goûté, où on ne l’a pas réduit à
une notion générale qui les fait considérer dès lors comme les
instruments interchangeables d’un plaisir toujours identique" :start 3239 :end 3765) (sentence :text "Il
n’existe même pas, isolé, séparé et formulé dans l’esprit, comme le
but qu’on poursuit en s’approchant d’une femme, comme la cause du
trouble préalable qu’on ressent" :start 3766 :end 3935) (sentence :text "A peine y songe-t-on comme à un
plaisir qu’on aura; plutôt, on l’appelle son charme à elle; car on ne
pense pas à soi, on ne pense qu’à sortir de soi" :start 3936 :end 4086) (sentence :text "Obscurément attendu,
immanent et caché, il porte seulement à un tel paroxysme au moment où
il s’accomplit, les autres plaisirs que nous causent les doux regards,
les baisers de celle qui est auprès de nous, qu’il nous apparaît
surtout à nous-même comme une sorte de transport de notre
reconnaissance pour la bonté de cœur de notre compagne et pour sa
touchante prédilection à notre égard que nous mesurons aux bienfaits,
au bonheur dont elle nous comble" :start 4087 :end 4541)
 ))