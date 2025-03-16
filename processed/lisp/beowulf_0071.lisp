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
 :text "--«Françoise, imaginez-vous que Mme Goupil est passée plus d’un quart
d’heure en retard pour aller chercher sa sœur; pour peu qu’elle
s’attarde sur son chemin cela ne me surprendrait point qu’elle arrive
après l’élévation.»"
 :tokens 34
 :processed-at "2025-03-16T02:18:13.863097"
 :entities (list
  (entity :text "--«Françoise," :label "ORG" :start 0 :end 13) (entity :text "Goupil" :label "ORG" :start 36 :end 42)
 )
 :sentences (list
  (sentence :text "--«Françoise, imaginez-vous que Mme Goupil est passée plus d’un quart
d’heure en retard pour aller chercher sa sœur; pour peu qu’elle
s’attarde sur son chemin cela ne me surprendrait point qu’elle arrive
après l’élévation" :start 0 :end 221) (sentence :text "»" :start 222 :end 223)
 ))