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
 :text "A intervalles symétriques, au milieu de l’inimitable ornementation de
leurs feuilles qu’on ne peut confondre avec la feuille d’aucun autre
arbre fruitier, les pommiers ouvraient leurs larges pétales de satin
blanc ou suspendaient les timides bouquets de leurs rougissants
boutons. C’est du côté de Méséglise que j’ai remarqué pour la première
fois l’ombre ronde que les pommiers font sur la terre ensoleillée, et
aussi ces soies d’or impalpable que le couchant tisse obliquement sous
les feuilles, et que je voyais mon père interrompre de sa canne sans
les faire jamais dévier."
 :tokens 91
 :processed-at "2025-03-16T02:18:14.120698"
 :entities (list
  (entity :text "Méséglise" :label "ORG" :start 298 :end 307)
 )
 :sentences (list
  (sentence :text "A intervalles symétriques, au milieu de l’inimitable ornementation de
leurs feuilles qu’on ne peut confondre avec la feuille d’aucun autre
arbre fruitier, les pommiers ouvraient leurs larges pétales de satin
blanc ou suspendaient les timides bouquets de leurs rougissants
boutons" :start 0 :end 279) (sentence :text "C’est du côté de Méséglise que j’ai remarqué pour la première
fois l’ombre ronde que les pommiers font sur la terre ensoleillée, et
aussi ces soies d’or impalpable que le couchant tisse obliquement sous
les feuilles, et que je voyais mon père interrompre de sa canne sans
les faire jamais dévier" :start 280 :end 576)
 ))