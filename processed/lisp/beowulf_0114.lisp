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
 :text "--«Oh! ajoutait-il, avec ce sourire doucement ironique et déçu, un peu
distrait, qui lui était particulier, certes il y a dans ma maison
toutes les choses inutiles. Il n’y manque que le nécessaire, un grand
morceau de ciel comme ici. Tâchez de garder toujours un morceau de
ciel au-dessus de votre vie, petit garçon, ajoutait-il en se tournant
vers moi. Vous avez une jolie âme, d’une qualité rare, une nature
d’artiste, ne la laissez pas manquer de ce qu’il lui faut.»"
 :tokens 81
 :processed-at "2025-03-16T02:18:13.907469"
 :entities (list
  (entity :text "--«Oh!" :label "ORG" :start 0 :end 6) (entity :text "Tâchez" :label "ORG" :start 234 :end 240) (entity :text "Vous" :label "ORG" :start 354 :end 358)
 )
 :sentences (list
  (sentence :text "--«Oh! ajoutait-il, avec ce sourire doucement ironique et déçu, un peu
distrait, qui lui était particulier, certes il y a dans ma maison
toutes les choses inutiles" :start 0 :end 163) (sentence :text "Il n’y manque que le nécessaire, un grand
morceau de ciel comme ici" :start 164 :end 232) (sentence :text "Tâchez de garder toujours un morceau de
ciel au-dessus de votre vie, petit garçon, ajoutait-il en se tournant
vers moi" :start 233 :end 352) (sentence :text "Vous avez une jolie âme, d’une qualité rare, une nature
d’artiste, ne la laissez pas manquer de ce qu’il lui faut" :start 353 :end 467) (sentence :text "»" :start 468 :end 469)
 ))