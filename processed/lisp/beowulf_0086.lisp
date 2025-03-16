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
 :text "--«La fille à M. Pupin! Oh! je vous crois bien, ma pauvre Françoise!
Avec cela que je ne l’aurais pas reconnue?»"
 :tokens 21
 :processed-at "2025-03-16T02:18:13.875343"
 :entities (list
  (entity :text "--«La" :label "ORG" :start 0 :end 5) (entity :text "Pupin!" :label "ORG" :start 17 :end 23) (entity :text "Françoise!" :label "ORG" :start 58 :end 68)
 )
 :sentences (list
  (sentence :text "--«La fille à M" :start 0 :end 15) (sentence :text "Pupin! Oh! je vous crois bien, ma pauvre Françoise!
Avec cela que je ne l’aurais pas reconnue?»" :start 16 :end 112)
 ))