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
 :text "Nous nous arrêtâmes un moment devant la barrière. Le temps des lilas
approchait de sa fin; quelques-uns effusaient encore en hauts lustres
mauves les bulles délicates de leurs fleurs, mais dans bien des
parties du feuillage où déferlait, il y avait seulement une semaine,
leur mousse embaumée, se flétrissait, diminuée et noircie, une écume
creuse, sèche et sans parfum. Mon grand-père montrait à mon père en
quoi l’aspect des lieux était resté le même, et en quoi il avait
changé, depuis la promenade qu’il avait faite avec M. Swann le jour de
la mort de sa femme, et il saisit cette occasion pour raconter cette
promenade une fois de plus."
 :tokens 110
 :processed-at "2025-03-16T02:18:14.104199"
 :entities (list
  (entity :text "Nous" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 528 :end 533)
 )
 :sentences (list
  (sentence :text "Nous nous arrêtâmes un moment devant la barrière" :start 0 :end 48) (sentence :text "Le temps des lilas
approchait de sa fin; quelques-uns effusaient encore en hauts lustres
mauves les bulles délicates de leurs fleurs, mais dans bien des
parties du feuillage où déferlait, il y avait seulement une semaine,
leur mousse embaumée, se flétrissait, diminuée et noircie, une écume
creuse, sèche et sans parfum" :start 49 :end 369) (sentence :text "Mon grand-père montrait à mon père en
quoi l’aspect des lieux était resté le même, et en quoi il avait
changé, depuis la promenade qu’il avait faite avec M" :start 370 :end 526) (sentence :text "Swann le jour de
la mort de sa femme, et il saisit cette occasion pour raconter cette
promenade une fois de plus" :start 527 :end 640)
 ))