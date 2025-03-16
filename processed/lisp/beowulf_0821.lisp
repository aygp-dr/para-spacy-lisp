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
 :text "--Tiens, vous voilà, mais il y a des éternités qu’on ne vous a vu, dit
à Swann le général qui, remarquant ses traits tirés et en concluant
que c’était peut-être une maladie grave qui l’éloignait du monde,
ajouta: «Vous avez bonne mine, vous savez!» pendant que M. de Bréauté
demandait:"
 :tokens 50
 :processed-at "2025-03-16T02:18:14.659273"
 :entities (list
  (entity :text "--Tiens," :label "ORG" :start 0 :end 8) (entity :text "Swann" :label "ORG" :start 73 :end 78) (entity :text "«Vous" :label "ORG" :start 213 :end 218) (entity :text "Bréauté" :label "ORG" :start 267 :end 274)
 )
 :sentences (list
  (sentence :text "--Tiens, vous voilà, mais il y a des éternités qu’on ne vous a vu, dit
à Swann le général qui, remarquant ses traits tirés et en concluant
que c’était peut-être une maladie grave qui l’éloignait du monde,
ajouta: «Vous avez bonne mine, vous savez!» pendant que M" :start 0 :end 262) (sentence :text "de Bréauté
demandait:" :start 263 :end 285)
 ))