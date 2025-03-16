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
 :text "--«Enfin, s’il n’y a rien, je ne pense pas que ce soit que ce monsieur
la croit VERTUEUSE, dit ironiquement M. Verdurin. Et après tout, on ne
peut rien dire, puisqu’il a l’air de la croire intelligente. Je ne
sais si tu as entendu ce qu’il lui débitait l’autre soir sur la sonate
de Vinteuil; j’aime Odette de tout mon cœur, mais pour lui faire des
théories d’esthétique, il faut tout de même être un fameux jobard!»"
 :tokens 77
 :processed-at "2025-03-16T02:18:14.355177"
 :entities (list
  (entity :text "--«Enfin," :label "ORG" :start 0 :end 9) (entity :text "Verdurin." :label "ORG" :start 111 :end 120) (entity :text "Vinteuil;" :label "ORG" :start 283 :end 292) (entity :text "Odette" :label "ORG" :start 300 :end 306)
 )
 :sentences (list
  (sentence :text "--«Enfin, s’il n’y a rien, je ne pense pas que ce soit que ce monsieur
la croit VERTUEUSE, dit ironiquement M" :start 0 :end 109) (sentence :text "Verdurin" :start 110 :end 119) (sentence :text "Et après tout, on ne
peut rien dire, puisqu’il a l’air de la croire intelligente" :start 120 :end 201) (sentence :text "Je ne
sais si tu as entendu ce qu’il lui débitait l’autre soir sur la sonate
de Vinteuil; j’aime Odette de tout mon cœur, mais pour lui faire des
théories d’esthétique, il faut tout de même être un fameux jobard!»" :start 202 :end 416)
 ))