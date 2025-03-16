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
 :text "Je trouve très raisonnable la croyance celtique que les âmes de ceux
que nous avons perdus sont captives dans quelque être inférieur, dans
une bête, un végétal, une chose inanimée, perdues en effet pour nous
jusqu’au jour, qui pour beaucoup ne vient jamais, où nous nous
trouvons passer près de l’arbre, entrer en possession de l’objet qui
est leur prison. Alors elles tressaillent, nous appellent, et sitôt
que nous les avons reconnues, l’enchantement est brisé. Délivrées par
nous, elles ont vaincu la mort et reviennent vivre avec nous."
 :tokens 88
 :processed-at "2025-03-16T02:18:13.842689"
 :entities (list
  (entity :text "Délivrées" :label "ORG" :start 464 :end 473)
 )
 :sentences (list
  (sentence :text "Je trouve très raisonnable la croyance celtique que les âmes de ceux
que nous avons perdus sont captives dans quelque être inférieur, dans
une bête, un végétal, une chose inanimée, perdues en effet pour nous
jusqu’au jour, qui pour beaucoup ne vient jamais, où nous nous
trouvons passer près de l’arbre, entrer en possession de l’objet qui
est leur prison" :start 0 :end 355) (sentence :text "Alors elles tressaillent, nous appellent, et sitôt
que nous les avons reconnues, l’enchantement est brisé" :start 356 :end 462) (sentence :text "Délivrées par
nous, elles ont vaincu la mort et reviennent vivre avec nous" :start 463 :end 538)
 ))