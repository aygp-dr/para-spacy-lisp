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
 :text "Le docteur cependant, poussait Mme Verdurin à laisser jouer le
pianiste, non pas qu’il crût feints les troubles que la musique lui
donnait--il y reconnaissait certains états neurasthéniques--mais par
cette habitude qu’ont beaucoup de médecins, de faire fléchir
immédiatement la sévérité de leurs prescriptions dès qu’est en jeu,
chose qui leur semble beaucoup plus importante, quelque réunion
mondaine dont ils font partie et dont la personne à qui ils
conseillent d’oublier pour une fois sa dyspepsie, ou sa grippe, est un
des facteurs essentiels."
 :tokens 84
 :processed-at "2025-03-16T02:18:14.264481"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 35 :end 43)
 )
 :sentences (list
  (sentence :text "Le docteur cependant, poussait Mme Verdurin à laisser jouer le
pianiste, non pas qu’il crût feints les troubles que la musique lui
donnait--il y reconnaissait certains états neurasthéniques--mais par
cette habitude qu’ont beaucoup de médecins, de faire fléchir
immédiatement la sévérité de leurs prescriptions dès qu’est en jeu,
chose qui leur semble beaucoup plus importante, quelque réunion
mondaine dont ils font partie et dont la personne à qui ils
conseillent d’oublier pour une fois sa dyspepsie, ou sa grippe, est un
des facteurs essentiels" :start 0 :end 547)
 ))