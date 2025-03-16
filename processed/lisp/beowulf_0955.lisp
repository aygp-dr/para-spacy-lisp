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
 :text "Ayant tenu ces propos que lui inspiraient la hauteur de son aigrette,
le chiffre de son porte-cartes, le petit numéro tracé à l’encre dans
ses gants par le teinturier, et l’embarras de parler à Swann des
Verdurin, Mme Cottard, voyant qu’on était encore loin du coin de la
rue Bonaparte où le conducteur devait l’arrêter, écouta son cœur qui
lui conseillait d’autres paroles."
 :tokens 63
 :processed-at "2025-03-16T02:18:14.805806"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 194 :end 199) (entity :text "Verdurin," :label "ORG" :start 204 :end 213) (entity :text "Cottard," :label "ORG" :start 218 :end 226) (entity :text "Bonaparte" :label "ORG" :start 276 :end 285)
 )
 :sentences (list
  (sentence :text "Ayant tenu ces propos que lui inspiraient la hauteur de son aigrette,
le chiffre de son porte-cartes, le petit numéro tracé à l’encre dans
ses gants par le teinturier, et l’embarras de parler à Swann des
Verdurin, Mme Cottard, voyant qu’on était encore loin du coin de la
rue Bonaparte où le conducteur devait l’arrêter, écouta son cœur qui
lui conseillait d’autres paroles" :start 0 :end 373)
 ))