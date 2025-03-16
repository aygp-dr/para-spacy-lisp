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
 :text "Un instant (tandis que nous nous éloignions et que mon grand-père
murmurait: «Ce pauvre Swann, quel rôle ils lui font jouer: on le fait
partir pour qu’elle reste seule avec son Charlus, car c’est lui, je
l’ai reconnu! Et cette petite, mêlée à toute cette infamie!»)
l’impression laissée en moi par le ton despotique avec lequel la mère
de Gilberte lui avait parlé sans qu’elle répliquât, en me la montrant
comme forcée d’obéir à quelqu’un, comme n’étant pas supérieure à tout,
calma un peu ma souffrance, me rendit quelque espoir et diminua mon
amour. Mais bien vite cet amour s’éleva de nouveau en moi comme une
réaction par quoi mon cœur humilié voulait se mettre de niveau avec
Gilberte ou l’abaisser jusqu’à lui. Je l’aimais, je regrettais de ne
pas avoir eu le temps et l’inspiration de l’offenser, de lui faire
mal, et de la forcer à se souvenir de moi. Je la trouvais si belle que
j’aurais voulu pouvoir revenir sur mes pas, pour lui crier en haussant
les épaules: «Comme je vous trouve laide, grotesque, comme vous me
répugnez!» Cependant je m’éloignais, emportant pour toujours, comme
premier type d’un bonheur inaccessible aux enfants de mon espèce de
par des lois naturelles impossibles à transgresser, l’image d’une
petite fille rousse, à la peau semée de taches roses, qui tenait une
bêche et qui riait en laissant filer sur moi de longs regards sournois
et inexpressifs. Et déjà le charme dont son nom avait encensé cette
place sous les épines roses où il avait été entendu ensemble par elle
et par moi, allait gagner, enduire, embaumer, tout ce qui
l’approchait, ses grands-parents que les miens avaient eu l’ineffable
bonheur de connaître, la sublime profession d’agent de change, le
douloureux quartier des Champs-Élysées qu’elle habitait à Paris."
 :tokens 296
 :processed-at "2025-03-16T02:18:14.114457"
 :entities (list
  (entity :text "Swann," :label "ORG" :start 88 :end 94) (entity :text "Charlus," :label "ORG" :start 177 :end 185) (entity :text "Gilberte" :label "ORG" :start 339 :end 347) (entity :text "Mais" :label "ORG" :start 552 :end 556) (entity :text "Gilberte" :label "ORG" :start 681 :end 689) (entity :text "«Comme" :label "ORG" :start 972 :end 978) (entity :text "Cependant" :label "ORG" :start 1037 :end 1046) (entity :text "Champs-Élysées" :label "ORG" :start 1724 :end 1738) (entity :text "Paris." :label "ORG" :start 1758 :end 1764)
 )
 :sentences (list
  (sentence :text "Un instant (tandis que nous nous éloignions et que mon grand-père
murmurait: «Ce pauvre Swann, quel rôle ils lui font jouer: on le fait
partir pour qu’elle reste seule avec son Charlus, car c’est lui, je
l’ai reconnu! Et cette petite, mêlée à toute cette infamie!»)
l’impression laissée en moi par le ton despotique avec lequel la mère
de Gilberte lui avait parlé sans qu’elle répliquât, en me la montrant
comme forcée d’obéir à quelqu’un, comme n’étant pas supérieure à tout,
calma un peu ma souffrance, me rendit quelque espoir et diminua mon
amour" :start 0 :end 550) (sentence :text "Mais bien vite cet amour s’éleva de nouveau en moi comme une
réaction par quoi mon cœur humilié voulait se mettre de niveau avec
Gilberte ou l’abaisser jusqu’à lui" :start 551 :end 715) (sentence :text "Je l’aimais, je regrettais de ne
pas avoir eu le temps et l’inspiration de l’offenser, de lui faire
mal, et de la forcer à se souvenir de moi" :start 716 :end 858) (sentence :text "Je la trouvais si belle que
j’aurais voulu pouvoir revenir sur mes pas, pour lui crier en haussant
les épaules: «Comme je vous trouve laide, grotesque, comme vous me
répugnez!» Cependant je m’éloignais, emportant pour toujours, comme
premier type d’un bonheur inaccessible aux enfants de mon espèce de
par des lois naturelles impossibles à transgresser, l’image d’une
petite fille rousse, à la peau semée de taches roses, qui tenait une
bêche et qui riait en laissant filer sur moi de longs regards sournois
et inexpressifs" :start 859 :end 1383) (sentence :text "Et déjà le charme dont son nom avait encensé cette
place sous les épines roses où il avait été entendu ensemble par elle
et par moi, allait gagner, enduire, embaumer, tout ce qui
l’approchait, ses grands-parents que les miens avaient eu l’ineffable
bonheur de connaître, la sublime profession d’agent de change, le
douloureux quartier des Champs-Élysées qu’elle habitait à Paris" :start 1384 :end 1763)
 ))