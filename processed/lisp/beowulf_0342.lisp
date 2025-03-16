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
 :text "Mlle Vinteuil frémit et se leva. Son cœur scrupuleux et sensible
ignorait quelles paroles devaient spontanément venir s’adapter à la
scène que ses sens réclamaient. Elle cherchait le plus loin qu’elle
pouvait de sa vraie nature morale, à trouver le langage propre à la
fille vicieuse qu’elle désirait d’être, mais les mots qu’elle pensait
que celle-ci eût prononcés sincèrement lui paraissaient faux dans sa
bouche. Et le peu qu’elle s’en permettait était dit sur un ton guindé
où ses habitudes de timidité paralysaient ses velléités d’audace, et
s’entremêlait de: «tu n’as pas froid, tu n’as pas trop chaud, tu n’as
pas envie d’être seule et de lire?»"
 :tokens 107
 :processed-at "2025-03-16T02:18:14.156081"
 :entities (list
  (entity :text "Mlle" :label "ORG" :start 0 :end 4) (entity :text "Vinteuil" :label "ORG" :start 5 :end 13) (entity :text "Elle" :label "ORG" :start 165 :end 169)
 )
 :sentences (list
  (sentence :text "Mlle Vinteuil frémit et se leva" :start 0 :end 31) (sentence :text "Son cœur scrupuleux et sensible
ignorait quelles paroles devaient spontanément venir s’adapter à la
scène que ses sens réclamaient" :start 32 :end 163) (sentence :text "Elle cherchait le plus loin qu’elle
pouvait de sa vraie nature morale, à trouver le langage propre à la
fille vicieuse qu’elle désirait d’être, mais les mots qu’elle pensait
que celle-ci eût prononcés sincèrement lui paraissaient faux dans sa
bouche" :start 164 :end 414) (sentence :text "Et le peu qu’elle s’en permettait était dit sur un ton guindé
où ses habitudes de timidité paralysaient ses velléités d’audace, et
s’entremêlait de: «tu n’as pas froid, tu n’as pas trop chaud, tu n’as
pas envie d’être seule et de lire?»" :start 415 :end 652)
 ))