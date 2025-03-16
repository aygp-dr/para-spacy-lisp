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
 :text "Il se représentait avec dégoût la soirée du lendemain à Chatou.
«D’abord cette idée d’aller à Chatou! Comme des merciers qui viennent
de fermer leur boutique! vraiment ces gens sont sublimes de
bourgeoisisme, ils ne doivent pas exister réellement, ils doivent
sortir du théâtre de Labiche!»"
 :tokens 46
 :processed-at "2025-03-16T02:18:14.567015"
 :entities (list
  (entity :text "Chatou." :label "ORG" :start 56 :end 63) (entity :text "Chatou!" :label "ORG" :start 94 :end 101) (entity :text "Comme" :label "ORG" :start 102 :end 107) (entity :text "Labiche!»" :label "ORG" :start 281 :end 290)
 )
 :sentences (list
  (sentence :text "Il se représentait avec dégoût la soirée du lendemain à Chatou" :start 0 :end 62) (sentence :text "«D’abord cette idée d’aller à Chatou! Comme des merciers qui viennent
de fermer leur boutique! vraiment ces gens sont sublimes de
bourgeoisisme, ils ne doivent pas exister réellement, ils doivent
sortir du théâtre de Labiche!»" :start 63 :end 290)
 ))