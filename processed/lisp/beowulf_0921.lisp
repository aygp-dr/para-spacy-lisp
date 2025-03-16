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
 :text "--Odette, lui dit-il, mon chéri, je sais bien que je suis odieux, mais
il faut que je te demande des choses. Tu te souviens de l’idée que
j’avais eue à propos de toi et de Mme Verdurin? Dis-moi si c’était
vrai, avec elle ou avec une autre."
 :tokens 47
 :processed-at "2025-03-16T02:18:14.768316"
 :entities (list
  (entity :text "--Odette," :label "ORG" :start 0 :end 9) (entity :text "Verdurin?" :label "ORG" :start 176 :end 185)
 )
 :sentences (list
  (sentence :text "--Odette, lui dit-il, mon chéri, je sais bien que je suis odieux, mais
il faut que je te demande des choses" :start 0 :end 107) (sentence :text "Tu te souviens de l’idée que
j’avais eue à propos de toi et de Mme Verdurin? Dis-moi si c’était
vrai, avec elle ou avec une autre" :start 108 :end 238)
 ))