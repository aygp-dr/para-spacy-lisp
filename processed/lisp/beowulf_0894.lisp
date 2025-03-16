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
 :text "Swann refusa; ayant prévenu M. de Charlus qu’en quittant de chez Mme
de Saint-Euverte il rentrerait directement chez lui, il ne se souciait
pas en allant chez la princesse de Parme de risquer de manquer un mot
qu’il avait tout le temps espéré se voir remettre par un domestique
pendant la soirée, et que peut-être il allait trouver chez son
concierge. «Ce pauvre Swann, dit ce soir-là Mme des Laumes à son mari,
il est toujours gentil, mais il a l’air bien malheureux. Vous le
verrez, car il a promis de venir dîner un de ces jours. Je trouve
ridicule au fond qu’un homme de son intelligence souffre pour une
personne de ce genre et qui n’est même pas intéressante, car on la dit
idiote», ajouta-t-elle avec la sagesse des gens non amoureux qui
trouvent qu’un homme d’esprit ne devrait être malheureux que pour une
personne qui en valût la peine; c’est à peu près comme s’étonner qu’on
daigne souffrir du choléra par le fait d’un être aussi petit que le
bacille virgule."
 :tokens 173
 :processed-at "2025-03-16T02:18:14.727104"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 0 :end 5) (entity :text "Charlus" :label "ORG" :start 34 :end 41) (entity :text "Saint-Euverte" :label "ORG" :start 72 :end 85) (entity :text "Parme" :label "ORG" :start 175 :end 180) (entity :text "Swann," :label "ORG" :start 363 :end 369) (entity :text "Laumes" :label "ORG" :start 393 :end 399) (entity :text "Vous" :label "ORG" :start 469 :end 473)
 )
 :sentences (list
  (sentence :text "Swann refusa; ayant prévenu M" :start 0 :end 29) (sentence :text "de Charlus qu’en quittant de chez Mme
de Saint-Euverte il rentrerait directement chez lui, il ne se souciait
pas en allant chez la princesse de Parme de risquer de manquer un mot
qu’il avait tout le temps espéré se voir remettre par un domestique
pendant la soirée, et que peut-être il allait trouver chez son
concierge" :start 30 :end 350) (sentence :text "«Ce pauvre Swann, dit ce soir-là Mme des Laumes à son mari,
il est toujours gentil, mais il a l’air bien malheureux" :start 351 :end 467) (sentence :text "Vous le
verrez, car il a promis de venir dîner un de ces jours" :start 468 :end 531) (sentence :text "Je trouve
ridicule au fond qu’un homme de son intelligence souffre pour une
personne de ce genre et qui n’est même pas intéressante, car on la dit
idiote», ajouta-t-elle avec la sagesse des gens non amoureux qui
trouvent qu’un homme d’esprit ne devrait être malheureux que pour une
personne qui en valût la peine; c’est à peu près comme s’étonner qu’on
daigne souffrir du choléra par le fait d’un être aussi petit que le
bacille virgule" :start 532 :end 969)
 ))