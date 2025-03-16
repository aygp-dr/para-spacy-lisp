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
 :text "--Finissez votre entremets qu’on puisse enlever votre assiette, dit Mme
Verdurin d’un ton aigre en s’adressant à Saniette, lequel absorbé dans
des réflexions, avait cessé de manger. Et peut-être un peu honteuse du
ton qu’elle avait pris: «Cela ne fait rien, vous avez votre temps,
mais, si je vous le dis, c’est pour les autres, parce que cela empêche
de servir.»"
 :tokens 61
 :processed-at "2025-03-16T02:18:14.466068"
 :entities (list
  (entity :text "--Finissez" :label "ORG" :start 0 :end 10) (entity :text "Verdurin" :label "ORG" :start 72 :end 80) (entity :text "Saniette," :label "ORG" :start 113 :end 122) (entity :text "«Cela" :label "ORG" :start 238 :end 243)
 )
 :sentences (list
  (sentence :text "--Finissez votre entremets qu’on puisse enlever votre assiette, dit Mme
Verdurin d’un ton aigre en s’adressant à Saniette, lequel absorbé dans
des réflexions, avait cessé de manger" :start 0 :end 180) (sentence :text "Et peut-être un peu honteuse du
ton qu’elle avait pris: «Cela ne fait rien, vous avez votre temps,
mais, si je vous le dis, c’est pour les autres, parce que cela empêche
de servir" :start 181 :end 361) (sentence :text "»" :start 362 :end 363)
 ))