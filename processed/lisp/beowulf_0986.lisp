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
 :text "Tout le temps que j’étais loin de Gilberte, j’avais besoin de la voir,
parce que cherchant sans cesse à me représenter son image, je
finissais par ne plus y réussir, et par ne plus savoir exactement à
quoi correspondait mon amour. Puis, elle ne m’avait encore jamais dit
qu’elle m’aimait. Bien au contraire, elle avait souvent prétendu
qu’elle avait des amis qu’elle me préférait, que j’étais un bon
camarade avec qui elle jouait volontiers quoique trop distrait, pas
assez au jeu; enfin elle m’avait donné souvent des marques apparentes
de froideur qui auraient pu ébranler ma croyance que j’étais pour elle
un être différent des autres, si cette croyance avait pris sa source
dans un amour que Gilberte aurait eu pour moi, et non pas, comme cela
était, dans l’amour que j’avais pour elle, ce qui la rendait autrement
résistante, puisque cela la faisait dépendre de la manière même dont
j’étais obligé, par une nécessité intérieure, de penser à Gilberte.
Mais les sentiments que je ressentais pour elle, moi-même je ne les
lui avais pas encore déclarés. Certes, à toutes les pages de mes
cahiers, j’écrivais indéfiniment son nom et son adresse, mais à la vue
de ces vagues lignes que je traçais sans qu’elle pensât pour cela à
moi, qui lui faisaient prendre autour de moi tant de place apparente
sans qu’elle fût mêlée davantage à ma vie, je me sentais découragé
parce qu’elles ne me parlaient pas de Gilberte qui ne les verrait même
pas, mais de mon propre désir qu’elles semblaient me montrer comme
quelque chose de purement personnel, d’irréel, de fastidieux et
d’impuissant. Le plus pressé était que nous nous vissions Gilberte et
moi, et que nous puissions nous faire l’aveu réciproque de notre
amour, qui jusque-là n’aurait pour ainsi dire pas commencé. Sans doute
les diverses raisons qui me rendaient si impatient de la voir auraient
été moins impérieuses pour un homme mûr. Plus tard, il arrive que
devenus habiles dans la culture de nos plaisirs, nous nous contentions
de celui que nous avons à penser à une femme comme je pensais à
Gilberte, sans être inquiets de savoir si cette image correspond à la
réalité, et aussi de celui de l’aimer sans avoir besoin d’être certain
qu’elle nous aime; ou encore que nous renoncions au plaisir de lui
avouer notre inclination pour elle, afin d’entretenir plus vivace
l’inclination qu’elle a pour nous, imitant ces jardiniers japonais qui
pour obtenir une plus belle fleur, en sacrifient plusieurs autres.
Mais à l’époque où j’aimais Gilberte, je croyais encore que l’Amour
existait réellement en dehors de nous; que, en permettant tout au plus
que nous écartions les obstacles, il offrait ses bonheurs dans un
ordre auquel on n’était pas libre de rien changer; il me semblait que
si j’avais, de mon chef, substitué à la douceur de l’aveu la
simulation de l’indifférence, je ne me serais pas seulement privé
d’une des joies dont j’avais le plus rêvé mais que je me serais
fabriqué à ma guise un amour factice et sans valeur, sans
communication avec le vrai, dont j’aurais renoncé à suivre les chemins
mystérieux et préexistants."
 :tokens 520
 :processed-at "2025-03-16T02:18:14.850557"
 :entities (list
  (entity :text "Tout" :label "ORG" :start 0 :end 4) (entity :text "Gilberte," :label "ORG" :start 34 :end 43) (entity :text "Puis," :label "ORG" :start 231 :end 236) (entity :text "Bien" :label "ORG" :start 289 :end 293) (entity :text "Gilberte" :label "ORG" :start 696 :end 704) (entity :text "Gilberte." :label "ORG" :start 946 :end 955) (entity :text "Mais" :label "ORG" :start 956 :end 960) (entity :text "Certes," :label "ORG" :start 1055 :end 1062) (entity :text "Gilberte" :label "ORG" :start 1402 :end 1410) (entity :text "Gilberte" :label "ORG" :start 1624 :end 1632) (entity :text "Sans" :label "ORG" :start 1761 :end 1765) (entity :text "Plus" :label "ORG" :start 1884 :end 1888) (entity :text "Gilberte," :label "ORG" :start 2044 :end 2053) (entity :text "Mais" :label "ORG" :start 2456 :end 2460) (entity :text "Gilberte," :label "ORG" :start 2484 :end 2493)
 )
 :sentences (list
  (sentence :text "Tout le temps que j’étais loin de Gilberte, j’avais besoin de la voir,
parce que cherchant sans cesse à me représenter son image, je
finissais par ne plus y réussir, et par ne plus savoir exactement à
quoi correspondait mon amour" :start 0 :end 229) (sentence :text "Puis, elle ne m’avait encore jamais dit
qu’elle m’aimait" :start 230 :end 287) (sentence :text "Bien au contraire, elle avait souvent prétendu
qu’elle avait des amis qu’elle me préférait, que j’étais un bon
camarade avec qui elle jouait volontiers quoique trop distrait, pas
assez au jeu; enfin elle m’avait donné souvent des marques apparentes
de froideur qui auraient pu ébranler ma croyance que j’étais pour elle
un être différent des autres, si cette croyance avait pris sa source
dans un amour que Gilberte aurait eu pour moi, et non pas, comme cela
était, dans l’amour que j’avais pour elle, ce qui la rendait autrement
résistante, puisque cela la faisait dépendre de la manière même dont
j’étais obligé, par une nécessité intérieure, de penser à Gilberte" :start 288 :end 954) (sentence :text "Mais les sentiments que je ressentais pour elle, moi-même je ne les
lui avais pas encore déclarés" :start 955 :end 1053) (sentence :text "Certes, à toutes les pages de mes
cahiers, j’écrivais indéfiniment son nom et son adresse, mais à la vue
de ces vagues lignes que je traçais sans qu’elle pensât pour cela à
moi, qui lui faisaient prendre autour de moi tant de place apparente
sans qu’elle fût mêlée davantage à ma vie, je me sentais découragé
parce qu’elles ne me parlaient pas de Gilberte qui ne les verrait même
pas, mais de mon propre désir qu’elles semblaient me montrer comme
quelque chose de purement personnel, d’irréel, de fastidieux et
d’impuissant" :start 1054 :end 1578) (sentence :text "Le plus pressé était que nous nous vissions Gilberte et
moi, et que nous puissions nous faire l’aveu réciproque de notre
amour, qui jusque-là n’aurait pour ainsi dire pas commencé" :start 1579 :end 1759) (sentence :text "Sans doute
les diverses raisons qui me rendaient si impatient de la voir auraient
été moins impérieuses pour un homme mûr" :start 1760 :end 1882) (sentence :text "Plus tard, il arrive que
devenus habiles dans la culture de nos plaisirs, nous nous contentions
de celui que nous avons à penser à une femme comme je pensais à
Gilberte, sans être inquiets de savoir si cette image correspond à la
réalité, et aussi de celui de l’aimer sans avoir besoin d’être certain
qu’elle nous aime; ou encore que nous renoncions au plaisir de lui
avouer notre inclination pour elle, afin d’entretenir plus vivace
l’inclination qu’elle a pour nous, imitant ces jardiniers japonais qui
pour obtenir une plus belle fleur, en sacrifient plusieurs autres" :start 1883 :end 2454) (sentence :text "Mais à l’époque où j’aimais Gilberte, je croyais encore que l’Amour
existait réellement en dehors de nous; que, en permettant tout au plus
que nous écartions les obstacles, il offrait ses bonheurs dans un
ordre auquel on n’était pas libre de rien changer; il me semblait que
si j’avais, de mon chef, substitué à la douceur de l’aveu la
simulation de l’indifférence, je ne me serais pas seulement privé
d’une des joies dont j’avais le plus rêvé mais que je me serais
fabriqué à ma guise un amour factice et sans valeur, sans
communication avec le vrai, dont j’aurais renoncé à suivre les chemins
mystérieux et préexistants" :start 2455 :end 3077)
 ))