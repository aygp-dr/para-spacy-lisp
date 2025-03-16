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
 :text "--C’est drôle qu’il aille même chez la mère Saint-Euverte, dit Mme de
Gallardon. Oh! je sais qu’il est intelligent, ajouta-t-elle en voulant
dire par là intrigant, mais cela ne fait rien, un juif chez la sœur et
la belle-sœur de deux archevêques!"
 :tokens 42
 :processed-at "2025-03-16T02:18:14.677324"
 :entities (list
  (entity :text "Saint-Euverte," :label "ORG" :start 44 :end 58) (entity :text "Gallardon." :label "ORG" :start 70 :end 80)
 )
 :sentences (list
  (sentence :text "--C’est drôle qu’il aille même chez la mère Saint-Euverte, dit Mme de
Gallardon" :start 0 :end 79) (sentence :text "Oh! je sais qu’il est intelligent, ajouta-t-elle en voulant
dire par là intrigant, mais cela ne fait rien, un juif chez la sœur et
la belle-sœur de deux archevêques!" :start 80 :end 246)
 ))