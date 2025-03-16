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
 :text "Or quand le pianiste eut joué, Swann fut plus aimable encore avec lui
qu’avec les autres personnes qui se trouvaient là. Voici pourquoi:"
 :tokens 23
 :processed-at "2025-03-16T02:18:14.276159"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 31 :end 36) (entity :text "Voici" :label "ORG" :start 121 :end 126)
 )
 :sentences (list
  (sentence :text "Or quand le pianiste eut joué, Swann fut plus aimable encore avec lui
qu’avec les autres personnes qui se trouvaient là" :start 0 :end 119) (sentence :text "Voici pourquoi:" :start 120 :end 136)
 ))