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
 :text "--«Taisez-vous, vous êtes un vilain. Au fond, dit-elle en se tournant
vers Swann, on nous défend à nous autres femmes des choses moins
voluptueuses que cela. Mais il n’y a pas une chair comparable à cela!
Quand M. Verdurin me faisait l’honneur d’être jaloux de moi--allons,
sois poli au moins, ne dis pas que tu ne l’as jamais été...--»"
 :tokens 59
 :processed-at "2025-03-16T02:18:14.272972"
 :entities (list
  (entity :text "Swann," :label "ORG" :start 75 :end 81) (entity :text "Mais" :label "ORG" :start 158 :end 162) (entity :text "Quand" :label "ORG" :start 205 :end 210) (entity :text "Verdurin" :label "ORG" :start 214 :end 222)
 )
 :sentences (list
  (sentence :text "--«Taisez-vous, vous êtes un vilain" :start 0 :end 35) (sentence :text "Au fond, dit-elle en se tournant
vers Swann, on nous défend à nous autres femmes des choses moins
voluptueuses que cela" :start 36 :end 156) (sentence :text "Mais il n’y a pas une chair comparable à cela!
Quand M" :start 157 :end 212) (sentence :text "Verdurin me faisait l’honneur d’être jaloux de moi--allons,
sois poli au moins, ne dis pas que tu ne l’as jamais été" :start 213 :end 330) (sentence :text "--»" :start 333 :end 336)
 ))