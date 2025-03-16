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
 :text "Mon grand-père avait précisément connu, ce qu’on n’aurait pu dire
d’aucun de leurs amis actuels, la famille de ces Verdurin. Mais il
avait perdu toute relation avec celui qu’il appelait le «jeune
Verdurin» et qu’il considérait, un peu en gros, comme tombé--tout en
gardant de nombreux millions--dans la bohème et la racaille. Un jour il
reçut une lettre de Swann lui demandant s’il ne pourrait pas le mettre
en rapport avec les Verdurin: «À la garde! à la garde! s’était écrié
mon grand-père, ça ne m’étonne pas du tout, c’est bien par là que
devait finir Swann. Joli milieu! D’abord je ne peux pas faire ce qu’il
me demande parce que je ne connais plus ce monsieur. Et puis ça doit
cacher une histoire de femme, je ne me mêle pas de ces affaires-là. Ah
bien! nous allons avoir de l’agrément si Swann s’affuble des petits
Verdurin.»"
 :tokens 147
 :processed-at "2025-03-16T02:18:14.235578"
 :entities (list
  (entity :text "Verdurin." :label "ORG" :start 115 :end 124) (entity :text "Mais" :label "ORG" :start 125 :end 129) (entity :text "Verdurin»" :label "ORG" :start 196 :end 205) (entity :text "Swann" :label "ORG" :start 357 :end 362) (entity :text "Verdurin:" :label "ORG" :start 428 :end 437) (entity :text "Swann." :label "ORG" :start 556 :end 562) (entity :text "Joli" :label "ORG" :start 563 :end 567) (entity :text "Swann" :label "ORG" :start 795 :end 800) (entity :text "Verdurin.»" :label "ORG" :start 822 :end 832)
 )
 :sentences (list
  (sentence :text "Mon grand-père avait précisément connu, ce qu’on n’aurait pu dire
d’aucun de leurs amis actuels, la famille de ces Verdurin" :start 0 :end 123) (sentence :text "Mais il
avait perdu toute relation avec celui qu’il appelait le «jeune
Verdurin» et qu’il considérait, un peu en gros, comme tombé--tout en
gardant de nombreux millions--dans la bohème et la racaille" :start 124 :end 324) (sentence :text "Un jour il
reçut une lettre de Swann lui demandant s’il ne pourrait pas le mettre
en rapport avec les Verdurin: «À la garde! à la garde! s’était écrié
mon grand-père, ça ne m’étonne pas du tout, c’est bien par là que
devait finir Swann" :start 325 :end 561) (sentence :text "Joli milieu! D’abord je ne peux pas faire ce qu’il
me demande parce que je ne connais plus ce monsieur" :start 562 :end 665) (sentence :text "Et puis ça doit
cacher une histoire de femme, je ne me mêle pas de ces affaires-là" :start 666 :end 749) (sentence :text "Ah
bien! nous allons avoir de l’agrément si Swann s’affuble des petits
Verdurin" :start 750 :end 830) (sentence :text "»" :start 204 :end 205)
 ))