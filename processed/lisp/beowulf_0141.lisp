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
 :text "Je me levai, j’avais une envie irrésistible de baiser la main de la
dame en rose, mais il me semblait que c’eût été quelque chose
d’audacieux comme un enlèvement. Mon cœur battait tandis que je me
disais: «Faut-il le faire, faut-il ne pas le faire», puis je cessai de
me demander ce qu’il fallait faire pour pouvoir faire quelque chose.
Et d’un geste aveugle et insensé, dépouillé de toutes les raisons que
je trouvais il y avait un moment en sa faveur, je portai à mes lèvres
la main qu’elle me tendait."
 :tokens 92
 :processed-at "2025-03-16T02:18:13.934447"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Je me levai, j’avais une envie irrésistible de baiser la main de la
dame en rose, mais il me semblait que c’eût été quelque chose
d’audacieux comme un enlèvement" :start 0 :end 161) (sentence :text "Mon cœur battait tandis que je me
disais: «Faut-il le faire, faut-il ne pas le faire», puis je cessai de
me demander ce qu’il fallait faire pour pouvoir faire quelque chose" :start 162 :end 335) (sentence :text "Et d’un geste aveugle et insensé, dépouillé de toutes les raisons que
je trouvais il y avait un moment en sa faveur, je portai à mes lèvres
la main qu’elle me tendait" :start 336 :end 503)
 ))