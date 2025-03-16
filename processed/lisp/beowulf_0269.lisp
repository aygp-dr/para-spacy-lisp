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
 :text "Que le ciel reste toujours bleu pour vous, mon jeune ami; et même à
l’heure, qui vient pour moi maintenant, où les bois sont déjà noirs,
où la nuit tombe vite, vous vous consolerez comme je fais en regardant
du côté du ciel.» Il sortit de sa poche une cigarette, resta longtemps
les yeux à l’horizon, «Adieu, les camarades», nous dit-il tout à coup,
et il nous quitta."
 :tokens 68
 :processed-at "2025-03-16T02:18:14.067654"
 :entities (list
  (entity :text "«Adieu," :label "ORG" :start 301 :end 308)
 )
 :sentences (list
  (sentence :text "Que le ciel reste toujours bleu pour vous, mon jeune ami; et même à
l’heure, qui vient pour moi maintenant, où les bois sont déjà noirs,
où la nuit tombe vite, vous vous consolerez comme je fais en regardant
du côté du ciel" :start 0 :end 223) (sentence :text "» Il sortit de sa poche une cigarette, resta longtemps
les yeux à l’horizon, «Adieu, les camarades», nous dit-il tout à coup,
et il nous quitta" :start 224 :end 367)
 ))