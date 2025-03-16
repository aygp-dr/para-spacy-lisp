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
 :text "--«Ah! bien, bien, ça va bien», dit-il sur le ton d’un douanier,
méfiant tout à l’heure, mais qui, après vos explications, vous donne
son visa et vous laisse passer sans ouvrir vos malles."
 :tokens 33
 :processed-at "2025-03-16T02:18:14.320657"
 :entities (list
  (entity :text "--«Ah!" :label "ORG" :start 0 :end 6)
 )
 :sentences (list
  (sentence :text "--«Ah! bien, bien, ça va bien», dit-il sur le ton d’un douanier,
méfiant tout à l’heure, mais qui, après vos explications, vous donne
son visa et vous laisse passer sans ouvrir vos malles" :start 0 :end 187)
 ))