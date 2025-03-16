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
 :text "--«Mais cela ne l’empêche pas d’être charmante; nous ne disons pas du
mal d’elle, nous disons que ce n’est pas une vertu ni une
intelligence. Au fond, dit-il au peintre, tenez-vous tant que ça à ce
qu’elle soit vertueuse? Elle serait peut-être beaucoup moins
charmante, qui sait?»"
 :tokens 47
 :processed-at "2025-03-16T02:18:14.356724"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Elle" :label "ORG" :start 222 :end 226)
 )
 :sentences (list
  (sentence :text "--«Mais cela ne l’empêche pas d’être charmante; nous ne disons pas du
mal d’elle, nous disons que ce n’est pas une vertu ni une
intelligence" :start 0 :end 140) (sentence :text "Au fond, dit-il au peintre, tenez-vous tant que ça à ce
qu’elle soit vertueuse? Elle serait peut-être beaucoup moins
charmante, qui sait?»" :start 141 :end 280)
 ))