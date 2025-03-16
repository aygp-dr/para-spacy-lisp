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
 :text "Il répondait poliment aux saluts des camarades de Gilberte, même au
mien quoiqu’il fût brouillé avec ma famille, mais sans avoir l’air de
me connaître. (Cela me rappela qu’il m’avait pourtant vu bien souvent
à la campagne; souvenir que j’avais gardé mais dans l’ombre, parce que
depuis que j’avais revu Gilberte, pour moi Swann était surtout son
père, et non plus le Swann de Combray; comme les idées sur lesquelles
j’embranchais maintenant son nom étaient différentes des idées dans le
réseau desquelles il était autrefois compris et que je n’utilisais
plus jamais quand j’avais à penser à lui, il était devenu un
personnage nouveau; je le rattachai pourtant par une ligne
artificielle secondaire et transversale à notre invité d’autrefois; et
comme rien n’avait plus pour moi de prix que dans la mesure où mon
amour pouvait en profiter, ce fut avec un mouvement de honte et le
regret de ne pouvoir les effacer que je retrouvai les années où, aux
yeux de ce même Swann qui était en ce moment devant moi aux
Champs-Élysées et à qui heureusement Gilberte n’avait peut-être pas
dit mon nom, je m’étais si souvent le soir rendu ridicule en envoyant
demander à maman de monter dans ma chambre me dire bonsoir, pendant
qu’elle prenait le café avec lui, mon père et mes grands-parents à la
table du jardin.) Il disait à Gilberte qu’il lui permettait de faire
une partie, qu’il pouvait attendre un quart d’heure, et s’asseyant
comme tout le monde sur une chaise de fer payait son ticket de cette
main que Philippe VII avait si souvent retenue dans la sienne, tandis
que nous commencions à jouer sur la pelouse, faisant envoler les
pigeons dont les beaux corps irisés qui ont la forme d’un cœur et sont
comme les lilas du règne des oiseaux, venaient se réfugier comme en
des lieux d’asile, tel sur le grand vase de pierre à qui son bec en y
disparaissant faisait faire le geste et assignait la destination
d’offrir en abondance les fruits ou les graines qu’il avait l’air d’y
picorer, tel autre sur le front de la statue, qu’il semblait surmonter
d’un de ces objets en émail desquels la polychromie varie dans
certaines œuvres antiques la monotonie de la pierre et d’un attribut
qui, quand la déesse le porte, lui vaut une épithète particulière et
en fait, comme pour une mortelle un prénom différent, une divinité
nouvelle."
 :tokens 400
 :processed-at "2025-03-16T02:18:14.860909"
 :entities (list
  (entity :text "Gilberte," :label "ORG" :start 50 :end 59) (entity :text "(Cela" :label "ORG" :start 152 :end 157) (entity :text "Gilberte," :label "ORG" :start 303 :end 312) (entity :text "Swann" :label "ORG" :start 322 :end 327) (entity :text "Swann" :label "ORG" :start 367 :end 372) (entity :text "Combray;" :label "ORG" :start 376 :end 384) (entity :text "Swann" :label "ORG" :start 964 :end 969) (entity :text "Champs-Élysées" :label "ORG" :start 1008 :end 1022) (entity :text "Gilberte" :label "ORG" :start 1045 :end 1053) (entity :text "Gilberte" :label "ORG" :start 1314 :end 1322) (entity :text "Philippe" :label "ORG" :start 1498 :end 1506)
 )
 :sentences (list
  (sentence :text "Il répondait poliment aux saluts des camarades de Gilberte, même au
mien quoiqu’il fût brouillé avec ma famille, mais sans avoir l’air de
me connaître" :start 0 :end 150) (sentence :text "(Cela me rappela qu’il m’avait pourtant vu bien souvent
à la campagne; souvenir que j’avais gardé mais dans l’ombre, parce que
depuis que j’avais revu Gilberte, pour moi Swann était surtout son
père, et non plus le Swann de Combray; comme les idées sur lesquelles
j’embranchais maintenant son nom étaient différentes des idées dans le
réseau desquelles il était autrefois compris et que je n’utilisais
plus jamais quand j’avais à penser à lui, il était devenu un
personnage nouveau; je le rattachai pourtant par une ligne
artificielle secondaire et transversale à notre invité d’autrefois; et
comme rien n’avait plus pour moi de prix que dans la mesure où mon
amour pouvait en profiter, ce fut avec un mouvement de honte et le
regret de ne pouvoir les effacer que je retrouvai les années où, aux
yeux de ce même Swann qui était en ce moment devant moi aux
Champs-Élysées et à qui heureusement Gilberte n’avait peut-être pas
dit mon nom, je m’étais si souvent le soir rendu ridicule en envoyant
demander à maman de monter dans ma chambre me dire bonsoir, pendant
qu’elle prenait le café avec lui, mon père et mes grands-parents à la
table du jardin" :start 151 :end 1299) (sentence :text ") Il disait à Gilberte qu’il lui permettait de faire
une partie, qu’il pouvait attendre un quart d’heure, et s’asseyant
comme tout le monde sur une chaise de fer payait son ticket de cette
main que Philippe VII avait si souvent retenue dans la sienne, tandis
que nous commencions à jouer sur la pelouse, faisant envoler les
pigeons dont les beaux corps irisés qui ont la forme d’un cœur et sont
comme les lilas du règne des oiseaux, venaient se réfugier comme en
des lieux d’asile, tel sur le grand vase de pierre à qui son bec en y
disparaissant faisait faire le geste et assignait la destination
d’offrir en abondance les fruits ou les graines qu’il avait l’air d’y
picorer, tel autre sur le front de la statue, qu’il semblait surmonter
d’un de ces objets en émail desquels la polychromie varie dans
certaines œuvres antiques la monotonie de la pierre et d’un attribut
qui, quand la déesse le porte, lui vaut une épithète particulière et
en fait, comme pour une mortelle un prénom différent, une divinité
nouvelle" :start 1300 :end 2315)
 ))