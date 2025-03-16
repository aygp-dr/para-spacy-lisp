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
 :text "--«Vous, Docteur, un savant, un esprit fort, vous venez naturellement
le vendredi saint comme un autre jour?» dit-elle à Cottard la première
année, d’un ton assuré comme si elle ne pouvait douter de la réponse.
Mais elle tremblait en attendant qu’il l’eût prononcée, car s’il
n’était pas venu, elle risquait de se trouver seule."
 :tokens 54
 :processed-at "2025-03-16T02:18:14.209075"
 :entities (list
  (entity :text "--«Vous," :label "ORG" :start 0 :end 8) (entity :text "Docteur," :label "ORG" :start 9 :end 17) (entity :text "Cottard" :label "ORG" :start 121 :end 128) (entity :text "Mais" :label "ORG" :start 211 :end 215)
 )
 :sentences (list
  (sentence :text "--«Vous, Docteur, un savant, un esprit fort, vous venez naturellement
le vendredi saint comme un autre jour?» dit-elle à Cottard la première
année, d’un ton assuré comme si elle ne pouvait douter de la réponse" :start 0 :end 209) (sentence :text "Mais elle tremblait en attendant qu’il l’eût prononcée, car s’il
n’était pas venu, elle risquait de se trouver seule" :start 210 :end 327)
 ))