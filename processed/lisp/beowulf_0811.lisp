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
 :text "--«Oh! sapristi non! je te dirai, je ne peux pas prendre Lorédan quand
je vais rue La Pérouse. Odette n’aime pas que je prenne Lorédan, elle
ne le trouve pas bien pour moi; enfin que veux-tu, les femmes, tu
sais! je sais que ça lui déplairait beaucoup. Ah bien oui! je n’aurais
eu qu’à prendre Rémi! j’en aurais eu une histoire!»"
 :tokens 61
 :processed-at "2025-03-16T02:18:14.648055"
 :entities (list
  (entity :text "--«Oh!" :label "ORG" :start 0 :end 6) (entity :text "Lorédan" :label "ORG" :start 57 :end 64) (entity :text "Pérouse." :label "ORG" :start 86 :end 94) (entity :text "Odette" :label "ORG" :start 95 :end 101) (entity :text "Lorédan," :label "ORG" :start 127 :end 135) (entity :text "Rémi!" :label "ORG" :start 294 :end 299)
 )
 :sentences (list
  (sentence :text "--«Oh! sapristi non! je te dirai, je ne peux pas prendre Lorédan quand
je vais rue La Pérouse" :start 0 :end 93) (sentence :text "Odette n’aime pas que je prenne Lorédan, elle
ne le trouve pas bien pour moi; enfin que veux-tu, les femmes, tu
sais! je sais que ça lui déplairait beaucoup" :start 94 :end 251) (sentence :text "Ah bien oui! je n’aurais
eu qu’à prendre Rémi! j’en aurais eu une histoire!»" :start 252 :end 329)
 ))