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
 :text "Peut-être ne savait-elle pas combien il avait été sincère vis-à-vis
d’elle pendant la brouille, quand il lui avait dit qu’il ne lui
enverrait pas d’argent et chercherait à lui faire du mal. Peut-être ne
savait-elle pas davantage combien il l’était, vis-à-vis sinon d’elle,
du moins de lui-même, en d’autres cas où dans l’intérêt de l’avenir de
leur liaison, pour montrer à Odette qu’il était capable de se passer
d’elle, qu’une rupture restait toujours possible, il décidait de
rester quelque temps sans aller chez elle."
 :tokens 84
 :processed-at "2025-03-16T02:18:14.616238"
 :entities (list
  (entity :text "Odette" :label "ORG" :start 373 :end 379)
 )
 :sentences (list
  (sentence :text "Peut-être ne savait-elle pas combien il avait été sincère vis-à-vis
d’elle pendant la brouille, quand il lui avait dit qu’il ne lui
enverrait pas d’argent et chercherait à lui faire du mal" :start 0 :end 188) (sentence :text "Peut-être ne
savait-elle pas davantage combien il l’était, vis-à-vis sinon d’elle,
du moins de lui-même, en d’autres cas où dans l’intérêt de l’avenir de
leur liaison, pour montrer à Odette qu’il était capable de se passer
d’elle, qu’une rupture restait toujours possible, il décidait de
rester quelque temps sans aller chez elle" :start 189 :end 519)
 ))