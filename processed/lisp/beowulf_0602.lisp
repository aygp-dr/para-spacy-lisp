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
 :text "Mais elle remarqua que seul Swann ne s’était pas déridé. Du reste il
n’était pas très content que Cottard fît rire de lui devant
Forcheville. Mais le peintre, au lieu de répondre d’une façon
intéressante à Swann, ce qu’il eût probablement fait s’il eût été seul
avec lui, préféra se faire admirer des convives en plaçant un morceau
sur l’habileté du maître disparu."
 :tokens 63
 :processed-at "2025-03-16T02:18:14.433147"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 28 :end 33) (entity :text "Cottard" :label "ORG" :start 98 :end 105) (entity :text "Forcheville." :label "ORG" :start 129 :end 141) (entity :text "Mais" :label "ORG" :start 142 :end 146) (entity :text "Swann," :label "ORG" :start 206 :end 212)
 )
 :sentences (list
  (sentence :text "Mais elle remarqua que seul Swann ne s’était pas déridé" :start 0 :end 55) (sentence :text "Du reste il
n’était pas très content que Cottard fît rire de lui devant
Forcheville" :start 56 :end 140) (sentence :text "Mais le peintre, au lieu de répondre d’une façon
intéressante à Swann, ce qu’il eût probablement fait s’il eût été seul
avec lui, préféra se faire admirer des convives en plaçant un morceau
sur l’habileté du maître disparu" :start 141 :end 364)
 ))