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
 :text "Quand les Verdurin l’emmenaient à Saint-Germain, à Chatou, à Meulan,
souvent, si c’était dans la belle saison, ils proposaient, sur place,
de rester à coucher et de ne revenir que le lendemain. Mme Verdurin
cherchait à apaiser les scrupules du pianiste dont la tante était
restée à Paris."
 :tokens 48
 :processed-at "2025-03-16T02:18:14.582287"
 :entities (list
  (entity :text "Quand" :label "ORG" :start 0 :end 5) (entity :text "Verdurin" :label "ORG" :start 10 :end 18) (entity :text "Saint-Germain," :label "ORG" :start 34 :end 48) (entity :text "Chatou," :label "ORG" :start 51 :end 58) (entity :text "Meulan," :label "ORG" :start 61 :end 68) (entity :text "Verdurin" :label "ORG" :start 198 :end 206) (entity :text "Paris." :label "ORG" :start 282 :end 288)
 )
 :sentences (list
  (sentence :text "Quand les Verdurin l’emmenaient à Saint-Germain, à Chatou, à Meulan,
souvent, si c’était dans la belle saison, ils proposaient, sur place,
de rester à coucher et de ne revenir que le lendemain" :start 0 :end 192) (sentence :text "Mme Verdurin
cherchait à apaiser les scrupules du pianiste dont la tante était
restée à Paris" :start 193 :end 287)
 ))