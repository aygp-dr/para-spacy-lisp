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
 :text "Quand sa maîtresse du moment était au contraire une personne mondaine
ou du moins une personne qu’une extraction trop humble ou une
situation trop irrégulière n’empêchait pas qu’il fît recevoir dans le
monde, alors pour elle il y retournait, mais seulement dans l’orbite
particulier où elle se mouvait ou bien où il l’avait entraînée.
«Inutile de compter sur Swann ce soir, disait-on, vous savez bien que
c’est le jour d’Opéra de son Américaine.» Il la faisait inviter dans
les salons particulièrement fermés où il avait ses habitudes, ses
dîners hebdomadaires, son poker; chaque soir, après qu’un léger
crépelage ajouté à la brosse de ses cheveux roux avait tempéré de
quelque douceur la vivacité de ses yeux verts, il choisissait une
fleur pour sa boutonnière et partait pour retrouver sa maîtresse à
dîner chez l’une ou l’autre des femmes de sa coterie; et alors,
pensant à l’admiration et à l’amitié que les gens à la mode pour qui
il faisait la pluie et le beau temps et qu’il allait retrouver là, lui
prodigueraient devant la femme qu’il aimait, il retrouvait du charme à
cette vie mondaine sur laquelle il s’était blasé, mais dont la
matière, pénétrée et colorée chaudement d’une flamme insinuée qui s’y
jouait, lui semblait précieuse et belle depuis qu’il y avait incorporé
un nouvel amour."
 :tokens 217
 :processed-at "2025-03-16T02:18:14.228877"
 :entities (list
  (entity :text "Quand" :label "ORG" :start 0 :end 5) (entity :text "«Inutile" :label "ORG" :start 335 :end 343) (entity :text "Swann" :label "ORG" :start 359 :end 364)
 )
 :sentences (list
  (sentence :text "Quand sa maîtresse du moment était au contraire une personne mondaine
ou du moins une personne qu’une extraction trop humble ou une
situation trop irrégulière n’empêchait pas qu’il fît recevoir dans le
monde, alors pour elle il y retournait, mais seulement dans l’orbite
particulier où elle se mouvait ou bien où il l’avait entraînée" :start 0 :end 333) (sentence :text "«Inutile de compter sur Swann ce soir, disait-on, vous savez bien que
c’est le jour d’Opéra de son Américaine" :start 334 :end 444) (sentence :text "» Il la faisait inviter dans
les salons particulièrement fermés où il avait ses habitudes, ses
dîners hebdomadaires, son poker; chaque soir, après qu’un léger
crépelage ajouté à la brosse de ses cheveux roux avait tempéré de
quelque douceur la vivacité de ses yeux verts, il choisissait une
fleur pour sa boutonnière et partait pour retrouver sa maîtresse à
dîner chez l’une ou l’autre des femmes de sa coterie; et alors,
pensant à l’admiration et à l’amitié que les gens à la mode pour qui
il faisait la pluie et le beau temps et qu’il allait retrouver là, lui
prodigueraient devant la femme qu’il aimait, il retrouvait du charme à
cette vie mondaine sur laquelle il s’était blasé, mais dont la
matière, pénétrée et colorée chaudement d’une flamme insinuée qui s’y
jouait, lui semblait précieuse et belle depuis qu’il y avait incorporé
un nouvel amour" :start 445 :end 1297)
 ))