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
 :text "Un soir où Swann avait accepté de dîner avec les Verdurin, comme
pendant le dîner il venait de dire que le lendemain il avait un
banquet d’anciens camarades, Odette lui avait répondu en pleine table,
devant Forcheville, qui était maintenant un des fidèles, devant le
peintre, devant Cottard:"
 :tokens 48
 :processed-at "2025-03-16T02:18:14.520018"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 11 :end 16) (entity :text "Verdurin," :label "ORG" :start 49 :end 58) (entity :text "Odette" :label "ORG" :start 158 :end 164) (entity :text "Forcheville," :label "ORG" :start 207 :end 219) (entity :text "Cottard:" :label "ORG" :start 283 :end 291)
 )
 :sentences (list
  (sentence :text "Un soir où Swann avait accepté de dîner avec les Verdurin, comme
pendant le dîner il venait de dire que le lendemain il avait un
banquet d’anciens camarades, Odette lui avait répondu en pleine table,
devant Forcheville, qui était maintenant un des fidèles, devant le
peintre, devant Cottard:" :start 0 :end 291)
 ))