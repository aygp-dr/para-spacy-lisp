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
 :text "--«Vraiment, qu’est-ce que vous leur reprochez? Est-ce un parti pris?
Trouvez-vous peut-être que c’est un peu triste? D’ailleurs, comme je
dis toujours, il ne faut jamais discuter sur les romans ni sur les
pièces de théâtre. Chacun a sa manière de voir et vous pouvez trouver
détestable ce que j’aime le mieux.»"
 :tokens 52
 :processed-at "2025-03-16T02:18:14.449007"
 :entities (list
  (entity :text "--«Vraiment," :label "ORG" :start 0 :end 12) (entity :text "Chacun" :label "ORG" :start 225 :end 231)
 )
 :sentences (list
  (sentence :text "--«Vraiment, qu’est-ce que vous leur reprochez? Est-ce un parti pris?
Trouvez-vous peut-être que c’est un peu triste? D’ailleurs, comme je
dis toujours, il ne faut jamais discuter sur les romans ni sur les
pièces de théâtre" :start 0 :end 223) (sentence :text "Chacun a sa manière de voir et vous pouvez trouver
détestable ce que j’aime le mieux" :start 224 :end 309) (sentence :text "»" :start 310 :end 311)
 ))