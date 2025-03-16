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
 :text "--Je ne connais que Mme de Chanlivault, la sœur de ce brave
Chaussepierre. Elle nous a donné une jolie soirée de comédie l’autre
jour. C’est un salon qui sera un jour très élégant, vous verrez!"
 :tokens 35
 :processed-at "2025-03-16T02:18:14.736226"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Chanlivault," :label "ORG" :start 27 :end 39) (entity :text "Chaussepierre." :label "ORG" :start 60 :end 74) (entity :text "Elle" :label "ORG" :start 75 :end 79)
 )
 :sentences (list
  (sentence :text "--Je ne connais que Mme de Chanlivault, la sœur de ce brave
Chaussepierre" :start 0 :end 73) (sentence :text "Elle nous a donné une jolie soirée de comédie l’autre
jour" :start 74 :end 133) (sentence :text "C’est un salon qui sera un jour très élégant, vous verrez!" :start 134 :end 193)
 ))