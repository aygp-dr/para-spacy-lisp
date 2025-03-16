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
 :text "--Mais ce n’est pas du tout par peur de la duchesse (si c’est des La
Trémoïlle que vous parlez). Je vous assure que tout le monde aime
aller chez elle. Je ne vous dis pas qu’elle soit «profonde» (il
prononça profonde, comme si ç’avait été un mot ridicule, car son
langage gardait la trace d’habitudes d’esprit qu’une certaine
rénovation, marquée par l’amour de la musique, lui avait momentanément
fait perdre--il exprimait parfois ses opinions avec chaleur--) mais,
très sincèrement, elle est intelligente et son mari est un véritable
lettré. Ce sont des gens charmants."
 :tokens 94
 :processed-at "2025-03-16T02:18:14.459336"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Trémoïlle" :label "ORG" :start 69 :end 78)
 )
 :sentences (list
  (sentence :text "--Mais ce n’est pas du tout par peur de la duchesse (si c’est des La
Trémoïlle que vous parlez)" :start 0 :end 95) (sentence :text "Je vous assure que tout le monde aime
aller chez elle" :start 96 :end 150) (sentence :text "Je ne vous dis pas qu’elle soit «profonde» (il
prononça profonde, comme si ç’avait été un mot ridicule, car son
langage gardait la trace d’habitudes d’esprit qu’une certaine
rénovation, marquée par l’amour de la musique, lui avait momentanément
fait perdre--il exprimait parfois ses opinions avec chaleur--) mais,
très sincèrement, elle est intelligente et son mari est un véritable
lettré" :start 151 :end 541) (sentence :text "Ce sont des gens charmants" :start 542 :end 569)
 ))