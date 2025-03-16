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
 :text "Mais il était si timide avec elle, qu’ayant fini par la posséder ce
soir-là, en commençant par arranger ses catleyas, soit crainte de la
froisser, soit peur de paraître rétrospectivement avoir menti, soit
manque d’audace pour formuler une exigence plus grande que celle-là
(qu’il pouvait renouveler puisqu’elle n’avait pas fiché Odette la
première fois), les jours suivants il usa du même prétexte. Si elle
avait des catleyas à son corsage, il disait: «C’est malheureux, ce
soir, les catleyas n’ont pas besoin d’être arrangés, ils n’ont pas été
déplacés comme l’autre soir; il me semble pourtant que celui-ci n’est
pas très droit. Je peux voir s’ils ne sentent pas plus que les
autres?» Ou bien, si elle n’en avait pas: «Oh! pas de catleyas ce
soir, pas moyen de me livrer à mes petits arrangements.» De sorte que,
pendant quelque temps, ne fut pas changé l’ordre qu’il avait suivi le
premier soir, en débutant par des attouchements de doigts et de lèvres
sur la gorge d’Odette et que ce fut par eux encore que commençaient
chaque fois ses caresses; et, bien plus tard quand l’arrangement (ou
le simulacre d’arrangement) des catleyas, fut depuis longtemps tombé
en désuétude, la métaphore «faire catleya», devenue un simple vocable
qu’ils employaient sans y penser quand ils voulaient signifier l’acte
de la possession physique--où d’ailleurs l’on ne possède rien,--survécut
dans leur langage, où elle le commémorait, à cet usage oublié. Et
peut-être cette manière particulière de dire «faire l’amour» ne
signifiait-elle pas exactement la même chose que ses synonymes. On a
beau être blasé sur les femmes, considérer la possession des plus
différentes comme toujours la même et connue d’avance, elle devient au
contraire un plaisir nouveau s’il s’agit de femmes assez difficiles--ou
crues telles par nous--pour que nous soyons obligés de la faire naître
de quelque épisode imprévu de nos relations avec elles, comme avait
été la première fois pour Swann l’arrangement des catleyas. Il
espérait en tremblant, ce soir-là (mais Odette, se disait-il, si elle
était dupe de sa ruse, ne pouvait le deviner), que c’était la
possession de cette femme qui allait sortir d’entre leurs larges
pétales mauves; et le plaisir qu’il éprouvait déjà et qu’Odette ne
tolérait peut-être, pensait-il, que parce qu’elle ne l’avait pas
reconnu, lui semblait, à cause de cela--comme il put paraître au
premier homme qui le goûta parmi les fleurs du paradis terrestre--un
plaisir qui n’avait pas existé jusque-là, qu’il cherchait à créer, un
plaisir--ainsi que le nom spécial qu’il lui donna en garda la
trace--entièrement particulier et nouveau."
 :tokens 421
 :processed-at "2025-03-16T02:18:14.383734"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Odette" :label "ORG" :start 329 :end 335) (entity :text "«Oh!" :label "ORG" :start 720 :end 724) (entity :text "Swann" :label "ORG" :start 1948 :end 1953) (entity :text "Odette," :label "ORG" :start 2025 :end 2032)
 )
 :sentences (list
  (sentence :text "Mais il était si timide avec elle, qu’ayant fini par la posséder ce
soir-là, en commençant par arranger ses catleyas, soit crainte de la
froisser, soit peur de paraître rétrospectivement avoir menti, soit
manque d’audace pour formuler une exigence plus grande que celle-là
(qu’il pouvait renouveler puisqu’elle n’avait pas fiché Odette la
première fois), les jours suivants il usa du même prétexte" :start 0 :end 397) (sentence :text "Si elle
avait des catleyas à son corsage, il disait: «C’est malheureux, ce
soir, les catleyas n’ont pas besoin d’être arrangés, ils n’ont pas été
déplacés comme l’autre soir; il me semble pourtant que celui-ci n’est
pas très droit" :start 398 :end 629) (sentence :text "Je peux voir s’ils ne sentent pas plus que les
autres?» Ou bien, si elle n’en avait pas: «Oh! pas de catleyas ce
soir, pas moyen de me livrer à mes petits arrangements" :start 630 :end 798) (sentence :text "» De sorte que,
pendant quelque temps, ne fut pas changé l’ordre qu’il avait suivi le
premier soir, en débutant par des attouchements de doigts et de lèvres
sur la gorge d’Odette et que ce fut par eux encore que commençaient
chaque fois ses caresses; et, bien plus tard quand l’arrangement (ou
le simulacre d’arrangement) des catleyas, fut depuis longtemps tombé
en désuétude, la métaphore «faire catleya», devenue un simple vocable
qu’ils employaient sans y penser quand ils voulaient signifier l’acte
de la possession physique--où d’ailleurs l’on ne possède rien,--survécut
dans leur langage, où elle le commémorait, à cet usage oublié" :start 799 :end 1436) (sentence :text "Et
peut-être cette manière particulière de dire «faire l’amour» ne
signifiait-elle pas exactement la même chose que ses synonymes" :start 1437 :end 1567) (sentence :text "On a
beau être blasé sur les femmes, considérer la possession des plus
différentes comme toujours la même et connue d’avance, elle devient au
contraire un plaisir nouveau s’il s’agit de femmes assez difficiles--ou
crues telles par nous--pour que nous soyons obligés de la faire naître
de quelque épisode imprévu de nos relations avec elles, comme avait
été la première fois pour Swann l’arrangement des catleyas" :start 1568 :end 1980) (sentence :text "Il
espérait en tremblant, ce soir-là (mais Odette, se disait-il, si elle
était dupe de sa ruse, ne pouvait le deviner), que c’était la
possession de cette femme qui allait sortir d’entre leurs larges
pétales mauves; et le plaisir qu’il éprouvait déjà et qu’Odette ne
tolérait peut-être, pensait-il, que parce qu’elle ne l’avait pas
reconnu, lui semblait, à cause de cela--comme il put paraître au
premier homme qui le goûta parmi les fleurs du paradis terrestre--un
plaisir qui n’avait pas existé jusque-là, qu’il cherchait à créer, un
plaisir--ainsi que le nom spécial qu’il lui donna en garda la
trace--entièrement particulier et nouveau" :start 1981 :end 2621)
 ))