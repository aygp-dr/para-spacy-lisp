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
 :text "--Je ne sais pas ce que me doit le chapitre mais je sais que je suis
tapée de cent francs tous les ans par le curé, ce dont je me
passerais. Enfin ces Cambremer ont un nom bien étonnant. Il finit
juste à temps, mais il finit mal! dit-elle en riant."
 :tokens 51
 :processed-at "2025-03-16T02:18:14.716819"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Enfin" :label "ORG" :start 141 :end 146) (entity :text "Cambremer" :label "ORG" :start 151 :end 160)
 )
 :sentences (list
  (sentence :text "--Je ne sais pas ce que me doit le chapitre mais je sais que je suis
tapée de cent francs tous les ans par le curé, ce dont je me
passerais" :start 0 :end 139) (sentence :text "Enfin ces Cambremer ont un nom bien étonnant" :start 140 :end 185) (sentence :text "Il finit
juste à temps, mais il finit mal! dit-elle en riant" :start 186 :end 247)
 ))