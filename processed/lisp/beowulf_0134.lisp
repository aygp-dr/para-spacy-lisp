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
 :text "--«Je vous demande pardon, mon cher ami, je l’ai croisée dans
l’escalier l’année dernière quand vous avez été si malade. Il est vrai
que je ne l’ai vue que le temps d’un éclair et que votre escalier est
bien noir, mais cela m’a suffi pour l’admirer. Ce petit jeune homme a
ses beaux yeux et aussi ça, dit-elle, en traçant avec son doigt une
ligne sur le bas de son front. Est-ce que madame votre nièce porte le
même nom que vous, ami? demanda-t-elle à mon oncle.»"
 :tokens 87
 :processed-at "2025-03-16T02:18:13.927902"
 :entities (list
  (entity :text "--«Je" :label "ORG" :start 0 :end 5)
 )
 :sentences (list
  (sentence :text "--«Je vous demande pardon, mon cher ami, je l’ai croisée dans
l’escalier l’année dernière quand vous avez été si malade" :start 0 :end 119) (sentence :text "Il est vrai
que je ne l’ai vue que le temps d’un éclair et que votre escalier est
bien noir, mais cela m’a suffi pour l’admirer" :start 120 :end 248) (sentence :text "Ce petit jeune homme a
ses beaux yeux et aussi ça, dit-elle, en traçant avec son doigt une
ligne sur le bas de son front" :start 249 :end 370) (sentence :text "Est-ce que madame votre nièce porte le
même nom que vous, ami? demanda-t-elle à mon oncle" :start 371 :end 461) (sentence :text "»" :start 462 :end 463)
 ))