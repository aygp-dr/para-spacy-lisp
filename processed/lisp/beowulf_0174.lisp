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
 :text "Avant de les avoir vus, rien qu’en entendant leur nom qui, bien
souvent, n’avait rien de particulièrement israélite, il devinait non
seulement l’origine juive de ceux de mes amis qui l’étaient en effet,
mais même ce qu’il y avait quelquefois de fâcheux dans leur famille."
 :tokens 45
 :processed-at "2025-03-16T02:18:13.967004"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Avant de les avoir vus, rien qu’en entendant leur nom qui, bien
souvent, n’avait rien de particulièrement israélite, il devinait non
seulement l’origine juive de ceux de mes amis qui l’étaient en effet,
mais même ce qu’il y avait quelquefois de fâcheux dans leur famille" :start 0 :end 270)
 ))