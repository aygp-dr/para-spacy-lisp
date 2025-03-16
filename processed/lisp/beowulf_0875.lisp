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
 :text "Swann aimait beaucoup la princesse des Laumes, puis sa vue lui
rappelait Guermantes, terre voisine de Combray, tout ce pays qu’il
aimait tant et où il ne retournait plus pour ne pas s’éloigner
d’Odette. Usant des formes mi-artistes, mi-galantes, par lesquelles il
savait plaire à la princesse et qu’il retrouvait tout naturellement
quand il se retrempait un instant dans son ancien milieu,--et voulant
d’autre part pour lui-même exprimer la nostalgie qu’il avait de la
campagne:"
 :tokens 75
 :processed-at "2025-03-16T02:18:14.708883"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 0 :end 5) (entity :text "Laumes," :label "ORG" :start 39 :end 46) (entity :text "Guermantes," :label "ORG" :start 73 :end 84) (entity :text "Combray," :label "ORG" :start 102 :end 110) (entity :text "Usant" :label "ORG" :start 203 :end 208)
 )
 :sentences (list
  (sentence :text "Swann aimait beaucoup la princesse des Laumes, puis sa vue lui
rappelait Guermantes, terre voisine de Combray, tout ce pays qu’il
aimait tant et où il ne retournait plus pour ne pas s’éloigner
d’Odette" :start 0 :end 201) (sentence :text "Usant des formes mi-artistes, mi-galantes, par lesquelles il
savait plaire à la princesse et qu’il retrouvait tout naturellement
quand il se retrempait un instant dans son ancien milieu,--et voulant
d’autre part pour lui-même exprimer la nostalgie qu’il avait de la
campagne:" :start 202 :end 478)
 ))