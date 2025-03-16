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
 :text "--Comment ça, M. Grévy? vous connaissez M. Grévy? dit-il à Swann de
l’air stupide et incrédule d’un municipal à qui un inconnu demande à
voir le Président de la République et qui, comprenant par ces mots «à
qui il a affaire», comme disent les journaux, assure au pauvre dément
qu’il va être reçu à l’instant et le dirige sur l’infirmerie spéciale
du dépôt."
 :tokens 63
 :processed-at "2025-03-16T02:18:14.317995"
 :entities (list
  (entity :text "--Comment" :label "ORG" :start 0 :end 9) (entity :text "Grévy?" :label "ORG" :start 17 :end 23) (entity :text "Grévy?" :label "ORG" :start 43 :end 49) (entity :text "Swann" :label "ORG" :start 59 :end 64) (entity :text "Président" :label "ORG" :start 145 :end 154) (entity :text "République" :label "ORG" :start 161 :end 171)
 )
 :sentences (list
  (sentence :text "--Comment ça, M" :start 0 :end 15) (sentence :text "Grévy? vous connaissez M" :start 16 :end 41) (sentence :text "Grévy? dit-il à Swann de
l’air stupide et incrédule d’un municipal à qui un inconnu demande à
voir le Président de la République et qui, comprenant par ces mots «à
qui il a affaire», comme disent les journaux, assure au pauvre dément
qu’il va être reçu à l’instant et le dirige sur l’infirmerie spéciale
du dépôt" :start 42 :end 355)
 ))