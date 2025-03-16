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
 :text "C’est ainsi que, pendant longtemps, quand, réveillé la nuit, je me
ressouvenais de Combray, je n’en revis jamais que cette sorte de pan
lumineux, découpé au milieu d’indistinctes ténèbres, pareil à ceux que
l’embrasement d’un feu de Bengale ou quelque projection électrique
éclairent et sectionnent dans un édifice dont les autres parties
restent plongées dans la nuit: à la base assez large, le petit salon,
la salle à manger, l’amorce de l’allée obscure par où arriverait M.
Swann, l’auteur inconscient de mes tristesses, le vestibule où je
m’acheminais vers la première marche de l’escalier, si cruel à monter,
qui constituait à lui seul le tronc fort étroit de cette pyramide
irrégulière; et, au faîte, ma chambre à coucher avec le petit couloir
à porte vitrée pour l’entrée de maman; en un mot, toujours vu à la
même heure, isolé de tout ce qu’il pouvait y avoir autour, se
détachant seul sur l’obscurité, le décor strictement nécessaire (comme
celui qu’on voit indiqué en tête des vieilles pièces pour les
représentations en province), au drame de mon déshabillage; comme si
Combray n’avait consisté qu’en deux étages reliés par un mince
escalier, et comme s’il n’y avait jamais été que sept heures du soir.
A vrai dire, j’aurais pu répondre à qui m’eût interrogé que Combray
comprenait encore autre chose et existait à d’autres heures. Mais
comme ce que je m’en serais rappelé m’eût été fourni seulement par la
mémoire volontaire, la mémoire de l’intelligence, et comme les
renseignements qu’elle donne sur le passé ne conservent rien de lui,
je n’aurais jamais eu envie de songer à ce reste de Combray. Tout cela
était en réalité mort pour moi."
 :tokens 276
 :processed-at "2025-03-16T02:18:13.839111"
 :entities (list
  (entity :text "Combray," :label "ORG" :start 83 :end 91) (entity :text "Bengale" :label "ORG" :start 233 :end 240) (entity :text "Swann," :label "ORG" :start 477 :end 483) (entity :text "Combray" :label "ORG" :start 1081 :end 1088) (entity :text "Combray" :label "ORG" :start 1274 :end 1281) (entity :text "Mais" :label "ORG" :start 1343 :end 1347) (entity :text "Combray." :label "ORG" :start 1602 :end 1610) (entity :text "Tout" :label "ORG" :start 1611 :end 1615)
 )
 :sentences (list
  (sentence :text "C’est ainsi que, pendant longtemps, quand, réveillé la nuit, je me
ressouvenais de Combray, je n’en revis jamais que cette sorte de pan
lumineux, découpé au milieu d’indistinctes ténèbres, pareil à ceux que
l’embrasement d’un feu de Bengale ou quelque projection électrique
éclairent et sectionnent dans un édifice dont les autres parties
restent plongées dans la nuit: à la base assez large, le petit salon,
la salle à manger, l’amorce de l’allée obscure par où arriverait M" :start 0 :end 475) (sentence :text "Swann, l’auteur inconscient de mes tristesses, le vestibule où je
m’acheminais vers la première marche de l’escalier, si cruel à monter,
qui constituait à lui seul le tronc fort étroit de cette pyramide
irrégulière; et, au faîte, ma chambre à coucher avec le petit couloir
à porte vitrée pour l’entrée de maman; en un mot, toujours vu à la
même heure, isolé de tout ce qu’il pouvait y avoir autour, se
détachant seul sur l’obscurité, le décor strictement nécessaire (comme
celui qu’on voit indiqué en tête des vieilles pièces pour les
représentations en province), au drame de mon déshabillage; comme si
Combray n’avait consisté qu’en deux étages reliés par un mince
escalier, et comme s’il n’y avait jamais été que sept heures du soir" :start 476 :end 1212) (sentence :text "A vrai dire, j’aurais pu répondre à qui m’eût interrogé que Combray
comprenait encore autre chose et existait à d’autres heures" :start 1213 :end 1341) (sentence :text "Mais
comme ce que je m’en serais rappelé m’eût été fourni seulement par la
mémoire volontaire, la mémoire de l’intelligence, et comme les
renseignements qu’elle donne sur le passé ne conservent rien de lui,
je n’aurais jamais eu envie de songer à ce reste de Combray" :start 1342 :end 1609) (sentence :text "Tout cela
était en réalité mort pour moi" :start 1610 :end 1651)
 ))