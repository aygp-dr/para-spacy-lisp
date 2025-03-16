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
 :text "--Je vous promets de m’en occuper, vous l’aurez à temps pour la reprise
des Danicheff, je déjeune justement demain avec le Préfet de police à
l’Elysée."
 :tokens 26
 :processed-at "2025-03-16T02:18:14.312231"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Danicheff," :label "ORG" :start 76 :end 86) (entity :text "Préfet" :label "ORG" :start 123 :end 129)
 )
 :sentences (list
  (sentence :text "--Je vous promets de m’en occuper, vous l’aurez à temps pour la reprise
des Danicheff, je déjeune justement demain avec le Préfet de police à
l’Elysée" :start 0 :end 150)
 ))