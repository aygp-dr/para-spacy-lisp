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
 :text "Tous les matins je courais jusqu’à la colonne Moriss pour voir les
spectacles qu’elle annonçait. Rien n’était plus désintéressé et plus
heureux que les rêves offerts à mon imagination par chaque pièce
annoncée et qui étaient conditionnés à la fois par les images
inséparables des mots qui en composaient le titre et aussi de la
couleur des affiches encore humides et boursouflées de colle sur
lesquelles il se détachait. Si ce n’est une de ces œuvres étranges
comme le Testament de César Girodot et Œdipe-Roi lesquelles
s’inscrivaient, non sur l’affiche verte de l’Opéra-Comique, mais sur
l’affiche lie de vin de la Comédie-Française, rien ne me paraissait
plus différent de l’aigrette étincelante et blanche des Diamants de la
Couronne que le satin lisse et mystérieux du Domino Noir, et, mes
parents m’ayant dit que quand j’irais pour la première fois au théâtre
j’aurais à choisir entre ces deux pièces, cherchant à approfondir
successivement le titre de l’une et le titre de l’autre, puisque
c’était tout ce que je connaissais d’elles, pour tâcher de saisir en
chacun le plaisir qu’il me promettait et de le comparer à celui que
recélait l’autre, j’arrivais à me représenter avec tant de force,
d’une part une pièce éblouissante et fière, de l’autre une pièce douce
et veloutée, que j’étais aussi incapable de décider laquelle aurait ma
préférence, que si, pour le dessert, on m’avait donné à opter encore
du riz à l’Impératrice et de la crème au chocolat."
 :tokens 242
 :processed-at "2025-03-16T02:18:13.919543"
 :entities (list
  (entity :text "Tous" :label "ORG" :start 0 :end 4) (entity :text "Moriss" :label "ORG" :start 46 :end 52) (entity :text "Rien" :label "ORG" :start 97 :end 101) (entity :text "Testament" :label "ORG" :start 469 :end 478) (entity :text "César" :label "ORG" :start 482 :end 487) (entity :text "Girodot" :label "ORG" :start 488 :end 495) (entity :text "Œdipe-Roi" :label "ORG" :start 499 :end 508) (entity :text "Comédie-Française," :label "ORG" :start 616 :end 634) (entity :text "Diamants" :label "ORG" :start 713 :end 721) (entity :text "Couronne" :label "ORG" :start 728 :end 736) (entity :text "Domino" :label "ORG" :start 773 :end 779) (entity :text "Noir," :label "ORG" :start 780 :end 785)
 )
 :sentences (list
  (sentence :text "Tous les matins je courais jusqu’à la colonne Moriss pour voir les
spectacles qu’elle annonçait" :start 0 :end 95) (sentence :text "Rien n’était plus désintéressé et plus
heureux que les rêves offerts à mon imagination par chaque pièce
annoncée et qui étaient conditionnés à la fois par les images
inséparables des mots qui en composaient le titre et aussi de la
couleur des affiches encore humides et boursouflées de colle sur
lesquelles il se détachait" :start 96 :end 419) (sentence :text "Si ce n’est une de ces œuvres étranges
comme le Testament de César Girodot et Œdipe-Roi lesquelles
s’inscrivaient, non sur l’affiche verte de l’Opéra-Comique, mais sur
l’affiche lie de vin de la Comédie-Française, rien ne me paraissait
plus différent de l’aigrette étincelante et blanche des Diamants de la
Couronne que le satin lisse et mystérieux du Domino Noir, et, mes
parents m’ayant dit que quand j’irais pour la première fois au théâtre
j’aurais à choisir entre ces deux pièces, cherchant à approfondir
successivement le titre de l’une et le titre de l’autre, puisque
c’était tout ce que je connaissais d’elles, pour tâcher de saisir en
chacun le plaisir qu’il me promettait et de le comparer à celui que
recélait l’autre, j’arrivais à me représenter avec tant de force,
d’une part une pièce éblouissante et fière, de l’autre une pièce douce
et veloutée, que j’étais aussi incapable de décider laquelle aurait ma
préférence, que si, pour le dessert, on m’avait donné à opter encore
du riz à l’Impératrice et de la crème au chocolat" :start 420 :end 1459)
 ))