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
 :text "Il revenait à ce point de vue--opposé à celui de son amour et de sa
jalousie et auquel il se plaçait quelquefois par une sorte d’équité
intellectuelle et pour faire la part des diverses probabilités--d’où il
essayait de juger Odette comme s’il ne l’avait pas aimée, comme si
elle était pour lui une femme comme les autres, comme si la vie
d’Odette n’avait pas été, dès qu’il n’était plus là, différente,
tramée en cachette de lui, ourdie contre lui."
 :tokens 79
 :processed-at "2025-03-16T02:18:14.610097"
 :entities (list
  (entity :text "Odette" :label "ORG" :start 226 :end 232)
 )
 :sentences (list
  (sentence :text "Il revenait à ce point de vue--opposé à celui de son amour et de sa
jalousie et auquel il se plaçait quelquefois par une sorte d’équité
intellectuelle et pour faire la part des diverses probabilités--d’où il
essayait de juger Odette comme s’il ne l’avait pas aimée, comme si
elle était pour lui une femme comme les autres, comme si la vie
d’Odette n’avait pas été, dès qu’il n’était plus là, différente,
tramée en cachette de lui, ourdie contre lui" :start 0 :end 448)
 ))