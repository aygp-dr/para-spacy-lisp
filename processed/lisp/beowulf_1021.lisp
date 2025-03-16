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
 :text "Puis, nous poursuivions notre route jusque devant leur porte cochère
où un concierge différent de tout concierge, et pénétré jusque dans
les galons de sa livrée du même charme douloureux que j’avais ressenti
dans le nom de Gilberte, avait l’air de savoir que j’étais de ceux à
qui une indignité originelle interdirait toujours de pénétrer dans la
vie mystérieuse qu’il était chargé de garder et sur laquelle les
fenêtres de l’entre-sol paraissaient conscientes d’être refermées,
ressemblant beaucoup moins entre la noble retombée de leurs rideaux de
mousseline à n’importe quelles autres fenêtres, qu’aux regards de
Gilberte. D’autres fois nous allions sur les boulevards et je me
postais à l’entrée de la rue Duphot; on m’avait dit qu’on pouvait
souvent y voir passer Swann se rendant chez son dentiste; et mon
imagination différenciait tellement le père de Gilberte du reste de
l’humanité, sa présence au milieu du monde réel y introduisait tant de
merveilleux, que, avant même d’arriver à la Madeleine, j’étais ému à
la pensée d’approcher d’une rue où pouvait se produire inopinément
l’apparition surnaturelle."
 :tokens 175
 :processed-at "2025-03-16T02:18:14.893831"
 :entities (list
  (entity :text "Puis," :label "ORG" :start 0 :end 5) (entity :text "Gilberte," :label "ORG" :start 223 :end 232) (entity :text "Gilberte." :label "ORG" :start 616 :end 625) (entity :text "Duphot;" :label "ORG" :start 710 :end 717) (entity :text "Swann" :label "ORG" :start 769 :end 774) (entity :text "Gilberte" :label "ORG" :start 859 :end 867) (entity :text "Madeleine," :label "ORG" :start 995 :end 1005)
 )
 :sentences (list
  (sentence :text "Puis, nous poursuivions notre route jusque devant leur porte cochère
où un concierge différent de tout concierge, et pénétré jusque dans
les galons de sa livrée du même charme douloureux que j’avais ressenti
dans le nom de Gilberte, avait l’air de savoir que j’étais de ceux à
qui une indignité originelle interdirait toujours de pénétrer dans la
vie mystérieuse qu’il était chargé de garder et sur laquelle les
fenêtres de l’entre-sol paraissaient conscientes d’être refermées,
ressemblant beaucoup moins entre la noble retombée de leurs rideaux de
mousseline à n’importe quelles autres fenêtres, qu’aux regards de
Gilberte" :start 0 :end 624) (sentence :text "D’autres fois nous allions sur les boulevards et je me
postais à l’entrée de la rue Duphot; on m’avait dit qu’on pouvait
souvent y voir passer Swann se rendant chez son dentiste; et mon
imagination différenciait tellement le père de Gilberte du reste de
l’humanité, sa présence au milieu du monde réel y introduisait tant de
merveilleux, que, avant même d’arriver à la Madeleine, j’étais ému à
la pensée d’approcher d’une rue où pouvait se produire inopinément
l’apparition surnaturelle" :start 625 :end 1112)
 ))