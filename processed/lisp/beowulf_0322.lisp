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
 :text "Comme la promenade du côté de Méséglise était la moins longue des deux
que nous faisions autour de Combray et qu’à cause de cela on la
réservait pour les temps incertains, le climat du côté de Méséglise
était assez pluvieux et nous ne perdions jamais de vue la lisière des
bois de Roussainville dans l’épaisseur desquels nous pourrions nous
mettre à couvert."
 :tokens 62
 :processed-at "2025-03-16T02:18:14.130859"
 :entities (list
  (entity :text "Comme" :label "ORG" :start 0 :end 5) (entity :text "Méséglise" :label "ORG" :start 30 :end 39) (entity :text "Combray" :label "ORG" :start 99 :end 106) (entity :text "Méséglise" :label "ORG" :start 193 :end 202) (entity :text "Roussainville" :label "ORG" :start 281 :end 294)
 )
 :sentences (list
  (sentence :text "Comme la promenade du côté de Méséglise était la moins longue des deux
que nous faisions autour de Combray et qu’à cause de cela on la
réservait pour les temps incertains, le climat du côté de Méséglise
était assez pluvieux et nous ne perdions jamais de vue la lisière des
bois de Roussainville dans l’épaisseur desquels nous pourrions nous
mettre à couvert" :start 0 :end 357)
 ))