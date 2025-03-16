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
 :text "Mais Swann ne cherchait nullement à lui faire modifier cette
conception du chic; pensant que la sienne n’était pas plus vraie,
était aussi sotte, dénuée d’importance, il ne trouvait aucun intérêt à
en instruire sa maîtresse, si bien qu’après des mois elle ne
s’intéressait aux personnes chez qui il allait que pour les cartes de
pesage, de concours hippique, les billets de première qu’il pouvait
avoir par elles. Elle souhaitait qu’il cultivât des relations si
utiles mais elle était par ailleurs, portée à les croire peu chic,
depuis qu’elle avait vu passer dans la rue la marquise de Villeparisis
en robe de laine noire, avec un bonnet à brides."
 :tokens 109
 :processed-at "2025-03-16T02:18:14.400289"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 5 :end 10) (entity :text "Elle" :label "ORG" :start 414 :end 418) (entity :text "Villeparisis" :label "ORG" :start 587 :end 599)
 )
 :sentences (list
  (sentence :text "Mais Swann ne cherchait nullement à lui faire modifier cette
conception du chic; pensant que la sienne n’était pas plus vraie,
était aussi sotte, dénuée d’importance, il ne trouvait aucun intérêt à
en instruire sa maîtresse, si bien qu’après des mois elle ne
s’intéressait aux personnes chez qui il allait que pour les cartes de
pesage, de concours hippique, les billets de première qu’il pouvait
avoir par elles" :start 0 :end 412) (sentence :text "Elle souhaitait qu’il cultivât des relations si
utiles mais elle était par ailleurs, portée à les croire peu chic,
depuis qu’elle avait vu passer dans la rue la marquise de Villeparisis
en robe de laine noire, avec un bonnet à brides" :start 413 :end 647)
 ))