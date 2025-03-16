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
 :text "Les clochers paraissaient si éloignés et nous avions l’air de si peu
nous rapprocher d’eux, que je fus étonné quand, quelques instants
après, nous nous arrêtâmes devant l’église de Martinville. Je ne
savais pas la raison du plaisir que j’avais eu à les apercevoir à
l’horizon et l’obligation de chercher à découvrir cette raison me
semblait bien pénible; j’avais envie de garder en réserve dans ma tête
ces lignes remuantes au soleil et de n’y plus penser maintenant. Et il
est probable que si je l’avais fait, les deux clochers seraient allés
à jamais rejoindre tant d’arbres, de toits, de parfums, de sons, que
j’avais distingués des autres à cause de ce plaisir obscur qu’ils
m’avaient procuré et que je n’ai jamais approfondi. Je descendis
causer avec mes parents en attendant le docteur. Puis nous repartîmes,
je repris ma place sur le siège, je tournai la tête pour voir encore
les clochers qu’un peu plus tard, j’aperçus une dernière fois au
tournant d’un chemin. Le cocher, qui ne semblait pas disposé à causer,
ayant à peine répondu à mes propos, force me fut, faute d’autre
compagnie, de me rabattre sur celle de moi-même et d’essayer de me
rappeler mes clochers. Bientôt leurs lignes et leurs surfaces
ensoleillées, comme si elles avaient été une sorte d’écorce, se
déchirèrent, un peu de ce qui m’était caché en elles m’apparut, j’eus
une pensée qui n’existait pas pour moi l’instant avant, qui se formula
en mots dans ma tête, et le plaisir que m’avait fait tout à l’heure
éprouver leur vue s’en trouva tellement accru que, pris d’une sorte
d’ivresse, je ne pus plus penser à autre chose. A ce moment et comme
nous étions déjà loin de Martinville en tournant la tête je les
aperçus de nouveau, tout noirs cette fois, car le soleil était déjà
couché. Par moments les tournants du chemin me les dérobaient, puis
ils se montrèrent une dernière fois et enfin je ne les vis plus."
 :tokens 327
 :processed-at "2025-03-16T02:18:14.191731"
 :entities (list
  (entity :text "Martinville." :label "ORG" :start 181 :end 193) (entity :text "Puis" :label "ORG" :start 793 :end 797) (entity :text "Bientôt" :label "ORG" :start 1174 :end 1181) (entity :text "Martinville" :label "ORG" :start 1648 :end 1659)
 )
 :sentences (list
  (sentence :text "Les clochers paraissaient si éloignés et nous avions l’air de si peu
nous rapprocher d’eux, que je fus étonné quand, quelques instants
après, nous nous arrêtâmes devant l’église de Martinville" :start 0 :end 192) (sentence :text "Je ne
savais pas la raison du plaisir que j’avais eu à les apercevoir à
l’horizon et l’obligation de chercher à découvrir cette raison me
semblait bien pénible; j’avais envie de garder en réserve dans ma tête
ces lignes remuantes au soleil et de n’y plus penser maintenant" :start 193 :end 466) (sentence :text "Et il
est probable que si je l’avais fait, les deux clochers seraient allés
à jamais rejoindre tant d’arbres, de toits, de parfums, de sons, que
j’avais distingués des autres à cause de ce plaisir obscur qu’ils
m’avaient procuré et que je n’ai jamais approfondi" :start 467 :end 729) (sentence :text "Je descendis
causer avec mes parents en attendant le docteur" :start 730 :end 791) (sentence :text "Puis nous repartîmes,
je repris ma place sur le siège, je tournai la tête pour voir encore
les clochers qu’un peu plus tard, j’aperçus une dernière fois au
tournant d’un chemin" :start 792 :end 969) (sentence :text "Le cocher, qui ne semblait pas disposé à causer,
ayant à peine répondu à mes propos, force me fut, faute d’autre
compagnie, de me rabattre sur celle de moi-même et d’essayer de me
rappeler mes clochers" :start 970 :end 1172) (sentence :text "Bientôt leurs lignes et leurs surfaces
ensoleillées, comme si elles avaient été une sorte d’écorce, se
déchirèrent, un peu de ce qui m’était caché en elles m’apparut, j’eus
une pensée qui n’existait pas pour moi l’instant avant, qui se formula
en mots dans ma tête, et le plaisir que m’avait fait tout à l’heure
éprouver leur vue s’en trouva tellement accru que, pris d’une sorte
d’ivresse, je ne pus plus penser à autre chose" :start 1173 :end 1600) (sentence :text "A ce moment et comme
nous étions déjà loin de Martinville en tournant la tête je les
aperçus de nouveau, tout noirs cette fois, car le soleil était déjà
couché" :start 1601 :end 1761) (sentence :text "Par moments les tournants du chemin me les dérobaient, puis
ils se montrèrent une dernière fois et enfin je ne les vis plus" :start 1762 :end 1886)
 ))