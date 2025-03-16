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
 :text "--Ah! c’est Bréchot, s’écria Forcheville qui n’avait pas bien entendu,
vous m’en direz tant, ajouta-t-il tout en attachant sur l’homme
célèbre des yeux écarquillés. C’est toujours intéressant de dîner avec
un homme en vue. Mais, dites-moi, vous nous invitez-là avec des
convives de choix. On ne s’ennuie pas chez vous."
 :tokens 50
 :processed-at "2025-03-16T02:18:14.424195"
 :entities (list
  (entity :text "--Ah!" :label "ORG" :start 0 :end 5) (entity :text "Bréchot," :label "ORG" :start 12 :end 20) (entity :text "Forcheville" :label "ORG" :start 29 :end 40) (entity :text "Mais," :label "ORG" :start 223 :end 228)
 )
 :sentences (list
  (sentence :text "--Ah! c’est Bréchot, s’écria Forcheville qui n’avait pas bien entendu,
vous m’en direz tant, ajouta-t-il tout en attachant sur l’homme
célèbre des yeux écarquillés" :start 0 :end 163) (sentence :text "C’est toujours intéressant de dîner avec
un homme en vue" :start 164 :end 221) (sentence :text "Mais, dites-moi, vous nous invitez-là avec des
convives de choix" :start 222 :end 287) (sentence :text "On ne s’ennuie pas chez vous" :start 288 :end 317)
 ))