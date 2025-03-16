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
 :text "A cette époque j’avais l’amour du théâtre, amour platonique, car mes
parents ne m’avaient encore jamais permis d’y aller, et je me
représentais d’une façon si peu exacte les plaisirs qu’on y goûtait
que je n’étais pas éloigné de croire que chaque spectateur regardait
comme dans un stéréoscope un décor qui n’était que pour lui, quoique
semblable au millier d’autres que regardait, chacun pour soi, le reste
des spectateurs."
 :tokens 69
 :processed-at "2025-03-16T02:18:13.918542"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "A cette époque j’avais l’amour du théâtre, amour platonique, car mes
parents ne m’avaient encore jamais permis d’y aller, et je me
représentais d’une façon si peu exacte les plaisirs qu’on y goûtait
que je n’étais pas éloigné de croire que chaque spectateur regardait
comme dans un stéréoscope un décor qui n’était que pour lui, quoique
semblable au millier d’autres que regardait, chacun pour soi, le reste
des spectateurs" :start 0 :end 423)
 ))