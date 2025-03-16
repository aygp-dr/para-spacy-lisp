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
 :text "--Je me suis approché, dit-il, pour voir comment c’était fait, j’ai mis
le nez dessus. Ah! bien ouiche! on ne pourrait pas dire si c’est fait
avec de la colle, avec du rubis, avec du savon, avec du bronze, avec
du soleil, avec du caca!"
 :tokens 45
 :processed-at "2025-03-16T02:18:14.434053"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4)
 )
 :sentences (list
  (sentence :text "--Je me suis approché, dit-il, pour voir comment c’était fait, j’ai mis
le nez dessus" :start 0 :end 85) (sentence :text "Ah! bien ouiche! on ne pourrait pas dire si c’est fait
avec de la colle, avec du rubis, avec du savon, avec du bronze, avec
du soleil, avec du caca!" :start 86 :end 235)
 ))