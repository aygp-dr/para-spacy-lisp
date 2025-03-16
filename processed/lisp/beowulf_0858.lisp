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
 :text "--Je ne vois aucun mal à ce que ce soit ancien, répondit sèchement la
princesse, mais en tous cas ce n’est-ce pas euphonique, ajouta-t-elle
en détachant le mot euphonique comme s’il était entre guillemets,
petite affectation de dépit qui était particulière à la coterie
Guermantes."
 :tokens 45
 :processed-at "2025-03-16T02:18:14.693815"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Guermantes." :label "ORG" :start 270 :end 281)
 )
 :sentences (list
  (sentence :text "--Je ne vois aucun mal à ce que ce soit ancien, répondit sèchement la
princesse, mais en tous cas ce n’est-ce pas euphonique, ajouta-t-elle
en détachant le mot euphonique comme s’il était entre guillemets,
petite affectation de dépit qui était particulière à la coterie
Guermantes" :start 0 :end 280)
 ))