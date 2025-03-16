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
 :text "--«Je ne vous demande pas, monsieur, si un homme dans le mouvement
comme vous, a vu, aux Mirlitons, le portrait de Machard qui fait
courir tout Paris. Eh bien! qu’en dites-vous? Etes-vous dans le camp
de ceux qui approuvent ou dans le camp de ceux qui blâment? Dans tous
les salons on ne parle que du portrait de Machard, on n’est pas chic,
on n’est pas pur, on n’est pas dans le train, si on ne donne pas son
opinion sur le portrait de Machard.»"
 :tokens 85
 :processed-at "2025-03-16T02:18:14.802733"
 :entities (list
  (entity :text "--«Je" :label "ORG" :start 0 :end 5) (entity :text "Mirlitons," :label "ORG" :start 89 :end 99) (entity :text "Machard" :label "ORG" :start 115 :end 122) (entity :text "Paris." :label "ORG" :start 144 :end 150) (entity :text "Dans" :label "ORG" :start 261 :end 265) (entity :text "Machard," :label "ORG" :start 313 :end 321) (entity :text "Machard.»" :label "ORG" :start 437 :end 446)
 )
 :sentences (list
  (sentence :text "--«Je ne vous demande pas, monsieur, si un homme dans le mouvement
comme vous, a vu, aux Mirlitons, le portrait de Machard qui fait
courir tout Paris" :start 0 :end 149) (sentence :text "Eh bien! qu’en dites-vous? Etes-vous dans le camp
de ceux qui approuvent ou dans le camp de ceux qui blâment? Dans tous
les salons on ne parle que du portrait de Machard, on n’est pas chic,
on n’est pas pur, on n’est pas dans le train, si on ne donne pas son
opinion sur le portrait de Machard" :start 150 :end 444) (sentence :text "»" :start 445 :end 446)
 ))