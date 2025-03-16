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
 :text "--«Françoise, mais pour qui donc a-t-on sonné la cloche des morts? Ah!
mon Dieu, ce sera pour Mme Rousseau. Voilà-t-il pas que j’avais oublié
qu’elle a passé l’autre nuit. Ah! il est temps que le Bon Dieu me
rappelle, je ne sais plus ce que j’ai fait de ma tête depuis la mort
de mon pauvre Octave. Mais je vous fais perdre votre temps, ma fille.»"
 :tokens 66
 :processed-at "2025-03-16T02:18:13.870263"
 :entities (list
  (entity :text "--«Françoise," :label "ORG" :start 0 :end 13) (entity :text "Dieu," :label "ORG" :start 75 :end 80) (entity :text "Rousseau." :label "ORG" :start 98 :end 107) (entity :text "Dieu" :label "ORG" :start 200 :end 204) (entity :text "Octave." :label "ORG" :start 291 :end 298) (entity :text "Mais" :label "ORG" :start 299 :end 303)
 )
 :sentences (list
  (sentence :text "--«Françoise, mais pour qui donc a-t-on sonné la cloche des morts? Ah!
mon Dieu, ce sera pour Mme Rousseau" :start 0 :end 106) (sentence :text "Voilà-t-il pas que j’avais oublié
qu’elle a passé l’autre nuit" :start 107 :end 170) (sentence :text "Ah! il est temps que le Bon Dieu me
rappelle, je ne sais plus ce que j’ai fait de ma tête depuis la mort
de mon pauvre Octave" :start 171 :end 297) (sentence :text "Mais je vous fais perdre votre temps, ma fille" :start 298 :end 345) (sentence :text "»" :start 346 :end 347)
 ))