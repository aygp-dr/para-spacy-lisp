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
 :text "--«A moi, elle me l’aurait dit, répliqua fièrement Mme Verdurin. Je
vous dis qu’elle me raconte toutes ses petites affaires! Comme elle
n’a plus personne en ce moment, je lui ai dit qu’elle devrait coucher
avec lui. Elle prétend qu’elle ne peut pas, qu’elle a bien eu un fort
béguin pour lui mais qu’il est timide avec elle, que cela l’intimide à
son tour, et puis qu’elle ne l’aime pas de cette manière-là, que c’est
un être idéal, qu’elle a peur de déflorer le sentiment qu’elle a pour
lui, est-ce que je sais, moi. Ce serait pourtant absolument ce qu’il
lui faut.»"
 :tokens 102
 :processed-at "2025-03-16T02:18:14.352658"
 :entities (list
  (entity :text "--«A" :label "ORG" :start 0 :end 4) (entity :text "Verdurin." :label "ORG" :start 55 :end 64) (entity :text "Comme" :label "ORG" :start 125 :end 130) (entity :text "Elle" :label "ORG" :start 216 :end 220)
 )
 :sentences (list
  (sentence :text "--«A moi, elle me l’aurait dit, répliqua fièrement Mme Verdurin" :start 0 :end 63) (sentence :text "Je
vous dis qu’elle me raconte toutes ses petites affaires! Comme elle
n’a plus personne en ce moment, je lui ai dit qu’elle devrait coucher
avec lui" :start 64 :end 214) (sentence :text "Elle prétend qu’elle ne peut pas, qu’elle a bien eu un fort
béguin pour lui mais qu’il est timide avec elle, que cela l’intimide à
son tour, et puis qu’elle ne l’aime pas de cette manière-là, que c’est
un être idéal, qu’elle a peur de déflorer le sentiment qu’elle a pour
lui, est-ce que je sais, moi" :start 215 :end 516) (sentence :text "Ce serait pourtant absolument ce qu’il
lui faut" :start 517 :end 565) (sentence :text "»" :start 566 :end 567)
 ))