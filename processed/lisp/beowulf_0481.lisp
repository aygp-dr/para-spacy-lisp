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
 :text "--Laissez-moi donc tranquille avec vos maîtres, vous en savez dix fois
autant que lui, répondit Mme Verdurin au docteur Cottard, du ton d’une
personne qui a le courage de ses opinions et tient bravement tête à
ceux qui ne sont pas du même avis qu’elle. Vous ne tuez pas vos
malades, vous, au moins!"
 :tokens 54
 :processed-at "2025-03-16T02:18:14.299308"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 100 :end 108) (entity :text "Cottard," :label "ORG" :start 120 :end 128) (entity :text "Vous" :label "ORG" :start 253 :end 257)
 )
 :sentences (list
  (sentence :text "--Laissez-moi donc tranquille avec vos maîtres, vous en savez dix fois
autant que lui, répondit Mme Verdurin au docteur Cottard, du ton d’une
personne qui a le courage de ses opinions et tient bravement tête à
ceux qui ne sont pas du même avis qu’elle" :start 0 :end 251) (sentence :text "Vous ne tuez pas vos
malades, vous, au moins!" :start 252 :end 298)
 ))