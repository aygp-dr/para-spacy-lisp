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
 :text "--«Oh! que tu me rends malheureuse, s’écria-t-elle en se dérobant par
un sursaut à l’étreinte de sa question. Mais as-tu bientôt fini?
Qu’est-ce que tu as aujourd’hui? Tu as donc décidé qu’il fallait que
je te déteste, que je t’exècre? Voilà, je voulais reprendre avec toi
le bon temps comme autrefois et voilà ton remerciement!»"
 :tokens 55
 :processed-at "2025-03-16T02:18:14.774841"
 :entities (list
  (entity :text "--«Oh!" :label "ORG" :start 0 :end 6) (entity :text "Mais" :label "ORG" :start 110 :end 114) (entity :text "Voilà," :label "ORG" :start 236 :end 242)
 )
 :sentences (list
  (sentence :text "--«Oh! que tu me rends malheureuse, s’écria-t-elle en se dérobant par
un sursaut à l’étreinte de sa question" :start 0 :end 108) (sentence :text "Mais as-tu bientôt fini?
Qu’est-ce que tu as aujourd’hui? Tu as donc décidé qu’il fallait que
je te déteste, que je t’exècre? Voilà, je voulais reprendre avec toi
le bon temps comme autrefois et voilà ton remerciement!»" :start 109 :end 329)
 ))