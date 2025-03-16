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
 :text "Or, la dame qu’accompagnait Legrandin était une personne vertueuse et
considérée; il ne pouvait être question qu’il fût en bonne fortune et
gêné d’être surpris, et mon père se demandait comment il avait pu
mécontenter Legrandin. «Je regretterais d’autant plus de le savoir
fâché, dit mon père, qu’au milieu de tous ces gens endimanchés il a,
avec son petit veston droit, sa cravate molle, quelque chose de si peu
apprêté, de si vraiment simple, et un air presque ingénu qui est tout
à fait sympathique.» Mais le conseil de famille fut unanimement d’avis
que mon père s’était fait une idée, ou que Legrandin, à ce moment-là,
était absorbé par quelque pensée. D’ailleurs la crainte de mon père
fut dissipée dès le lendemain soir. Comme nous revenions d’une grande
promenade, nous aperçûmes près du Pont-Vieux Legrandin, qui à cause
des fêtes, restait plusieurs jours à Combray. Il vint à nous la main
tendue: «Connaissez-vous, monsieur le liseur, me demanda-t-il, ce vers
de Paul Desjardins:"
 :tokens 163
 :processed-at "2025-03-16T02:18:14.064467"
 :entities (list
  (entity :text "Legrandin" :label "ORG" :start 28 :end 37) (entity :text "Legrandin." :label "ORG" :start 218 :end 228) (entity :text "Mais" :label "ORG" :start 504 :end 508) (entity :text "Legrandin," :label "ORG" :start 597 :end 607) (entity :text "Comme" :label "ORG" :start 728 :end 733) (entity :text "Pont-Vieux" :label "ORG" :start 796 :end 806) (entity :text "Legrandin," :label "ORG" :start 807 :end 817) (entity :text "Combray." :label "ORG" :start 867 :end 875) (entity :text "Paul" :label "ORG" :start 973 :end 977) (entity :text "Desjardins:" :label "ORG" :start 978 :end 989)
 )
 :sentences (list
  (sentence :text "Or, la dame qu’accompagnait Legrandin était une personne vertueuse et
considérée; il ne pouvait être question qu’il fût en bonne fortune et
gêné d’être surpris, et mon père se demandait comment il avait pu
mécontenter Legrandin" :start 0 :end 227) (sentence :text "«Je regretterais d’autant plus de le savoir
fâché, dit mon père, qu’au milieu de tous ces gens endimanchés il a,
avec son petit veston droit, sa cravate molle, quelque chose de si peu
apprêté, de si vraiment simple, et un air presque ingénu qui est tout
à fait sympathique" :start 228 :end 501) (sentence :text "» Mais le conseil de famille fut unanimement d’avis
que mon père s’était fait une idée, ou que Legrandin, à ce moment-là,
était absorbé par quelque pensée" :start 502 :end 656) (sentence :text "D’ailleurs la crainte de mon père
fut dissipée dès le lendemain soir" :start 657 :end 726) (sentence :text "Comme nous revenions d’une grande
promenade, nous aperçûmes près du Pont-Vieux Legrandin, qui à cause
des fêtes, restait plusieurs jours à Combray" :start 727 :end 874) (sentence :text "Il vint à nous la main
tendue: «Connaissez-vous, monsieur le liseur, me demanda-t-il, ce vers
de Paul Desjardins:" :start 875 :end 989)
 ))