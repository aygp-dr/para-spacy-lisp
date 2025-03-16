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
 :text "Pourtant les fidèles s’étant dispersés, le docteur sentit qu’il y
avait là une occasion propice et pendant que Mme Verdurin disait un
dernier mot sur la sonate de Vinteuil, comme un nageur débutant qui se
jette à l’eau pour apprendre, mais choisit un moment où il n’y a pas
trop de monde pour le voir:"
 :tokens 55
 :processed-at "2025-03-16T02:18:14.289465"
 :entities (list
  (entity :text "Pourtant" :label "ORG" :start 0 :end 8) (entity :text "Verdurin" :label "ORG" :start 115 :end 123) (entity :text "Vinteuil," :label "ORG" :start 163 :end 172)
 )
 :sentences (list
  (sentence :text "Pourtant les fidèles s’étant dispersés, le docteur sentit qu’il y
avait là une occasion propice et pendant que Mme Verdurin disait un
dernier mot sur la sonate de Vinteuil, comme un nageur débutant qui se
jette à l’eau pour apprendre, mais choisit un moment où il n’y a pas
trop de monde pour le voir:" :start 0 :end 301)
 ))