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
 :text "Swann apprit seulement que l’apparition récente de la sonate de
Vinteuil avait produit une grande impression dans une école de
tendances très avancées mais était entièrement inconnue du grand
public."
 :tokens 30
 :processed-at "2025-03-16T02:18:14.291015"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 0 :end 5) (entity :text "Vinteuil" :label "ORG" :start 64 :end 72)
 )
 :sentences (list
  (sentence :text "Swann apprit seulement que l’apparition récente de la sonate de
Vinteuil avait produit une grande impression dans une école de
tendances très avancées mais était entièrement inconnue du grand
public" :start 0 :end 198)
 ))