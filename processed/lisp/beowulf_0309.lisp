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
 :text "--«Allons, Gilberte, viens; qu’est-ce que tu fais, cria d’une voix
perçante et autoritaire une dame en blanc que je n’avais pas vue, et à
quelque distance de laquelle un Monsieur habillé de coutil et que je
ne connaissais pas, fixait sur moi des yeux qui lui sortaient de la
tête; et cessant brusquement de sourire, la jeune fille prit sa bêche
et s’éloigna sans se retourner de mon côté, d’un air docile,
impénétrable et sournois."
 :tokens 75
 :processed-at "2025-03-16T02:18:14.112541"
 :entities (list
  (entity :text "--«Allons," :label "ORG" :start 0 :end 10) (entity :text "Gilberte," :label "ORG" :start 11 :end 20) (entity :text "Monsieur" :label "ORG" :start 170 :end 178)
 )
 :sentences (list
  (sentence :text "--«Allons, Gilberte, viens; qu’est-ce que tu fais, cria d’une voix
perçante et autoritaire une dame en blanc que je n’avais pas vue, et à
quelque distance de laquelle un Monsieur habillé de coutil et que je
ne connaissais pas, fixait sur moi des yeux qui lui sortaient de la
tête; et cessant brusquement de sourire, la jeune fille prit sa bêche
et s’éloigna sans se retourner de mon côté, d’un air docile,
impénétrable et sournois" :start 0 :end 430)
 ))