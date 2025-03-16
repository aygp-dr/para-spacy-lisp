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
 :text "D’ailleurs on commençait à éteindre partout. Sous les arbres des
boulevards, dans une obscurité mystérieuse, les passants plus rares
erraient, à peine reconnaissables. Parfois l’ombre d’une femme qui
s’approchait de lui, lui murmurant un mot à l’oreille, lui demandant
de la ramener, fit tressaillir Swann. Il frôlait anxieusement tous ces
corps obscurs comme si parmi les fantômes des morts, dans le royaume
sombre, il eût cherché Eurydice."
 :tokens 67
 :processed-at "2025-03-16T02:18:14.366816"
 :entities (list
  (entity :text "Sous" :label "ORG" :start 45 :end 49) (entity :text "Parfois" :label "ORG" :start 168 :end 175) (entity :text "Swann." :label "ORG" :start 300 :end 306) (entity :text "Eurydice." :label "ORG" :start 432 :end 441)
 )
 :sentences (list
  (sentence :text "D’ailleurs on commençait à éteindre partout" :start 0 :end 43) (sentence :text "Sous les arbres des
boulevards, dans une obscurité mystérieuse, les passants plus rares
erraient, à peine reconnaissables" :start 44 :end 166) (sentence :text "Parfois l’ombre d’une femme qui
s’approchait de lui, lui murmurant un mot à l’oreille, lui demandant
de la ramener, fit tressaillir Swann" :start 167 :end 305) (sentence :text "Il frôlait anxieusement tous ces
corps obscurs comme si parmi les fantômes des morts, dans le royaume
sombre, il eût cherché Eurydice" :start 306 :end 440)
 ))