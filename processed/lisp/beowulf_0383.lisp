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
 :text "En dehors de la jeune femme du docteur, ils étaient réduits presque
uniquement cette année-là (bien que Mme Verdurin fût elle-même
vertueuse et d’une respectable famille bourgeoise excessivement riche
et entièrement obscure avec laquelle elle avait peu à peu cessé
volontairement toute relation) à une personne presque du demi-monde,
Mme de Crécy, que Mme Verdurin appelait par son petit nom, Odette, et
déclarait être «un amour» et à la tante du pianiste, laquelle devait
avoir tiré le cordon; personnes ignorantes du monde et à la naïveté de
qui il avait été si facile de faire accroire que la princesse de Sagan
et la duchesse de Guermantes étaient obligées de payer des malheureux
pour avoir du monde à leurs dîners, que si on leur avait offert de les
faire inviter chez ces deux grandes dames, l’ancienne concierge et la
cocotte eussent dédaigneusement refusé."
 :tokens 142
 :processed-at "2025-03-16T02:18:14.203581"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 108 :end 116) (entity :text "Crécy," :label "ORG" :start 341 :end 347) (entity :text "Verdurin" :label "ORG" :start 356 :end 364) (entity :text "Odette," :label "ORG" :start 393 :end 400) (entity :text "Sagan" :label "ORG" :start 609 :end 614) (entity :text "Guermantes" :label "ORG" :start 633 :end 643)
 )
 :sentences (list
  (sentence :text "En dehors de la jeune femme du docteur, ils étaient réduits presque
uniquement cette année-là (bien que Mme Verdurin fût elle-même
vertueuse et d’une respectable famille bourgeoise excessivement riche
et entièrement obscure avec laquelle elle avait peu à peu cessé
volontairement toute relation) à une personne presque du demi-monde,
Mme de Crécy, que Mme Verdurin appelait par son petit nom, Odette, et
déclarait être «un amour» et à la tante du pianiste, laquelle devait
avoir tiré le cordon; personnes ignorantes du monde et à la naïveté de
qui il avait été si facile de faire accroire que la princesse de Sagan
et la duchesse de Guermantes étaient obligées de payer des malheureux
pour avoir du monde à leurs dîners, que si on leur avait offert de les
faire inviter chez ces deux grandes dames, l’ancienne concierge et la
cocotte eussent dédaigneusement refusé" :start 0 :end 864)
 ))