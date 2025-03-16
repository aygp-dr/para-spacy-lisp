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
 :text "Swann, habitué quand il était auprès d’une femme avec qui il avait
gardé des habitudes galantes de langage, de dire des choses délicates
que beaucoup de gens du monde ne comprenaient pas, ne daigna pas
expliquer à Mme de Saint-Euverte qu’il n’avait parlé que par
métaphore. Quant à la princesse, elle se mit à rire aux éclats, parce
que l’esprit de Swann était extrêmement apprécié dans sa coterie et
aussi parce qu’elle ne pouvait entendre un compliment s’adressant à
elle sans lui trouver les grâces les plus fines et une irrésistible
drôlerie."
 :tokens 92
 :processed-at "2025-03-16T02:18:14.711657"
 :entities (list
  (entity :text "Swann," :label "ORG" :start 0 :end 6) (entity :text "Saint-Euverte" :label "ORG" :start 221 :end 234) (entity :text "Quant" :label "ORG" :start 274 :end 279) (entity :text "Swann" :label "ORG" :start 349 :end 354)
 )
 :sentences (list
  (sentence :text "Swann, habitué quand il était auprès d’une femme avec qui il avait
gardé des habitudes galantes de langage, de dire des choses délicates
que beaucoup de gens du monde ne comprenaient pas, ne daigna pas
expliquer à Mme de Saint-Euverte qu’il n’avait parlé que par
métaphore" :start 0 :end 272) (sentence :text "Quant à la princesse, elle se mit à rire aux éclats, parce
que l’esprit de Swann était extrêmement apprécié dans sa coterie et
aussi parce qu’elle ne pouvait entendre un compliment s’adressant à
elle sans lui trouver les grâces les plus fines et une irrésistible
drôlerie" :start 273 :end 545)
 ))