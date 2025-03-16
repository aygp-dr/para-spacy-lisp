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
 :text "--Mais puisqu’il ne devait pas pouvoir s’empêcher de commencer le
second, il aurait mieux fait d’achever le premier pour en finir une
bonne fois. Nous sommes en train de faire des plaisanteries d’un goût
charmant, mon petit Charles, mais comme c’est ennuyeux de ne plus vous
voir, ajouta-t-elle d’un ton câlin, j’aime tant causer avec vous.
Pensez que je n’aurais même pas pu faire comprendre à cet idiot de
Froberville que le nom de Cambremer était étonnant. Avouez que la vie
est une chose affreuse. Il n’y a que quand je vous vois que je cesse
de m’ennuyer."
 :tokens 98
 :processed-at "2025-03-16T02:18:14.719882"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Nous" :label "ORG" :start 146 :end 150) (entity :text "Charles," :label "ORG" :start 224 :end 232) (entity :text "Pensez" :label "ORG" :start 341 :end 347) (entity :text "Froberville" :label "ORG" :start 408 :end 419) (entity :text "Cambremer" :label "ORG" :start 434 :end 443)
 )
 :sentences (list
  (sentence :text "--Mais puisqu’il ne devait pas pouvoir s’empêcher de commencer le
second, il aurait mieux fait d’achever le premier pour en finir une
bonne fois" :start 0 :end 144) (sentence :text "Nous sommes en train de faire des plaisanteries d’un goût
charmant, mon petit Charles, mais comme c’est ennuyeux de ne plus vous
voir, ajouta-t-elle d’un ton câlin, j’aime tant causer avec vous" :start 145 :end 339) (sentence :text "Pensez que je n’aurais même pas pu faire comprendre à cet idiot de
Froberville que le nom de Cambremer était étonnant" :start 340 :end 458) (sentence :text "Avouez que la vie
est une chose affreuse" :start 459 :end 500) (sentence :text "Il n’y a que quand je vous vois que je cesse
de m’ennuyer" :start 501 :end 559)
 ))