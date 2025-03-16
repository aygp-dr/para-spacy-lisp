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
 :text "Ce que ma grand’tante interrompit par: «Abondance de biens...» car
depuis que sa fille était malade elle croyait devoir la remonter en
lui présentant toujours tout par le bon côté. Mais mon père prenant la
parole:"
 :tokens 36
 :processed-at "2025-03-16T02:18:14.061647"
 :entities (list
  (entity :text "«Abondance" :label "ORG" :start 39 :end 49) (entity :text "Mais" :label "ORG" :start 181 :end 185)
 )
 :sentences (list
  (sentence :text "Ce que ma grand’tante interrompit par: «Abondance de biens" :start 0 :end 58) (sentence :text "» car
depuis que sa fille était malade elle croyait devoir la remonter en
lui présentant toujours tout par le bon côté" :start 61 :end 179) (sentence :text "Mais mon père prenant la
parole:" :start 180 :end 213)
 ))