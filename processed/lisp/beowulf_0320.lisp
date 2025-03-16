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
 :text "--«Quel homme exquis, nous dit-il, quand Swann nous eut quittés, avec
la même enthousiaste vénération qui tient de spirituelles et jolies
bourgeoises en respect et sous le charme d’une duchesse, fût-elle
laide et sotte. Quel homme exquis! Quel malheur qu’il ait fait un
mariage tout à fait déplacé.»"
 :tokens 48
 :processed-at "2025-03-16T02:18:14.127619"
 :entities (list
  (entity :text "--«Quel" :label "ORG" :start 0 :end 7) (entity :text "Swann" :label "ORG" :start 41 :end 46) (entity :text "Quel" :label "ORG" :start 220 :end 224) (entity :text "Quel" :label "ORG" :start 239 :end 243)
 )
 :sentences (list
  (sentence :text "--«Quel homme exquis, nous dit-il, quand Swann nous eut quittés, avec
la même enthousiaste vénération qui tient de spirituelles et jolies
bourgeoises en respect et sous le charme d’une duchesse, fût-elle
laide et sotte" :start 0 :end 218) (sentence :text "Quel homme exquis! Quel malheur qu’il ait fait un
mariage tout à fait déplacé" :start 219 :end 297) (sentence :text "»" :start 298 :end 299)
 ))