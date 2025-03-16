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
 :text "Et quand la voiture de Mme Verdurin fut partie et que celle de Swann
s’avança, son cocher le regardant lui demanda s’il n’était pas malade
ou s’il n’était pas arrivé de malheur."
 :tokens 32
 :processed-at "2025-03-16T02:18:14.565175"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 27 :end 35) (entity :text "Swann" :label "ORG" :start 63 :end 68)
 )
 :sentences (list
  (sentence :text "Et quand la voiture de Mme Verdurin fut partie et que celle de Swann
s’avança, son cocher le regardant lui demanda s’il n’était pas malade
ou s’il n’était pas arrivé de malheur" :start 0 :end 176)
 ))