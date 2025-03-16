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
 :text "--«Oui, mais si vous l’aviez connue à ce moment-là, ce qu’elle était
jolie! Elle habitait un petit hôtel très étrange avec des
chinoiseries. Je me rappelle que nous étions embêtés par le bruit des
crieurs de journaux, elle a fini par me faire lever.»"
 :tokens 44
 :processed-at "2025-03-16T02:18:14.903731"
 :entities (list
  (entity :text "--«Oui," :label "ORG" :start 0 :end 7) (entity :text "Elle" :label "ORG" :start 76 :end 80)
 )
 :sentences (list
  (sentence :text "--«Oui, mais si vous l’aviez connue à ce moment-là, ce qu’elle était
jolie! Elle habitait un petit hôtel très étrange avec des
chinoiseries" :start 0 :end 139) (sentence :text "Je me rappelle que nous étions embêtés par le bruit des
crieurs de journaux, elle a fini par me faire lever" :start 140 :end 248) (sentence :text "»" :start 249 :end 250)
 ))