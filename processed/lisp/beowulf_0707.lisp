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
 :text "Il n’était pas sûr de la reconnaître. Il frappa encore une fois. On
ouvrit la fenêtre, puis les volets. Maintenant, il n’y avait plus
moyen de reculer, et, puisqu’elle allait tout savoir, pour ne pas
avoir l’air trop malheureux, trop jaloux et curieux, il se contenta de
crier d’un air négligent et gai:"
 :tokens 53
 :processed-at "2025-03-16T02:18:14.532084"
 :entities (list
  (entity :text "Maintenant," :label "ORG" :start 104 :end 115)
 )
 :sentences (list
  (sentence :text "Il n’était pas sûr de la reconnaître" :start 0 :end 36) (sentence :text "Il frappa encore une fois" :start 37 :end 63) (sentence :text "On
ouvrit la fenêtre, puis les volets" :start 64 :end 102) (sentence :text "Maintenant, il n’y avait plus
moyen de reculer, et, puisqu’elle allait tout savoir, pour ne pas
avoir l’air trop malheureux, trop jaloux et curieux, il se contenta de
crier d’un air négligent et gai:" :start 103 :end 303)
 ))