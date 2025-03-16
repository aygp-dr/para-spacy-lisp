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
 :text "Quant à M. Verdurin, trouvant que c’était un peu fatigant de se mettre
à rire pour si peu, il se contenta de tirer une bouffée de sa pipe en
songeant avec tristesse qu’il ne pouvait plus rattraper sa femme sur
le terrain de l’amabilité."
 :tokens 44
 :processed-at "2025-03-16T02:18:14.303121"
 :entities (list
  (entity :text "Quant" :label "ORG" :start 0 :end 5) (entity :text "Verdurin," :label "ORG" :start 11 :end 20)
 )
 :sentences (list
  (sentence :text "Quant à M" :start 0 :end 9) (sentence :text "Verdurin, trouvant que c’était un peu fatigant de se mettre
à rire pour si peu, il se contenta de tirer une bouffée de sa pipe en
songeant avec tristesse qu’il ne pouvait plus rattraper sa femme sur
le terrain de l’amabilité" :start 10 :end 235)
 ))