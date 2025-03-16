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
 :text "Je ne savais pas ce que c’était qu’un «bleu». Je ne comprenais pas la
moitié des mots que disait la dame, mais la crainte que n’y fut cachée
quelque question à laquelle il eût été impoli de ne pas répondre,
m’empêchait de cesser de les écouter avec attention, et j’en éprouvais
une grande fatigue."
 :tokens 54
 :processed-at "2025-03-16T02:18:13.936000"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Je ne savais pas ce que c’était qu’un «bleu»" :start 0 :end 44) (sentence :text "Je ne comprenais pas la
moitié des mots que disait la dame, mais la crainte que n’y fut cachée
quelque question à laquelle il eût été impoli de ne pas répondre,
m’empêchait de cesser de les écouter avec attention, et j’en éprouvais
une grande fatigue" :start 45 :end 296)
 ))