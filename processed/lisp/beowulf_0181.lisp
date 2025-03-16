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
 :text "Et après nous avoir posé adroitement quelques questions plus précises,
il s’écriait: «À la garde! À la garde!» ou, si c’était le patient
lui-même déjà arrivé qu’il avait forcé à son insu, par un
interrogatoire dissimulé, à confesser ses origines, alors pour nous
montrer qu’il n’avait plus aucun doute, il se contentait de nous
regarder en fredonnant imperceptiblement:"
 :tokens 58
 :processed-at "2025-03-16T02:18:13.971903"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Et après nous avoir posé adroitement quelques questions plus précises,
il s’écriait: «À la garde! À la garde!» ou, si c’était le patient
lui-même déjà arrivé qu’il avait forcé à son insu, par un
interrogatoire dissimulé, à confesser ses origines, alors pour nous
montrer qu’il n’avait plus aucun doute, il se contentait de nous
regarder en fredonnant imperceptiblement:" :start 0 :end 369)
 ))