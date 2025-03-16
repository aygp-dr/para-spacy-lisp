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
 :text "--«Pauvres enfants, disait Françoise à peine arrivée à la grille et
déjà en larmes; pauvre jeunesse qui sera fauchée comme un pré; rien
que d’y penser j’en suis choquée», ajoutait-elle en mettant la main
sur son cœur, là où elle avait reçu ce choc."
 :tokens 44
 :processed-at "2025-03-16T02:18:13.954695"
 :entities (list
  (entity :text "--«Pauvres" :label "ORG" :start 0 :end 10) (entity :text "Françoise" :label "ORG" :start 27 :end 36)
 )
 :sentences (list
  (sentence :text "--«Pauvres enfants, disait Françoise à peine arrivée à la grille et
déjà en larmes; pauvre jeunesse qui sera fauchée comme un pré; rien
que d’y penser j’en suis choquée», ajoutait-elle en mettant la main
sur son cœur, là où elle avait reçu ce choc" :start 0 :end 247)
 ))