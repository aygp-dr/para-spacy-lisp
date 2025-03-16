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
 :text "--Tu sais, mon mari n’est pas bien, son foie..., cela lui ferait grand
plaisir de te voir, reprit Mme de Gallardon, faisant maintenant à la
princesse une obligation de charité de paraître à sa soirée."
 :tokens 35
 :processed-at "2025-03-16T02:18:14.672950"
 :entities (list
  (entity :text "--Tu" :label "ORG" :start 0 :end 4) (entity :text "Gallardon," :label "ORG" :start 105 :end 115)
 )
 :sentences (list
  (sentence :text "--Tu sais, mon mari n’est pas bien, son foie" :start 0 :end 44) (sentence :text ", cela lui ferait grand
plaisir de te voir, reprit Mme de Gallardon, faisant maintenant à la
princesse une obligation de charité de paraître à sa soirée" :start 47 :end 199)
 ))