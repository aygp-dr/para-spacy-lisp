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
 :text "N’est-ce pas la fine notation de cette heure-ci? Vous n’avez peut-être
jamais lu Paul Desjardins. Lisez-le, mon enfant; aujourd’hui il se
mue, me dit-on, en frère prêcheur, mais ce fut longtemps un
aquarelliste limpide..."
 :tokens 34
 :processed-at "2025-03-16T02:18:14.066226"
 :entities (list
  (entity :text "Vous" :label "ORG" :start 49 :end 53) (entity :text "Paul" :label "ORG" :start 81 :end 85) (entity :text "Desjardins." :label "ORG" :start 86 :end 97)
 )
 :sentences (list
  (sentence :text "N’est-ce pas la fine notation de cette heure-ci? Vous n’avez peut-être
jamais lu Paul Desjardins" :start 0 :end 96) (sentence :text "Lisez-le, mon enfant; aujourd’hui il se
mue, me dit-on, en frère prêcheur, mais ce fut longtemps un
aquarelliste limpide" :start 97 :end 218)
 ))