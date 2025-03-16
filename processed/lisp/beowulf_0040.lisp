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
 :text "Je savais que le cas dans lequel je me mettais était de tous celui qui
pouvait avoir pour moi, de la part de mes parents, les conséquences
les plus graves, bien plus graves en vérité qu’un étranger n’aurait pu
le supposer, de celles qu’il aurait cru que pouvaient produire seules
des fautes vraiment honteuses. Mais dans l’éducation qu’on me donnait,
l’ordre des fautes n’était pas le même que dans l’éducation des autres
enfants et on m’avait habitué à placer avant toutes les autres (parce
que sans doute il n’y en avait pas contre lesquelles j’eusse besoin
d’être plus soigneusement gardé) celles dont je comprends maintenant
que leur caractère commun est qu’on y tombe en cédant à une impulsion
nerveuse. Mais alors on ne prononçait pas ce mot, on ne déclarait pas
cette origine qui aurait pu me faire croire que j’étais excusable d’y
succomber ou même peut-être incapable d’y résister. Mais je les
reconnaissais bien à l’angoisse qui les précédait comme à la rigueur
du châtiment qui les suivait; et je savais que celle que je venais de
commettre était de la même famille que d’autres pour lesquelles
j’avais été sévèrement puni, quoique infiniment plus grave. Quand
j’irais me mettre sur le chemin de ma mère au moment où elle monterait
se coucher, et qu’elle verrait que j’étais resté levé pour lui redire
bonsoir dans le couloir, on ne me laisserait plus rester à la maison,
on me mettrait au collège le lendemain, c’était certain. Eh bien!
dusse-je me jeter par la fenêtre cinq minutes après, j’aimais encore
mieux cela. Ce que je voulais maintenant c’était maman, c’était lui
dire bonsoir, j’étais allé trop loin dans la voie qui menait à la
réalisation de ce désir pour pouvoir rebrousser chemin."
 :tokens 290
 :processed-at "2025-03-16T02:18:13.821814"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 311 :end 315) (entity :text "Mais" :label "ORG" :start 709 :end 713) (entity :text "Mais" :label "ORG" :start 891 :end 895) (entity :text "Quand" :label "ORG" :start 1166 :end 1171)
 )
 :sentences (list
  (sentence :text "Je savais que le cas dans lequel je me mettais était de tous celui qui
pouvait avoir pour moi, de la part de mes parents, les conséquences
les plus graves, bien plus graves en vérité qu’un étranger n’aurait pu
le supposer, de celles qu’il aurait cru que pouvaient produire seules
des fautes vraiment honteuses" :start 0 :end 309) (sentence :text "Mais dans l’éducation qu’on me donnait,
l’ordre des fautes n’était pas le même que dans l’éducation des autres
enfants et on m’avait habitué à placer avant toutes les autres (parce
que sans doute il n’y en avait pas contre lesquelles j’eusse besoin
d’être plus soigneusement gardé) celles dont je comprends maintenant
que leur caractère commun est qu’on y tombe en cédant à une impulsion
nerveuse" :start 310 :end 707) (sentence :text "Mais alors on ne prononçait pas ce mot, on ne déclarait pas
cette origine qui aurait pu me faire croire que j’étais excusable d’y
succomber ou même peut-être incapable d’y résister" :start 708 :end 889) (sentence :text "Mais je les
reconnaissais bien à l’angoisse qui les précédait comme à la rigueur
du châtiment qui les suivait; et je savais que celle que je venais de
commettre était de la même famille que d’autres pour lesquelles
j’avais été sévèrement puni, quoique infiniment plus grave" :start 890 :end 1164) (sentence :text "Quand
j’irais me mettre sur le chemin de ma mère au moment où elle monterait
se coucher, et qu’elle verrait que j’étais resté levé pour lui redire
bonsoir dans le couloir, on ne me laisserait plus rester à la maison,
on me mettrait au collège le lendemain, c’était certain" :start 1165 :end 1438) (sentence :text "Eh bien!
dusse-je me jeter par la fenêtre cinq minutes après, j’aimais encore
mieux cela" :start 1439 :end 1528) (sentence :text "Ce que je voulais maintenant c’était maman, c’était lui
dire bonsoir, j’étais allé trop loin dans la voie qui menait à la
réalisation de ce désir pour pouvoir rebrousser chemin" :start 1529 :end 1706)
 ))