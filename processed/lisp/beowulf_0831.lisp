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
 :text "Elle semblait non pas adresser une invitation, mais demander un
service, et avoir besoin de l’avis de la princesse sur le quintette de
Mozart comme si ç’avait été un plat de la composition d’une nouvelle
cuisinière sur les talents de laquelle il lui eût été précieux de
recueillir l’opinion d’un gourmet."
 :tokens 51
 :processed-at "2025-03-16T02:18:14.671457"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Mozart" :label "ORG" :start 135 :end 141)
 )
 :sentences (list
  (sentence :text "Elle semblait non pas adresser une invitation, mais demander un
service, et avoir besoin de l’avis de la princesse sur le quintette de
Mozart comme si ç’avait été un plat de la composition d’une nouvelle
cuisinière sur les talents de laquelle il lui eût été précieux de
recueillir l’opinion d’un gourmet" :start 0 :end 303)
 ))