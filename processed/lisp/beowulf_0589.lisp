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
 :text "«Mon Dieu, Madame, je ne voudrais pas alarmer les âmes respectueuses
s’il y en a autour de cette table, sub rosa... Je reconnais d’ailleurs
que notre ineffable république athénienne--ô combien!--pourrait honorer
en cette capétienne obscurantiste le premier des préfets de police à
poigne. Si fait, mon cher hôte, si fait, reprit-il de sa voix bien
timbrée qui détachait chaque syllabe, en réponse à une objection de M.
Verdurin. La chronique de Saint-Denis dont nous ne pouvons contester
la sûreté d’information ne laisse aucun doute à cet égard. Nulle ne
pourrait être mieux choisie comme patronne par un prolétariat
laïcisateur que cette mère d’un saint à qui elle en fit d’ailleurs
voir de saumâtres, comme dit Suger et autres saint Bernard; car avec
elle chacun en prenait pour son grade."
 :tokens 129
 :processed-at "2025-03-16T02:18:14.421711"
 :entities (list
  (entity :text "«Mon" :label "ORG" :start 0 :end 4) (entity :text "Dieu," :label "ORG" :start 5 :end 10) (entity :text "Madame," :label "ORG" :start 11 :end 18) (entity :text "Verdurin." :label "ORG" :start 419 :end 428) (entity :text "Saint-Denis" :label "ORG" :start 445 :end 456) (entity :text "Nulle" :label "ORG" :start 547 :end 552) (entity :text "Suger" :label "ORG" :start 714 :end 719) (entity :text "Bernard;" :label "ORG" :start 736 :end 744)
 )
 :sentences (list
  (sentence :text "«Mon Dieu, Madame, je ne voudrais pas alarmer les âmes respectueuses
s’il y en a autour de cette table, sub rosa" :start 0 :end 112) (sentence :text "Je reconnais d’ailleurs
que notre ineffable république athénienne--ô combien!--pourrait honorer
en cette capétienne obscurantiste le premier des préfets de police à
poigne" :start 115 :end 287) (sentence :text "Si fait, mon cher hôte, si fait, reprit-il de sa voix bien
timbrée qui détachait chaque syllabe, en réponse à une objection de M" :start 288 :end 417) (sentence :text "Verdurin" :start 418 :end 427) (sentence :text "La chronique de Saint-Denis dont nous ne pouvons contester
la sûreté d’information ne laisse aucun doute à cet égard" :start 428 :end 545) (sentence :text "Nulle ne
pourrait être mieux choisie comme patronne par un prolétariat
laïcisateur que cette mère d’un saint à qui elle en fit d’ailleurs
voir de saumâtres, comme dit Suger et autres saint Bernard; car avec
elle chacun en prenait pour son grade" :start 546 :end 791)
 ))