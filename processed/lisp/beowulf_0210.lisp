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
 :text "--«Est-ce qu’il y a des ouvrages de Bergotte où il ait parlé de la
Berma?» demandai-je à M. Swann."
 :tokens 19
 :processed-at "2025-03-16T02:18:13.998619"
 :entities (list
  (entity :text "Bergotte" :label "ORG" :start 36 :end 44) (entity :text "Berma?»" :label "ORG" :start 67 :end 74) (entity :text "Swann." :label "ORG" :start 92 :end 98)
 )
 :sentences (list
  (sentence :text "--«Est-ce qu’il y a des ouvrages de Bergotte où il ait parlé de la
Berma?» demandai-je à M" :start 0 :end 90) (sentence :text "Swann" :start 91 :end 97)
 ))