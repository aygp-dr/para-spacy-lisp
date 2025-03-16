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
 :text "Mes remords étaient calmés, je me laissais aller à la douceur de cette
nuit où j’avais ma mère auprès de moi. Je savais qu’une telle nuit ne
pourrait se renouveler; que le plus grand désir que j’eusse au monde,
garder ma mère dans ma chambre pendant ces tristes heures nocturnes,
était trop en opposition avec les nécessités de la vie et le vœu de
tous, pour que l’accomplissement qu’on lui avait accordé ce soir pût
être autre chose que factice et exceptionnel. Demain mes angoisses
reprendraient et maman ne resterait pas là. Mais quand mes angoisses
étaient calmées, je ne les comprenais plus; puis demain soir était
encore lointain; je me disais que j’aurais le temps d’aviser, bien que
ce temps-là ne pût m’apporter aucun pouvoir de plus, qu’il s’agissait
de choses qui ne dépendaient pas de ma volonté et que seul me faisait
paraître plus évitables l’intervalle qui les séparait encore de moi."
 :tokens 154
 :processed-at "2025-03-16T02:18:13.836369"
 :entities (list
  (entity :text "Demain" :label "ORG" :start 463 :end 469) (entity :text "Mais" :label "ORG" :start 528 :end 532)
 )
 :sentences (list
  (sentence :text "Mes remords étaient calmés, je me laissais aller à la douceur de cette
nuit où j’avais ma mère auprès de moi" :start 0 :end 108) (sentence :text "Je savais qu’une telle nuit ne
pourrait se renouveler; que le plus grand désir que j’eusse au monde,
garder ma mère dans ma chambre pendant ces tristes heures nocturnes,
était trop en opposition avec les nécessités de la vie et le vœu de
tous, pour que l’accomplissement qu’on lui avait accordé ce soir pût
être autre chose que factice et exceptionnel" :start 109 :end 461) (sentence :text "Demain mes angoisses
reprendraient et maman ne resterait pas là" :start 462 :end 526) (sentence :text "Mais quand mes angoisses
étaient calmées, je ne les comprenais plus; puis demain soir était
encore lointain; je me disais que j’aurais le temps d’aviser, bien que
ce temps-là ne pût m’apporter aucun pouvoir de plus, qu’il s’agissait
de choses qui ne dépendaient pas de ma volonté et que seul me faisait
paraître plus évitables l’intervalle qui les séparait encore de moi" :start 527 :end 898)
 ))