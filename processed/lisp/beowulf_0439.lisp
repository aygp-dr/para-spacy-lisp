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
 :text "Cette petite scène qui se renouvelait chaque fois que le pianiste
allait jouer enchantait les amis aussi bien que si elle avait été
nouvelle, comme une preuve de la séduisante originalité de la
«Patronne» et de sa sensibilité musicale. Ceux qui étaient près d’elle
faisaient signe à ceux qui plus loin fumaient ou jouaient aux cartes,
de se rapprocher, qu’il se passait quelque chose, leur disant, comme
on fait au Reichstag dans les moments intéressants: «Écoutez,
écoutez.» Et le lendemain on donnait des regrets à ceux qui n’avaient
pas pu venir en leur disant que la scène avait été encore plus
amusante que d’habitude."
 :tokens 104
 :processed-at "2025-03-16T02:18:14.261913"
 :entities (list
  (entity :text "Cette" :label "ORG" :start 0 :end 5) (entity :text "«Patronne»" :label "ORG" :start 194 :end 204) (entity :text "Ceux" :label "ORG" :start 236 :end 240) (entity :text "Reichstag" :label "ORG" :start 415 :end 424) (entity :text "«Écoutez," :label "ORG" :start 456 :end 465)
 )
 :sentences (list
  (sentence :text "Cette petite scène qui se renouvelait chaque fois que le pianiste
allait jouer enchantait les amis aussi bien que si elle avait été
nouvelle, comme une preuve de la séduisante originalité de la
«Patronne» et de sa sensibilité musicale" :start 0 :end 234) (sentence :text "Ceux qui étaient près d’elle
faisaient signe à ceux qui plus loin fumaient ou jouaient aux cartes,
de se rapprocher, qu’il se passait quelque chose, leur disant, comme
on fait au Reichstag dans les moments intéressants: «Écoutez,
écoutez" :start 235 :end 473) (sentence :text "» Et le lendemain on donnait des regrets à ceux qui n’avaient
pas pu venir en leur disant que la scène avait été encore plus
amusante que d’habitude" :start 474 :end 622)
 ))