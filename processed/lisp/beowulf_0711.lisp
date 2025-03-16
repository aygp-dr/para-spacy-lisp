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
 :text "Celui-ci était rendu plus cruel encore quand revenait à Swann le
souvenir d’un bref regard qu’il avait surpris, il y avait quelques
jours, et pour la première fois, dans les yeux d’Odette. C’était après
dîner, chez les Verdurin. Soit que Forcheville sentant que Saniette,
son beau-frère, n’était pas en faveur chez eux, eût voulu le prendre
comme tête de Turc et briller devant eux à ses dépens, soit qu’il eût
été irrité par un mot maladroit que celui-ci venait de lui dire et
qui, d’ailleurs, passa inaperçu pour les assistants qui ne savaient
pas quelle allusion désobligeante il pouvait renfermer, bien contre le
gré de celui qui le prononçait sans malice aucune, soit enfin qu’il
cherchât depuis quelque temps une occasion de faire sortir de la
maison quelqu’un qui le connaissait trop bien et qu’il savait trop
délicat pour qu’il ne se sentît pas gêné à certains moments rien que
de sa présence, Forcheville répondit à ce propos maladroit de Saniette
avec une telle grossièreté, se mettant à l’insulter, s’enhardissant,
au fur et à mesure qu’il vociférait, de l’effroi, de la douleur, des
supplications de l’autre, que le malheureux, après avoir demandé à Mme
Verdurin s’il devait rester, et n’ayant pas reçu de réponse, s’était
retiré en balbutiant, les larmes aux yeux. Odette avait assisté
impassible à cette scène, mais quand la porte se fut refermée sur
Saniette, faisant descendre en quelque sorte de plusieurs crans
l’expression habituelle de son visage, pour pouvoir se trouver dans la
bassesse, de plain-pied avec Forcheville, elle avait brillanté ses
prunelles d’un sourire sournois de félicitations pour l’audace qu’il
avait eue, d’ironie pour celui qui en avait été victime; elle lui
avait jeté un regard de complicité dans le mal, qui voulait si bien
dire: «voilà une exécution, ou je ne m’y connais pas. Avez-vous vu son
air penaud, il en pleurait», que Forcheville, quand ses yeux
rencontrèrent ce regard, dégrisé soudain de la colère ou de la
simulation de colère dont il était encore chaud, sourit et répondit:"
 :tokens 335
 :processed-at "2025-03-16T02:18:14.536448"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 56 :end 61) (entity :text "Verdurin." :label "ORG" :start 219 :end 228) (entity :text "Soit" :label "ORG" :start 229 :end 233) (entity :text "Forcheville" :label "ORG" :start 238 :end 249) (entity :text "Saniette," :label "ORG" :start 262 :end 271) (entity :text "Turc" :label "ORG" :start 355 :end 359) (entity :text "Forcheville" :label "ORG" :start 902 :end 913) (entity :text "Saniette" :label "ORG" :start 948 :end 956) (entity :text "Verdurin" :label "ORG" :start 1166 :end 1174) (entity :text "Odette" :label "ORG" :start 1278 :end 1284) (entity :text "Saniette," :label "ORG" :start 1365 :end 1374) (entity :text "Forcheville," :label "ORG" :start 1529 :end 1541) (entity :text "Forcheville," :label "ORG" :start 1874 :end 1886)
 )
 :sentences (list
  (sentence :text "Celui-ci était rendu plus cruel encore quand revenait à Swann le
souvenir d’un bref regard qu’il avait surpris, il y avait quelques
jours, et pour la première fois, dans les yeux d’Odette" :start 0 :end 187) (sentence :text "C’était après
dîner, chez les Verdurin" :start 188 :end 227) (sentence :text "Soit que Forcheville sentant que Saniette,
son beau-frère, n’était pas en faveur chez eux, eût voulu le prendre
comme tête de Turc et briller devant eux à ses dépens, soit qu’il eût
été irrité par un mot maladroit que celui-ci venait de lui dire et
qui, d’ailleurs, passa inaperçu pour les assistants qui ne savaient
pas quelle allusion désobligeante il pouvait renfermer, bien contre le
gré de celui qui le prononçait sans malice aucune, soit enfin qu’il
cherchât depuis quelque temps une occasion de faire sortir de la
maison quelqu’un qui le connaissait trop bien et qu’il savait trop
délicat pour qu’il ne se sentît pas gêné à certains moments rien que
de sa présence, Forcheville répondit à ce propos maladroit de Saniette
avec une telle grossièreté, se mettant à l’insulter, s’enhardissant,
au fur et à mesure qu’il vociférait, de l’effroi, de la douleur, des
supplications de l’autre, que le malheureux, après avoir demandé à Mme
Verdurin s’il devait rester, et n’ayant pas reçu de réponse, s’était
retiré en balbutiant, les larmes aux yeux" :start 228 :end 1276) (sentence :text "Odette avait assisté
impassible à cette scène, mais quand la porte se fut refermée sur
Saniette, faisant descendre en quelque sorte de plusieurs crans
l’expression habituelle de son visage, pour pouvoir se trouver dans la
bassesse, de plain-pied avec Forcheville, elle avait brillanté ses
prunelles d’un sourire sournois de félicitations pour l’audace qu’il
avait eue, d’ironie pour celui qui en avait été victime; elle lui
avait jeté un regard de complicité dans le mal, qui voulait si bien
dire: «voilà une exécution, ou je ne m’y connais pas" :start 1277 :end 1822) (sentence :text "Avez-vous vu son
air penaud, il en pleurait», que Forcheville, quand ses yeux
rencontrèrent ce regard, dégrisé soudain de la colère ou de la
simulation de colère dont il était encore chaud, sourit et répondit:" :start 1823 :end 2033)
 ))