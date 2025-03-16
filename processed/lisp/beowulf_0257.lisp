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
 :text "Nous causions un moment avec M. Vinteuil devant le porche en sortant
de l’église. Il intervenait entre les gamins qui se chamaillaient sur
la place, prenait la défense des petits, faisait des sermons aux
grands. Si sa fille nous disait de sa grosse voix combien elle avait
été contente de nous voir, aussitôt il semblait qu’en elle-même une
sœur plus sensible rougissait de ce propos de bon garçon étourdi qui
avait pu nous faire croire qu’elle sollicitait d’être invitée chez
nous. Son père lui jetait un manteau sur les épaules, ils montaient
dans un petit buggy qu’elle conduisait elle-même et tous deux
retournaient à Montjouvain. Quant à nous, comme c’était le lendemain
dimanche et qu’on ne se lèverait que pour la grand’messe, s’il faisait
clair de lune et que l’air fût chaud, au lieu de nous faire rentrer
directement, mon père, par amour de la gloire, nous faisait faire par
le calvaire une longue promenade, que le peu d’aptitude de ma mère à
s’orienter et à se reconnaître dans son chemin, lui faisait considérer
comme la prouesse d’un génie stratégique. Parfois nous allions
jusqu’au viaduc, dont les enjambées de pierre commençaient à la gare
et me représentaient l’exil et la détresse hors du monde civilisé
parce que chaque année en venant de Paris, on nous recommandait de
faire bien attention, quand ce serait Combray, de ne pas laisser
passer la station, d’être prêts d’avance car le train repartait au
bout de deux minutes et s’engageait sur le viaduc au delà des pays
chrétiens dont Combray marquait pour moi l’extrême limite. Nous
revenions par le boulevard de la gare, où étaient les plus agréables
villas de la commune. Dans chaque jardin le clair de lune, comme
Hubert Robert, semait ses degrés rompus de marbre blanc, ses jets
d’eau, ses grilles entr’ouvertes. Sa lumière avait détruit le bureau
du télégraphe. Il n’en subsistait plus qu’une colonne à demi brisée,
mais qui gardait la beauté d’une ruine immortelle. Je traînais la
jambe, je tombais de sommeil, l’odeur des tilleuls qui embaumait
m’apparaissait comme une récompense qu’on ne pouvait obtenir qu’au
prix des plus grandes fatigues et qui n’en valait pas la peine. De
grilles fort éloignées les unes des autres, des chiens réveillés par
nos pas solitaires faisaient alterner des aboiements comme il m’arrive
encore quelquefois d’en entendre le soir, et entre lesquels dut venir
(quand sur son emplacement on créa le jardin public de Combray) se
réfugier le boulevard de la gare, car, où que je me trouve, dès qu’ils
commencent à retentir et à se répondre, je l’aperçois, avec ses
tilleuls et son trottoir éclairé par la lune."
 :tokens 437
 :processed-at "2025-03-16T02:18:14.054568"
 :entities (list
  (entity :text "Nous" :label "ORG" :start 0 :end 4) (entity :text "Vinteuil" :label "ORG" :start 32 :end 40) (entity :text "Montjouvain." :label "ORG" :start 622 :end 634) (entity :text "Quant" :label "ORG" :start 635 :end 640) (entity :text "Parfois" :label "ORG" :start 1067 :end 1074) (entity :text "Paris," :label "ORG" :start 1259 :end 1265) (entity :text "Combray," :label "ORG" :start 1328 :end 1336) (entity :text "Combray" :label "ORG" :start 1504 :end 1511) (entity :text "Nous" :label "ORG" :start 1548 :end 1552) (entity :text "Dans" :label "ORG" :start 1644 :end 1648) (entity :text "Hubert" :label "ORG" :start 1687 :end 1693) (entity :text "Robert," :label "ORG" :start 1694 :end 1701) (entity :text "Combray)" :label "ORG" :start 2421 :end 2429)
 )
 :sentences (list
  (sentence :text "Nous causions un moment avec M" :start 0 :end 30) (sentence :text "Vinteuil devant le porche en sortant
de l’église" :start 31 :end 80) (sentence :text "Il intervenait entre les gamins qui se chamaillaient sur
la place, prenait la défense des petits, faisait des sermons aux
grands" :start 81 :end 210) (sentence :text "Si sa fille nous disait de sa grosse voix combien elle avait
été contente de nous voir, aussitôt il semblait qu’en elle-même une
sœur plus sensible rougissait de ce propos de bon garçon étourdi qui
avait pu nous faire croire qu’elle sollicitait d’être invitée chez
nous" :start 211 :end 481) (sentence :text "Son père lui jetait un manteau sur les épaules, ils montaient
dans un petit buggy qu’elle conduisait elle-même et tous deux
retournaient à Montjouvain" :start 482 :end 633) (sentence :text "Quant à nous, comme c’était le lendemain
dimanche et qu’on ne se lèverait que pour la grand’messe, s’il faisait
clair de lune et que l’air fût chaud, au lieu de nous faire rentrer
directement, mon père, par amour de la gloire, nous faisait faire par
le calvaire une longue promenade, que le peu d’aptitude de ma mère à
s’orienter et à se reconnaître dans son chemin, lui faisait considérer
comme la prouesse d’un génie stratégique" :start 634 :end 1065) (sentence :text "Parfois nous allions
jusqu’au viaduc, dont les enjambées de pierre commençaient à la gare
et me représentaient l’exil et la détresse hors du monde civilisé
parce que chaque année en venant de Paris, on nous recommandait de
faire bien attention, quand ce serait Combray, de ne pas laisser
passer la station, d’être prêts d’avance car le train repartait au
bout de deux minutes et s’engageait sur le viaduc au delà des pays
chrétiens dont Combray marquait pour moi l’extrême limite" :start 1066 :end 1546) (sentence :text "Nous
revenions par le boulevard de la gare, où étaient les plus agréables
villas de la commune" :start 1547 :end 1642) (sentence :text "Dans chaque jardin le clair de lune, comme
Hubert Robert, semait ses degrés rompus de marbre blanc, ses jets
d’eau, ses grilles entr’ouvertes" :start 1643 :end 1785) (sentence :text "Sa lumière avait détruit le bureau
du télégraphe" :start 1786 :end 1835) (sentence :text "Il n’en subsistait plus qu’une colonne à demi brisée,
mais qui gardait la beauté d’une ruine immortelle" :start 1836 :end 1940) (sentence :text "Je traînais la
jambe, je tombais de sommeil, l’odeur des tilleuls qui embaumait
m’apparaissait comme une récompense qu’on ne pouvait obtenir qu’au
prix des plus grandes fatigues et qui n’en valait pas la peine" :start 1941 :end 2151) (sentence :text "De
grilles fort éloignées les unes des autres, des chiens réveillés par
nos pas solitaires faisaient alterner des aboiements comme il m’arrive
encore quelquefois d’en entendre le soir, et entre lesquels dut venir
(quand sur son emplacement on créa le jardin public de Combray) se
réfugier le boulevard de la gare, car, où que je me trouve, dès qu’ils
commencent à retentir et à se répondre, je l’aperçois, avec ses
tilleuls et son trottoir éclairé par la lune" :start 2152 :end 2612)
 ))