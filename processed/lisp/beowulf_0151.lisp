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
 :text "Cette obscure fraîcheur de ma chambre était au plein soleil de la rue,
ce que l’ombre est au rayon, c’est-à-dire aussi lumineuse que lui, et
offrait à mon imagination le spectacle total de l’été dont mes sens si
j’avais été en promenade, n’auraient pu jouir que par morceaux; et
ainsi elle s’accordait bien à mon repos qui (grâce aux aventures
racontées par mes livres et qui venaient l’émouvoir) supportait pareil
au repos d’une main immobile au milieu d’une eau courante, le choc et
l’animation d’un torrent d’activité."
 :tokens 87
 :processed-at "2025-03-16T02:18:13.945347"
 :entities (list
  (entity :text "Cette" :label "ORG" :start 0 :end 5)
 )
 :sentences (list
  (sentence :text "Cette obscure fraîcheur de ma chambre était au plein soleil de la rue,
ce que l’ombre est au rayon, c’est-à-dire aussi lumineuse que lui, et
offrait à mon imagination le spectacle total de l’été dont mes sens si
j’avais été en promenade, n’auraient pu jouir que par morceaux; et
ainsi elle s’accordait bien à mon repos qui (grâce aux aventures
racontées par mes livres et qui venaient l’émouvoir) supportait pareil
au repos d’une main immobile au milieu d’une eau courante, le choc et
l’animation d’un torrent d’activité" :start 0 :end 520)
 ))