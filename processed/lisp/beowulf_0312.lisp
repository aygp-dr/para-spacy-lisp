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
 :text "«Léonie, dit mon grand-père en rentrant, j’aurais voulu t’avoir avec
nous tantôt. Tu ne reconnaîtrais pas Tansonville. Si j’avais osé, je
t’aurais coupé une branche de ces épines roses que tu aimais tant.»
Mon grand-père racontait ainsi notre promenade à ma tante Léonie, soit
pour la distraire, soit qu’on n’eût pas perdu tout espoir d’arriver à
la faire sortir. Or elle aimait beaucoup autrefois cette propriété, et
d’ailleurs les visites de Swann avaient été les dernières qu’elle
avait reçues, alors qu’elle fermait déjà sa porte à tout le monde. Et
de même que quand il venait maintenant prendre de ses nouvelles (elle
était la seule personne de chez nous qu’il demandât encore à voir),
elle lui faisait répondre qu’elle était fatiguée, mais qu’elle le
laisserait entrer la prochaine fois, de même elle dit ce soir-là:
«Oui, un jour qu’il fera beau, j’irai en voiture jusqu’à la porte du
parc.» C’est sincèrement qu’elle le disait. Elle eût aimé revoir Swann
et Tansonville; mais le désir qu’elle en avait suffisait à ce qui lui
restait de forces; sa réalisation les eût excédées. Quelquefois le
beau temps lui rendait un peu de vigueur, elle se levait, s’habillait;
la fatigue commençait avant qu’elle fût passée dans l’autre chambre et
elle réclamait son lit. Ce qui avait commencé pour elle--plus tôt
seulement que cela n’arrive d’habitude,--c’est ce grand renoncement de
la vieillesse qui se prépare à la mort, s’enveloppe dans sa
chrysalide, et qu’on peut observer, à la fin des vies qui se
prolongent tard, même entre les anciens amants qui se sont le plus
aimés, entre les amis unis par les liens les plus spirituels et qui à
partir d’une certaine année cessent de faire le voyage ou la sortie
nécessaire pour se voir, cessent de s’écrire et savent qu’ils ne
communiqueront plus en ce monde. Ma tante devait parfaitement savoir
qu’elle ne reverrait pas Swann, qu’elle ne quitterait plus jamais la
maison, mais cette réclusion définitive devait lui être rendue assez
aisée pour la raison même qui selon nous aurait dû la lui rendre plus
douloureuse: c’est que cette réclusion lui était imposée par la
diminution qu’elle pouvait constater chaque jour dans ses forces, et
qui, en faisant de chaque action, de chaque mouvement, une fatigue,
sinon une souffrance, donnait pour elle à l’inaction, à l’isolement,
au silence, la douceur réparatrice et bénie du repos."
 :tokens 392
 :processed-at "2025-03-16T02:18:14.115775"
 :entities (list
  (entity :text "«Léonie," :label "ORG" :start 0 :end 8) (entity :text "Tansonville." :label "ORG" :start 106 :end 118) (entity :text "Léonie," :label "ORG" :start 264 :end 271) (entity :text "Swann" :label "ORG" :start 444 :end 449) (entity :text "«Oui," :label "ORG" :start 824 :end 829) (entity :text "Elle" :label "ORG" :start 937 :end 941) (entity :text "Swann" :label "ORG" :start 958 :end 963) (entity :text "Tansonville;" :label "ORG" :start 967 :end 979) (entity :text "Quelquefois" :label "ORG" :start 1086 :end 1097) (entity :text "Swann," :label "ORG" :start 1865 :end 1871)
 )
 :sentences (list
  (sentence :text "«Léonie, dit mon grand-père en rentrant, j’aurais voulu t’avoir avec
nous tantôt" :start 0 :end 80) (sentence :text "Tu ne reconnaîtrais pas Tansonville" :start 81 :end 117) (sentence :text "Si j’avais osé, je
t’aurais coupé une branche de ces épines roses que tu aimais tant" :start 118 :end 203) (sentence :text "»
Mon grand-père racontait ainsi notre promenade à ma tante Léonie, soit
pour la distraire, soit qu’on n’eût pas perdu tout espoir d’arriver à
la faire sortir" :start 204 :end 362) (sentence :text "Or elle aimait beaucoup autrefois cette propriété, et
d’ailleurs les visites de Swann avaient été les dernières qu’elle
avait reçues, alors qu’elle fermait déjà sa porte à tout le monde" :start 363 :end 549) (sentence :text "Et
de même que quand il venait maintenant prendre de ses nouvelles (elle
était la seule personne de chez nous qu’il demandât encore à voir),
elle lui faisait répondre qu’elle était fatiguée, mais qu’elle le
laisserait entrer la prochaine fois, de même elle dit ce soir-là:
«Oui, un jour qu’il fera beau, j’irai en voiture jusqu’à la porte du
parc" :start 550 :end 897) (sentence :text "» C’est sincèrement qu’elle le disait" :start 898 :end 935) (sentence :text "Elle eût aimé revoir Swann
et Tansonville; mais le désir qu’elle en avait suffisait à ce qui lui
restait de forces; sa réalisation les eût excédées" :start 936 :end 1084) (sentence :text "Quelquefois le
beau temps lui rendait un peu de vigueur, elle se levait, s’habillait;
la fatigue commençait avant qu’elle fût passée dans l’autre chambre et
elle réclamait son lit" :start 1085 :end 1265) (sentence :text "Ce qui avait commencé pour elle--plus tôt
seulement que cela n’arrive d’habitude,--c’est ce grand renoncement de
la vieillesse qui se prépare à la mort, s’enveloppe dans sa
chrysalide, et qu’on peut observer, à la fin des vies qui se
prolongent tard, même entre les anciens amants qui se sont le plus
aimés, entre les amis unis par les liens les plus spirituels et qui à
partir d’une certaine année cessent de faire le voyage ou la sortie
nécessaire pour se voir, cessent de s’écrire et savent qu’ils ne
communiqueront plus en ce monde" :start 1266 :end 1802) (sentence :text "Ma tante devait parfaitement savoir
qu’elle ne reverrait pas Swann, qu’elle ne quitterait plus jamais la
maison, mais cette réclusion définitive devait lui être rendue assez
aisée pour la raison même qui selon nous aurait dû la lui rendre plus
douloureuse: c’est que cette réclusion lui était imposée par la
diminution qu’elle pouvait constater chaque jour dans ses forces, et
qui, en faisant de chaque action, de chaque mouvement, une fatigue,
sinon une souffrance, donnait pour elle à l’inaction, à l’isolement,
au silence, la douceur réparatrice et bénie du repos" :start 1803 :end 2370)
 ))