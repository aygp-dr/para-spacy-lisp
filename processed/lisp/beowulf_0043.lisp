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
 :text "On ne pouvait pas remercier mon père; on l’eût agacé par ce qu’il
appelait des sensibleries. Je restai sans oser faire un mouvement; il
était encore devant nous, grand, dans sa robe de nuit blanche sous le
cachemire de l’Inde violet et rose qu’il nouait autour de sa tête
depuis qu’il avait des névralgies, avec le geste d’Abraham dans la
gravure d’après Benozzo Gozzoli que m’avait donnée M. Swann, disant à
Sarah qu’elle a à se départir du côté d’Isaac. Il y a bien des années
de cela. La muraille de l’escalier, où je vis monter le reflet de sa
bougie n’existe plus depuis longtemps. En moi aussi bien des choses
ont été détruites que je croyais devoir durer toujours et de nouvelles
se sont édifiées donnant naissance à des peines et à des joies
nouvelles que je n’aurais pu prévoir alors, de même que les anciennes
me sont devenues difficiles à comprendre. Il y a bien longtemps aussi
que mon père a cessé de pouvoir dire à maman: «Va avec le petit.» La
possibilité de telles heures ne renaîtra jamais pour moi. Mais depuis
peu de temps, je recommence à très bien percevoir si je prête
l’oreille, les sanglots que j’eus la force de contenir devant mon père
et qui n’éclatèrent que quand je me retrouvai seul avec maman. En
réalité ils n’ont jamais cessé; et c’est seulement parce que la vie se
tait maintenant davantage autour de moi que je les entends de nouveau,
comme ces cloches de couvents que couvrent si bien les bruits de la
ville pendant le jour qu’on les croirait arrêtées mais qui se
remettent à sonner dans le silence du soir."
 :tokens 278
 :processed-at "2025-03-16T02:18:13.826947"
 :entities (list
  (entity :text "Benozzo" :label "ORG" :start 355 :end 362) (entity :text "Gozzoli" :label "ORG" :start 363 :end 370) (entity :text "Swann," :label "ORG" :start 393 :end 399) (entity :text "Sarah" :label "ORG" :start 409 :end 414) (entity :text "Mais" :label "ORG" :start 1017 :end 1021)
 )
 :sentences (list
  (sentence :text "On ne pouvait pas remercier mon père; on l’eût agacé par ce qu’il
appelait des sensibleries" :start 0 :end 91) (sentence :text "Je restai sans oser faire un mouvement; il
était encore devant nous, grand, dans sa robe de nuit blanche sous le
cachemire de l’Inde violet et rose qu’il nouait autour de sa tête
depuis qu’il avait des névralgies, avec le geste d’Abraham dans la
gravure d’après Benozzo Gozzoli que m’avait donnée M" :start 92 :end 391) (sentence :text "Swann, disant à
Sarah qu’elle a à se départir du côté d’Isaac" :start 392 :end 454) (sentence :text "Il y a bien des années
de cela" :start 455 :end 486) (sentence :text "La muraille de l’escalier, où je vis monter le reflet de sa
bougie n’existe plus depuis longtemps" :start 487 :end 585) (sentence :text "En moi aussi bien des choses
ont été détruites que je croyais devoir durer toujours et de nouvelles
se sont édifiées donnant naissance à des peines et à des joies
nouvelles que je n’aurais pu prévoir alors, de même que les anciennes
me sont devenues difficiles à comprendre" :start 586 :end 860) (sentence :text "Il y a bien longtemps aussi
que mon père a cessé de pouvoir dire à maman: «Va avec le petit" :start 861 :end 953) (sentence :text "» La
possibilité de telles heures ne renaîtra jamais pour moi" :start 954 :end 1015) (sentence :text "Mais depuis
peu de temps, je recommence à très bien percevoir si je prête
l’oreille, les sanglots que j’eus la force de contenir devant mon père
et qui n’éclatèrent que quand je me retrouvai seul avec maman" :start 1016 :end 1223) (sentence :text "En
réalité ils n’ont jamais cessé; et c’est seulement parce que la vie se
tait maintenant davantage autour de moi que je les entends de nouveau,
comme ces cloches de couvents que couvrent si bien les bruits de la
ville pendant le jour qu’on les croirait arrêtées mais qui se
remettent à sonner dans le silence du soir" :start 1224 :end 1542)
 ))