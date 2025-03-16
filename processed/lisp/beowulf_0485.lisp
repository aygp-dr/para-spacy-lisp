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
 :text "--Vous savez que votre ami nous plaît beaucoup, dit Mme Verdurin à
Odette au moment où celle-ci lui souhaitait le bonsoir. Il est simple,
charmant; si vous n’avez jamais à nous présenter que des amis comme
cela, vous pouvez les amener."
 :tokens 41
 :processed-at "2025-03-16T02:18:14.304215"
 :entities (list
  (entity :text "--Vous" :label "ORG" :start 0 :end 6) (entity :text "Verdurin" :label "ORG" :start 56 :end 64) (entity :text "Odette" :label "ORG" :start 67 :end 73)
 )
 :sentences (list
  (sentence :text "--Vous savez que votre ami nous plaît beaucoup, dit Mme Verdurin à
Odette au moment où celle-ci lui souhaitait le bonsoir" :start 0 :end 121) (sentence :text "Il est simple,
charmant; si vous n’avez jamais à nous présenter que des amis comme
cela, vous pouvez les amener" :start 122 :end 234)
 ))