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
 :text "Sauf au moment où il avait dit: «plus fort que la Ronde», blasphème
qui avait provoqué une protestation de Mme Verdurin qui tenait «la
Ronde» pour le plus grand chef-d’œuvre de l’univers avec «la Neuvième»
et «la Samothrace», et à: «fait avec du caca» qui avait fait jeter à
Forcheville un coup d’œil circulaire sur la table pour voir si le mot
passait et avait ensuite amené sur sa bouche un sourire prude et
conciliant, tous les convives, excepté Swann, avaient attaché sur le
peintre des regards fascinés par l’admiration."
 :tokens 90
 :processed-at "2025-03-16T02:18:14.438015"
 :entities (list
  (entity :text "Sauf" :label "ORG" :start 0 :end 4) (entity :text "Ronde»," :label "ORG" :start 50 :end 57) (entity :text "Verdurin" :label "ORG" :start 111 :end 119) (entity :text "Ronde»" :label "ORG" :start 135 :end 141) (entity :text "Neuvième»" :label "ORG" :start 196 :end 205) (entity :text "Samothrace»," :label "ORG" :start 213 :end 225) (entity :text "Forcheville" :label "ORG" :start 275 :end 286) (entity :text "Swann," :label "ORG" :start 449 :end 455)
 )
 :sentences (list
  (sentence :text "Sauf au moment où il avait dit: «plus fort que la Ronde», blasphème
qui avait provoqué une protestation de Mme Verdurin qui tenait «la
Ronde» pour le plus grand chef-d’œuvre de l’univers avec «la Neuvième»
et «la Samothrace», et à: «fait avec du caca» qui avait fait jeter à
Forcheville un coup d’œil circulaire sur la table pour voir si le mot
passait et avait ensuite amené sur sa bouche un sourire prude et
conciliant, tous les convives, excepté Swann, avaient attaché sur le
peintre des regards fascinés par l’admiration" :start 0 :end 524)
 ))