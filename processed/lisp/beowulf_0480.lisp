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
 :text "Le peintre avait entendu dire que Vinteuil était menacé d’aliénation
mentale. Et il assurait qu’on pouvait s’en apercevoir à certains
passages de sa sonate. Swann ne trouva pas cette remarque absurde,
mais elle le troubla; car une œuvre de musique pure ne contenant aucun
des rapports logiques dont l’altération dans le langage dénonce la
folie, la folie reconnue dans une sonate lui paraissait quelque chose
d’aussi mystérieux que la folie d’une chienne, la folie d’un cheval,
qui pourtant s’observent en effet."
 :tokens 81
 :processed-at "2025-03-16T02:18:14.298053"
 :entities (list
  (entity :text "Vinteuil" :label "ORG" :start 34 :end 42) (entity :text "Swann" :label "ORG" :start 157 :end 162)
 )
 :sentences (list
  (sentence :text "Le peintre avait entendu dire que Vinteuil était menacé d’aliénation
mentale" :start 0 :end 76) (sentence :text "Et il assurait qu’on pouvait s’en apercevoir à certains
passages de sa sonate" :start 77 :end 155) (sentence :text "Swann ne trouva pas cette remarque absurde,
mais elle le troubla; car une œuvre de musique pure ne contenant aucun
des rapports logiques dont l’altération dans le langage dénonce la
folie, la folie reconnue dans une sonate lui paraissait quelque chose
d’aussi mystérieux que la folie d’une chienne, la folie d’un cheval,
qui pourtant s’observent en effet" :start 156 :end 511)
 ))