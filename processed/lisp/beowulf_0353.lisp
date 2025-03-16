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
 :text "Je n’en entendis pas davantage, car Mlle Vinteuil, d’un air las,
gauche, affairé, honnête et triste, vint fermer les volets et la
fenêtre, mais je savais maintenant, pour toutes les souffrances que
pendant sa vie M. Vinteuil avait supportées à cause de sa fille, ce
qu’après la mort il avait reçu d’elle en salaire."
 :tokens 54
 :processed-at "2025-03-16T02:18:14.165173"
 :entities (list
  (entity :text "Mlle" :label "ORG" :start 36 :end 40) (entity :text "Vinteuil," :label "ORG" :start 41 :end 50) (entity :text "Vinteuil" :label "ORG" :start 216 :end 224)
 )
 :sentences (list
  (sentence :text "Je n’en entendis pas davantage, car Mlle Vinteuil, d’un air las,
gauche, affairé, honnête et triste, vint fermer les volets et la
fenêtre, mais je savais maintenant, pour toutes les souffrances que
pendant sa vie M" :start 0 :end 214) (sentence :text "Vinteuil avait supportées à cause de sa fille, ce
qu’après la mort il avait reçu d’elle en salaire" :start 215 :end 314)
 ))