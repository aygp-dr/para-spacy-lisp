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
 :text "Mais Brichot attendait que Swann eût donné la sienne. Celui-ci ne
répondit pas et en se dérobant fit manquer la brillante joute que Mme
Verdurin se réjouissait d’offrir à Forcheville."
 :tokens 30
 :processed-at "2025-03-16T02:18:14.468406"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Brichot" :label "ORG" :start 5 :end 12) (entity :text "Swann" :label "ORG" :start 27 :end 32) (entity :text "Verdurin" :label "ORG" :start 136 :end 144) (entity :text "Forcheville." :label "ORG" :start 171 :end 183)
 )
 :sentences (list
  (sentence :text "Mais Brichot attendait que Swann eût donné la sienne" :start 0 :end 52) (sentence :text "Celui-ci ne
répondit pas et en se dérobant fit manquer la brillante joute que Mme
Verdurin se réjouissait d’offrir à Forcheville" :start 53 :end 182)
 ))