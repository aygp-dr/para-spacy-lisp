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
 :text "--«Ah! ma pauvre fille, il faut que vous l’ayez solide votre tête, vous
pouvez remercier le Bon Dieu. C’était la Maguelone qui était venue
chercher le docteur Piperaud. Il est ressorti tout de suite avec elle
et ils ont tourné par la rue de l’Oiseau. Il faut qu’il y ait quelque
enfant de malade.»"
 :tokens 54
 :processed-at "2025-03-16T02:18:13.868543"
 :entities (list
  (entity :text "--«Ah!" :label "ORG" :start 0 :end 6) (entity :text "Dieu." :label "ORG" :start 96 :end 101) (entity :text "Maguelone" :label "ORG" :start 113 :end 122) (entity :text "Piperaud." :label "ORG" :start 159 :end 168)
 )
 :sentences (list
  (sentence :text "--«Ah! ma pauvre fille, il faut que vous l’ayez solide votre tête, vous
pouvez remercier le Bon Dieu" :start 0 :end 100) (sentence :text "C’était la Maguelone qui était venue
chercher le docteur Piperaud" :start 101 :end 167) (sentence :text "Il est ressorti tout de suite avec elle
et ils ont tourné par la rue de l’Oiseau" :start 168 :end 249) (sentence :text "Il faut qu’il y ait quelque
enfant de malade" :start 250 :end 295) (sentence :text "»" :start 296 :end 297)
 ))