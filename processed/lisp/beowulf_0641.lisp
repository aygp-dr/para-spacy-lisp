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
 :text "--Il y a, dit Brichot en martelant les syllabes, une définition bien
curieuse de l’intelligence dans ce doux anarchiste de Fénelon..."
 :tokens 21
 :processed-at "2025-03-16T02:18:14.466873"
 :entities (list
  (entity :text "--Il" :label "ORG" :start 0 :end 4) (entity :text "Brichot" :label "ORG" :start 14 :end 21) (entity :text "Fénelon..." :label "ORG" :start 123 :end 133)
 )
 :sentences (list
  (sentence :text "--Il y a, dit Brichot en martelant les syllabes, une définition bien
curieuse de l’intelligence dans ce doux anarchiste de Fénelon" :start 0 :end 130)
 ))