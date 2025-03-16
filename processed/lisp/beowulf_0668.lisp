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
 :text "Mais ils se turent; sous l’agitation des trémolos de violon qui la
protégeaient de leur tenue frémissante à deux octaves de là--et comme
dans un pays de montagne, derrière l’immobilité apparente et
vertigineuse d’une cascade, on aperçoit, deux cents pieds plus bas, la
forme minuscule d’une promeneuse--la petite phrase venait d’apparaître,
lointaine, gracieuse, protégée par le long déferlement du rideau
transparent, incessant et sonore. Et Swann, en son cœur, s’adressa à
elle comme à une confidente de son amour, comme à une amie d’Odette
qui devrait bien lui dire de ne pas faire attention à ce Forcheville."
 :tokens 97
 :processed-at "2025-03-16T02:18:14.493736"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann," :label "ORG" :start 443 :end 449) (entity :text "Forcheville." :label "ORG" :start 600 :end 612)
 )
 :sentences (list
  (sentence :text "Mais ils se turent; sous l’agitation des trémolos de violon qui la
protégeaient de leur tenue frémissante à deux octaves de là--et comme
dans un pays de montagne, derrière l’immobilité apparente et
vertigineuse d’une cascade, on aperçoit, deux cents pieds plus bas, la
forme minuscule d’une promeneuse--la petite phrase venait d’apparaître,
lointaine, gracieuse, protégée par le long déferlement du rideau
transparent, incessant et sonore" :start 0 :end 438) (sentence :text "Et Swann, en son cœur, s’adressa à
elle comme à une confidente de son amour, comme à une amie d’Odette
qui devrait bien lui dire de ne pas faire attention à ce Forcheville" :start 439 :end 611)
 ))