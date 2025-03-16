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
 :text "--«Comme il est gentil! il est déjà galant, il a un petit œil pour les
femmes: il tient de son oncle. Ce sera un parfait gentleman»,
ajouta-t-elle en serrant les dents pour donner à la phrase un accent
légèrement britannique. «Est-ce qu’il ne pourrait pas venir une fois
prendre a cup of tea, comme disent nos voisins les Anglais; il
n’aurait qu’à m’envoyer un «bleu» le matin."
 :tokens 67
 :processed-at "2025-03-16T02:18:13.935253"
 :entities (list
  (entity :text "--«Comme" :label "ORG" :start 0 :end 8)
 )
 :sentences (list
  (sentence :text "--«Comme il est gentil! il est déjà galant, il a un petit œil pour les
femmes: il tient de son oncle" :start 0 :end 100) (sentence :text "Ce sera un parfait gentleman»,
ajouta-t-elle en serrant les dents pour donner à la phrase un accent
légèrement britannique" :start 101 :end 224) (sentence :text "«Est-ce qu’il ne pourrait pas venir une fois
prendre a cup of tea, comme disent nos voisins les Anglais; il
n’aurait qu’à m’envoyer un «bleu» le matin" :start 225 :end 376)
 ))