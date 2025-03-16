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
 :text "Elle regardait cette tête qui n’était qu’un peu plus vieillie par le
souci (mais dont maintenant tous pensaient, en vertu de cette même
aptitude qui permet de découvrir les intentions d’un morceau
symphonique dont on a lu le programme, et les ressemblances d’un
enfant quand on connaît sa parenté: «Il n’est pas positivement laid si
vous voulez, mais il est ridicule: ce monocle, ce toupet, ce
sourire!», réalisant dans leur imagination suggestionnée la
démarcation immatérielle qui sépare à quelques mois de distance une
tête d’amant de cœur et une tête de cocu), elle disait:"
 :tokens 94
 :processed-at "2025-03-16T02:18:14.641473"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4)
 )
 :sentences (list
  (sentence :text "Elle regardait cette tête qui n’était qu’un peu plus vieillie par le
souci (mais dont maintenant tous pensaient, en vertu de cette même
aptitude qui permet de découvrir les intentions d’un morceau
symphonique dont on a lu le programme, et les ressemblances d’un
enfant quand on connaît sa parenté: «Il n’est pas positivement laid si
vous voulez, mais il est ridicule: ce monocle, ce toupet, ce
sourire!», réalisant dans leur imagination suggestionnée la
démarcation immatérielle qui sépare à quelques mois de distance une
tête d’amant de cœur et une tête de cocu), elle disait:" :start 0 :end 577)
 ))