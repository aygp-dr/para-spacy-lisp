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
 :text "--Quel charmeur, n’est-ce pas, dit-elle à Swann; la comprend-il assez,
sa sonate, le petit misérable? Vous ne saviez pas que le piano pouvait
atteindre à ça. C’est tout excepté du piano, ma parole! Chaque fois
j’y suis reprise, je crois entendre un orchestre. C’est même plus beau
que l’orchestre, plus complet."
 :tokens 51
 :processed-at "2025-03-16T02:18:14.283078"
 :entities (list
  (entity :text "--Quel" :label "ORG" :start 0 :end 6) (entity :text "Swann;" :label "ORG" :start 42 :end 48) (entity :text "Vous" :label "ORG" :start 102 :end 106) (entity :text "Chaque" :label "ORG" :start 198 :end 204)
 )
 :sentences (list
  (sentence :text "--Quel charmeur, n’est-ce pas, dit-elle à Swann; la comprend-il assez,
sa sonate, le petit misérable? Vous ne saviez pas que le piano pouvait
atteindre à ça" :start 0 :end 156) (sentence :text "C’est tout excepté du piano, ma parole! Chaque fois
j’y suis reprise, je crois entendre un orchestre" :start 157 :end 258) (sentence :text "C’est même plus beau
que l’orchestre, plus complet" :start 259 :end 310)
 ))