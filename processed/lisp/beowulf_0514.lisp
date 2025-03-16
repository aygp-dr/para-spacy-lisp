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
 :text "Ainsi revenait-elle dans la voiture de Swann; un soir comme elle
venait d’en descendre et qu’il lui disait à demain, elle cueillit
précipitamment dans le petit jardin qui précédait la maison un dernier
chrysanthème et le lui donna avant qu’il fût reparti. Il le tint serré
contre sa bouche pendant le retour, et quand au bout de quelques jours
la fleur fut fanée, il l’enferma précieusement dans son secrétaire."
 :tokens 69
 :processed-at "2025-03-16T02:18:14.332821"
 :entities (list
  (entity :text "Swann;" :label "ORG" :start 39 :end 45)
 )
 :sentences (list
  (sentence :text "Ainsi revenait-elle dans la voiture de Swann; un soir comme elle
venait d’en descendre et qu’il lui disait à demain, elle cueillit
précipitamment dans le petit jardin qui précédait la maison un dernier
chrysanthème et le lui donna avant qu’il fût reparti" :start 0 :end 254) (sentence :text "Il le tint serré
contre sa bouche pendant le retour, et quand au bout de quelques jours
la fleur fut fanée, il l’enferma précieusement dans son secrétaire" :start 255 :end 410)
 ))