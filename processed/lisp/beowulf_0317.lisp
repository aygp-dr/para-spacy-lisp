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
 :text "Parfois dans le ciel de l’après-midi passait la lune blanche comme une
nuée, furtive, sans éclat, comme une actrice dont ce n’est pas l’heure
de jouer et qui, de la salle, en toilette de ville, regarde un moment
ses camarades, s’effaçant, ne voulant pas qu’on fasse attention à
elle. J’aimais à retrouver son image dans des tableaux et dans des
livres, mais ces œuvres d’art étaient bien différentes--du moins
pendant les premières années, avant que Bloch eût accoutumé mes yeux
et ma pensée à des harmonies plus subtiles--de celles où la lune me
paraîtrait belle aujourd’hui et où je ne l’eusse pas reconnue alors.
C’était, par exemple, quelque roman de Saintine, un paysage de Gleyre
où elle découpe nettement sur le ciel une faucille d’argent, de ces
œuvres naïvement incomplètes comme étaient mes propres impressions et
que les sœurs de ma grand’mère s’indignaient de me voir aimer. Elles
pensaient qu’on doit mettre devant les enfants, et qu’ils font preuve
de goût en aimant d’abord, les œuvres que, parvenu à la maturité, on
admire définitivement. C’est sans doute qu’elles se figuraient les
mérites esthétiques comme des objets matériels qu’un œil ouvert ne
peut faire autrement que de percevoir, sans avoir eu besoin d’en mûrir
lentement des équivalents dans son propre cœur."
 :tokens 210
 :processed-at "2025-03-16T02:18:14.121722"
 :entities (list
  (entity :text "Parfois" :label "ORG" :start 0 :end 7) (entity :text "Bloch" :label "ORG" :start 450 :end 455) (entity :text "Saintine," :label "ORG" :start 655 :end 664) (entity :text "Gleyre" :label "ORG" :start 679 :end 685) (entity :text "Elles" :label "ORG" :start 887 :end 892)
 )
 :sentences (list
  (sentence :text "Parfois dans le ciel de l’après-midi passait la lune blanche comme une
nuée, furtive, sans éclat, comme une actrice dont ce n’est pas l’heure
de jouer et qui, de la salle, en toilette de ville, regarde un moment
ses camarades, s’effaçant, ne voulant pas qu’on fasse attention à
elle" :start 0 :end 282) (sentence :text "J’aimais à retrouver son image dans des tableaux et dans des
livres, mais ces œuvres d’art étaient bien différentes--du moins
pendant les premières années, avant que Bloch eût accoutumé mes yeux
et ma pensée à des harmonies plus subtiles--de celles où la lune me
paraîtrait belle aujourd’hui et où je ne l’eusse pas reconnue alors" :start 283 :end 614) (sentence :text "C’était, par exemple, quelque roman de Saintine, un paysage de Gleyre
où elle découpe nettement sur le ciel une faucille d’argent, de ces
œuvres naïvement incomplètes comme étaient mes propres impressions et
que les sœurs de ma grand’mère s’indignaient de me voir aimer" :start 615 :end 885) (sentence :text "Elles
pensaient qu’on doit mettre devant les enfants, et qu’ils font preuve
de goût en aimant d’abord, les œuvres que, parvenu à la maturité, on
admire définitivement" :start 886 :end 1053) (sentence :text "C’est sans doute qu’elles se figuraient les
mérites esthétiques comme des objets matériels qu’un œil ouvert ne
peut faire autrement que de percevoir, sans avoir eu besoin d’en mûrir
lentement des équivalents dans son propre cœur" :start 1054 :end 1283)
 ))