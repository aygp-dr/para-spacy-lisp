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
 :text "Cottard à ces mots manifesta en même temps son étonnement et sa
soumission, comme devant une vérité contraire à tout ce qu’il avait
cru jusque-là, mais d’une évidence irrésistible; et, baissant d’un air
ému et peureux son nez dans son assiette, il se contenta de répondre:
«Ah!-ah!-ah!-ah!-ah!» en traversant à reculons, dans sa retraite
repliée en bon ordre jusqu’au fond de lui-même, le long d’une gamme
descendante, tout le registre de sa voix. Et il ne fut plus question
de Swann chez les Verdurin."
 :tokens 84
 :processed-at "2025-03-16T02:18:14.575554"
 :entities (list
  (entity :text "Cottard" :label "ORG" :start 0 :end 7) (entity :text "Swann" :label "ORG" :start 478 :end 483) (entity :text "Verdurin." :label "ORG" :start 493 :end 502)
 )
 :sentences (list
  (sentence :text "Cottard à ces mots manifesta en même temps son étonnement et sa
soumission, comme devant une vérité contraire à tout ce qu’il avait
cru jusque-là, mais d’une évidence irrésistible; et, baissant d’un air
ému et peureux son nez dans son assiette, il se contenta de répondre:
«Ah!-ah!-ah!-ah!-ah!» en traversant à reculons, dans sa retraite
repliée en bon ordre jusqu’au fond de lui-même, le long d’une gamme
descendante, tout le registre de sa voix" :start 0 :end 446) (sentence :text "Et il ne fut plus question
de Swann chez les Verdurin" :start 447 :end 501)
 ))