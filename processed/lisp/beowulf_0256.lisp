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
 :text "Quand, au moment de quitter l’église, je m’agenouillai devant l’autel,
je sentis tout d’un coup, en me relevant, s’échapper des aubépines une
odeur amère et douce d’amandes, et je remarquai alors sur les fleurs
de petites places plus blondes, sous lesquelles je me figurai que
devait être cachée cette odeur comme sous les parties gratinées le
goût d’une frangipane ou sous leurs taches de rousseur celui des joues
de Mlle Vinteuil. Malgré la silencieuse immobilité des aubépines,
cette intermittente ardeur était comme le murmure de leur vie intense
dont l’autel vibrait ainsi qu’une haie agreste visitée par de vivantes
antennes, auxquelles on pensait en voyant certaines étamines presque
rousses qui semblaient avoir gardé la virulence printanière, le
pouvoir irritant, d’insectes aujourd’hui métamorphosés en fleurs."
 :tokens 124
 :processed-at "2025-03-16T02:18:14.053144"
 :entities (list
  (entity :text "Quand," :label "ORG" :start 0 :end 6) (entity :text "Mlle" :label "ORG" :start 418 :end 422) (entity :text "Vinteuil." :label "ORG" :start 423 :end 432) (entity :text "Malgré" :label "ORG" :start 433 :end 439)
 )
 :sentences (list
  (sentence :text "Quand, au moment de quitter l’église, je m’agenouillai devant l’autel,
je sentis tout d’un coup, en me relevant, s’échapper des aubépines une
odeur amère et douce d’amandes, et je remarquai alors sur les fleurs
de petites places plus blondes, sous lesquelles je me figurai que
devait être cachée cette odeur comme sous les parties gratinées le
goût d’une frangipane ou sous leurs taches de rousseur celui des joues
de Mlle Vinteuil" :start 0 :end 431) (sentence :text "Malgré la silencieuse immobilité des aubépines,
cette intermittente ardeur était comme le murmure de leur vie intense
dont l’autel vibrait ainsi qu’une haie agreste visitée par de vivantes
antennes, auxquelles on pensait en voyant certaines étamines presque
rousses qui semblaient avoir gardé la virulence printanière, le
pouvoir irritant, d’insectes aujourd’hui métamorphosés en fleurs" :start 432 :end 819)
 ))