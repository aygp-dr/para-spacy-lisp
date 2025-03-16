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
 :text "--«Ah! je vous crois bien, ma pauvre Françoise, répondait ma tante en
haussant les épaules, chez M. le Curé! Vous savez bien qu’il ne fait
pousser que de petites méchantes asperges de rien. Je vous dis que
celles-là étaient grosses comme le bras. Pas comme le vôtre, bien sûr,
mais comme mon pauvre bras qui a encore tant maigri cette année.»"
 :tokens 61
 :processed-at "2025-03-16T02:18:13.866318"
 :entities (list
  (entity :text "--«Ah!" :label "ORG" :start 0 :end 6) (entity :text "Françoise," :label "ORG" :start 37 :end 47) (entity :text "Curé!" :label "ORG" :start 103 :end 108) (entity :text "Vous" :label "ORG" :start 109 :end 113)
 )
 :sentences (list
  (sentence :text "--«Ah! je vous crois bien, ma pauvre Françoise, répondait ma tante en
haussant les épaules, chez M" :start 0 :end 98) (sentence :text "le Curé! Vous savez bien qu’il ne fait
pousser que de petites méchantes asperges de rien" :start 99 :end 188) (sentence :text "Je vous dis que
celles-là étaient grosses comme le bras" :start 189 :end 245) (sentence :text "Pas comme le vôtre, bien sûr,
mais comme mon pauvre bras qui a encore tant maigri cette année" :start 246 :end 340) (sentence :text "»" :start 341 :end 342)
 ))