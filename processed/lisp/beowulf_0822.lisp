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
 :text "--«Comment, vous, mon cher, qu’est-ce que vous pouvez bien faire ici?»
à un romancier mondain qui venait d’installer au coin de son œil un
monocle, son seul organe d’investigation psychologique et
d’impitoyable analyse, et répondit d’un air important et mystérieux,
en roulant l’r:"
 :tokens 43
 :processed-at "2025-03-16T02:18:14.660076"
 :entities (list
  (entity :text "--«Comment," :label "ORG" :start 0 :end 11)
 )
 :sentences (list
  (sentence :text "--«Comment, vous, mon cher, qu’est-ce que vous pouvez bien faire ici?»
à un romancier mondain qui venait d’installer au coin de son œil un
monocle, son seul organe d’investigation psychologique et
d’impitoyable analyse, et répondit d’un air important et mystérieux,
en roulant l’r:" :start 0 :end 281)
 ))