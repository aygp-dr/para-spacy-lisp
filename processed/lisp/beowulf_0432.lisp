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
 :text "--«Qu’est-ce qu’ils ont à rire toutes ces bonnes gens-là, on a l’air de
ne pas engendrer la mélancolie dans votre petit coin là-bas, s’écria
Mme Verdurin. Si vous croyez que je m’amuse, moi, à rester toute seule
en pénitence», ajouta-t-elle sur un ton dépité, en faisant l’enfant."
 :tokens 47
 :processed-at "2025-03-16T02:18:14.255338"
 :entities (list
  (entity :text "Verdurin." :label "ORG" :start 145 :end 154)
 )
 :sentences (list
  (sentence :text "--«Qu’est-ce qu’ils ont à rire toutes ces bonnes gens-là, on a l’air de
ne pas engendrer la mélancolie dans votre petit coin là-bas, s’écria
Mme Verdurin" :start 0 :end 153) (sentence :text "Si vous croyez que je m’amuse, moi, à rester toute seule
en pénitence», ajouta-t-elle sur un ton dépité, en faisant l’enfant" :start 154 :end 279)
 ))