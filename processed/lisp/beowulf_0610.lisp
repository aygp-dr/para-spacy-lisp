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
 :text "--Mais non, c’est pas de la blague, dit le peintre, enchanté de son
succès, vous avez l’air de croire que je fais le boniment, que c’est
du chiqué; je vous y mènerai voir, vous direz si j’ai exagéré, je vous
fiche mon billet que vous revenez plus emballée que moi!"
 :tokens 50
 :processed-at "2025-03-16T02:18:14.440067"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6)
 )
 :sentences (list
  (sentence :text "--Mais non, c’est pas de la blague, dit le peintre, enchanté de son
succès, vous avez l’air de croire que je fais le boniment, que c’est
du chiqué; je vous y mènerai voir, vous direz si j’ai exagéré, je vous
fiche mon billet que vous revenez plus emballée que moi!" :start 0 :end 264)
 ))