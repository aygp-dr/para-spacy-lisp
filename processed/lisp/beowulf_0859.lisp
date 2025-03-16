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
 :text "--Vous trouvez? Elle est jolie à croquer, dit le général qui ne perdait
pas Mme de Cambremer de vue. Ce n’est pas votre avis, princesse?"
 :tokens 25
 :processed-at "2025-03-16T02:18:14.694593"
 :entities (list
  (entity :text "--Vous" :label "ORG" :start 0 :end 6) (entity :text "Elle" :label "ORG" :start 16 :end 20) (entity :text "Cambremer" :label "ORG" :start 83 :end 92)
 )
 :sentences (list
  (sentence :text "--Vous trouvez? Elle est jolie à croquer, dit le général qui ne perdait
pas Mme de Cambremer de vue" :start 0 :end 99) (sentence :text "Ce n’est pas votre avis, princesse?" :start 100 :end 136)
 ))