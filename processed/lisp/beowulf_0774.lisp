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
 :text "Or, c’est ce qui arriva le lendemain même. Elle lui écrivit que les
Verdurin et leurs amis avaient manifesté le désir d’assister à ces
représentations de Wagner et que, s’il voulait bien lui envoyer cet
argent, elle aurait enfin, après avoir été si souvent reçue chez eux,
le plaisir de les inviter à son tour. De lui, elle ne disait pas un
mot, il était sous-entendu que leur présence excluait la sienne."
 :tokens 72
 :processed-at "2025-03-16T02:18:14.602018"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 43 :end 47) (entity :text "Verdurin" :label "ORG" :start 68 :end 76) (entity :text "Wagner" :label "ORG" :start 154 :end 160)
 )
 :sentences (list
  (sentence :text "Or, c’est ce qui arriva le lendemain même" :start 0 :end 41) (sentence :text "Elle lui écrivit que les
Verdurin et leurs amis avaient manifesté le désir d’assister à ces
représentations de Wagner et que, s’il voulait bien lui envoyer cet
argent, elle aurait enfin, après avoir été si souvent reçue chez eux,
le plaisir de les inviter à son tour" :start 42 :end 309) (sentence :text "De lui, elle ne disait pas un
mot, il était sous-entendu que leur présence excluait la sienne" :start 310 :end 404)
 ))