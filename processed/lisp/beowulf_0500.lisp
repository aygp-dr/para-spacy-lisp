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
 :text "Aussitôt Cottard, s’en rapportant aux paroles de Swann, adopta cette
opinion, au sujet de la valeur d’une invitation chez M. Grévy, que
c’était chose fort peu recherchée et qui courait les rues. Dès lors il
ne s’étonna plus que Swann, aussi bien qu’un autre, fréquentât
l’Elysée, et même il le plaignait un peu d’aller à des déjeuners que
l’invité avouait lui-même être ennuyeux."
 :tokens 63
 :processed-at "2025-03-16T02:18:14.319842"
 :entities (list
  (entity :text "Cottard," :label "ORG" :start 9 :end 17) (entity :text "Swann," :label "ORG" :start 49 :end 55) (entity :text "Grévy," :label "ORG" :start 125 :end 131) (entity :text "Swann," :label "ORG" :start 228 :end 234)
 )
 :sentences (list
  (sentence :text "Aussitôt Cottard, s’en rapportant aux paroles de Swann, adopta cette
opinion, au sujet de la valeur d’une invitation chez M" :start 0 :end 123) (sentence :text "Grévy, que
c’était chose fort peu recherchée et qui courait les rues" :start 124 :end 193) (sentence :text "Dès lors il
ne s’étonna plus que Swann, aussi bien qu’un autre, fréquentât
l’Elysée, et même il le plaignait un peu d’aller à des déjeuners que
l’invité avouait lui-même être ennuyeux" :start 194 :end 378)
 ))