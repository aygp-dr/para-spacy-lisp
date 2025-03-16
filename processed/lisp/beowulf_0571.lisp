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
 :text "--«Mais les endroits chics, parbleu! Si, à ton âge, il faut t’apprendre
ce que c’est que les endroits chics, que veux-tu que je te dise, moi,
par exemple, le dimanche matin, l’avenue de l’Impératrice, à cinq
heures le tour du Lac, le jeudi l’Éden Théâtre, le vendredi
l’Hippodrome, les bals...»"
 :tokens 50
 :processed-at "2025-03-16T02:18:14.397426"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Lac," :label "ORG" :start 226 :end 230) (entity :text "Théâtre," :label "ORG" :start 247 :end 255)
 )
 :sentences (list
  (sentence :text "--«Mais les endroits chics, parbleu! Si, à ton âge, il faut t’apprendre
ce que c’est que les endroits chics, que veux-tu que je te dise, moi,
par exemple, le dimanche matin, l’avenue de l’Impératrice, à cinq
heures le tour du Lac, le jeudi l’Éden Théâtre, le vendredi
l’Hippodrome, les bals" :start 0 :end 290) (sentence :text "»" :start 293 :end 294)
 ))