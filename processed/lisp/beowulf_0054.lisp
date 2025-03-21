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
 :text "Il y avait déjà bien des années que, de Combray, tout ce qui n’était
pas le théâtre et le drame de mon coucher, n’existait plus pour moi,
quand un jour d’hiver, comme je rentrais à la maison, ma mère, voyant
que j’avais froid, me proposa de me faire prendre, contre mon
habitude, un peu de thé. Je refusai d’abord et, je ne sais pourquoi,
me ravisai. Elle envoya chercher un de ces gâteaux courts et dodus
appelés Petites Madeleines qui semblent avoir été moulés dans la
valve rainurée d’une coquille de Saint-Jacques. Et bientôt,
machinalement, accablé par la morne journée et la perspective d’un
triste lendemain, je portai à mes lèvres une cuillerée du thé où
j’avais laissé s’amollir un morceau de madeleine. Mais à l’instant
même où la gorgée mêlée des miettes du gâteau toucha mon palais, je
tressaillis, attentif à ce qui se passait d’extraordinaire en moi. Un
plaisir délicieux m’avait envahi, isolé, sans la notion de sa cause.
Il m’avait aussitôt rendu les vicissitudes de la vie indifférentes,
ses désastres inoffensifs, sa brièveté illusoire, de la même façon
qu’opère l’amour, en me remplissant d’une essence précieuse: ou plutôt
cette essence n’était pas en moi, elle était moi. J’avais cessé de me
sentir médiocre, contingent, mortel. D’où avait pu me venir cette
puissante joie? Je sentais qu’elle était liée au goût du thé et du
gâteau, mais qu’elle le dépassait infiniment, ne devait pas être de
même nature. D’où venait-elle? Que signifiait-elle? Où l’appréhender?
Je bois une seconde gorgée où je ne trouve rien de plus que dans la
première, une troisième qui m’apporte un peu moins que la seconde. Il
est temps que je m’arrête, la vertu du breuvage semble diminuer. Il
est clair que la vérité que je cherche n’est pas en lui, mais en moi.
Il l’y a éveillée, mais ne la connaît pas, et ne peut que répéter
indéfiniment, avec de moins en moins de force, ce même témoignage que
je ne sais pas interpréter et que je veux au moins pouvoir lui
redemander et retrouver intact, à ma disposition, tout à l’heure, pour
un éclaircissement décisif. Je pose la tasse et me tourne vers mon
esprit. C’est à lui de trouver la vérité. Mais comment? Grave
incertitude, toutes les fois que l’esprit se sent dépassé par
lui-même; quand lui, le chercheur, est tout ensemble le pays obscur où
il doit chercher et où tout son bagage ne lui sera de rien. Chercher?
pas seulement: créer. Il est en face de quelque chose qui n’est pas
encore et que seul il peut réaliser, puis faire entrer dans sa
lumière."
 :tokens 435
 :processed-at "2025-03-16T02:18:13.844807"
 :entities (list
  (entity :text "Combray," :label "ORG" :start 40 :end 48) (entity :text "Elle" :label "ORG" :start 351 :end 355) (entity :text "Petites" :label "ORG" :start 414 :end 421) (entity :text "Madeleines" :label "ORG" :start 422 :end 432) (entity :text "Saint-Jacques." :label "ORG" :start 504 :end 518) (entity :text "Mais" :label "ORG" :start 713 :end 717) (entity :text "Mais" :label "ORG" :start 2139 :end 2143) (entity :text "Grave" :label "ORG" :start 2153 :end 2158) (entity :text "Chercher?" :label "ORG" :start 2352 :end 2361)
 )
 :sentences (list
  (sentence :text "Il y avait déjà bien des années que, de Combray, tout ce qui n’était
pas le théâtre et le drame de mon coucher, n’existait plus pour moi,
quand un jour d’hiver, comme je rentrais à la maison, ma mère, voyant
que j’avais froid, me proposa de me faire prendre, contre mon
habitude, un peu de thé" :start 0 :end 293) (sentence :text "Je refusai d’abord et, je ne sais pourquoi,
me ravisai" :start 294 :end 349) (sentence :text "Elle envoya chercher un de ces gâteaux courts et dodus
appelés Petites Madeleines qui semblent avoir été moulés dans la
valve rainurée d’une coquille de Saint-Jacques" :start 350 :end 517) (sentence :text "Et bientôt,
machinalement, accablé par la morne journée et la perspective d’un
triste lendemain, je portai à mes lèvres une cuillerée du thé où
j’avais laissé s’amollir un morceau de madeleine" :start 518 :end 711) (sentence :text "Mais à l’instant
même où la gorgée mêlée des miettes du gâteau toucha mon palais, je
tressaillis, attentif à ce qui se passait d’extraordinaire en moi" :start 712 :end 863) (sentence :text "Un
plaisir délicieux m’avait envahi, isolé, sans la notion de sa cause" :start 864 :end 935) (sentence :text "Il m’avait aussitôt rendu les vicissitudes de la vie indifférentes,
ses désastres inoffensifs, sa brièveté illusoire, de la même façon
qu’opère l’amour, en me remplissant d’une essence précieuse: ou plutôt
cette essence n’était pas en moi, elle était moi" :start 936 :end 1191) (sentence :text "J’avais cessé de me
sentir médiocre, contingent, mortel" :start 1192 :end 1248) (sentence :text "D’où avait pu me venir cette
puissante joie? Je sentais qu’elle était liée au goût du thé et du
gâteau, mais qu’elle le dépassait infiniment, ne devait pas être de
même nature" :start 1249 :end 1425) (sentence :text "D’où venait-elle? Que signifiait-elle? Où l’appréhender?
Je bois une seconde gorgée où je ne trouve rien de plus que dans la
première, une troisième qui m’apporte un peu moins que la seconde" :start 1426 :end 1617) (sentence :text "Il
est temps que je m’arrête, la vertu du breuvage semble diminuer" :start 1618 :end 1685) (sentence :text "Il
est clair que la vérité que je cherche n’est pas en lui, mais en moi" :start 1686 :end 1758) (sentence :text "Il l’y a éveillée, mais ne la connaît pas, et ne peut que répéter
indéfiniment, avec de moins en moins de force, ce même témoignage que
je ne sais pas interpréter et que je veux au moins pouvoir lui
redemander et retrouver intact, à ma disposition, tout à l’heure, pour
un éclaircissement décisif" :start 1759 :end 2056) (sentence :text "Je pose la tasse et me tourne vers mon
esprit" :start 2057 :end 2103) (sentence :text "C’est à lui de trouver la vérité" :start 2104 :end 2137) (sentence :text "Mais comment? Grave
incertitude, toutes les fois que l’esprit se sent dépassé par
lui-même; quand lui, le chercheur, est tout ensemble le pays obscur où
il doit chercher et où tout son bagage ne lui sera de rien" :start 2138 :end 2350) (sentence :text "Chercher?
pas seulement: créer" :start 2351 :end 2382) (sentence :text "Il est en face de quelque chose qui n’est pas
encore et que seul il peut réaliser, puis faire entrer dans sa
lumière" :start 2383 :end 2500)
 ))