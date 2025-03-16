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
 :text "Mais, par les intimités déjà anciennes qu’il avait parmi eux, les gens
du monde, dans une certaine mesure, faisaient aussi partie de sa
maison, de son domestique et de sa famille. Il se sentait, à
considérer ses brillantes amitiés, le même appui hors de lui-même, le
même confort, qu’à regarder les belles terres, la belle argenterie, le
beau linge de table, qui lui venaient des siens. Et la pensée que s’il
tombait chez lui frappé d’une attaque ce serait tout naturellement le
duc de Chartres, le prince de Reuss, le duc de Luxembourg et le baron
de Charlus, que son valet de chambre courrait chercher, lui apportait
la même consolation qu’à notre vieille Françoise de savoir qu’elle
serait ensevelie dans des draps fins à elle, marqués, non reprisés (ou
si finement que cela ne donnait qu’une plus haute idée du soin de
l’ouvrière), linceul de l’image fréquente duquel elle tirait une
certaine satisfaction, sinon de bien-être, au moins d’amour-propre.
Mais surtout, comme dans toutes celles de ses actions, et de ses
pensées qui se rapportaient à Odette, Swann était constamment dominé
et dirigé par le sentiment inavoué qu’il lui était peut-être pas moins
cher, mais moins agréable à voir que quiconque, que le plus ennuyeux
fidèle des Verdurin, quand il se reportait à un monde pour qui il
était l’homme exquis par excellence, qu’on faisait tout pour attirer,
qu’on se désolait de ne pas voir, il recommençait à croire à
l’existence d’une vie plus heureuse, presque à en éprouver l’appétit,
comme il arrive à un malade alité depuis des mois, à la diète, et qui
aperçoit dans un journal le menu d’un déjeuner officiel ou l’annonce
d’une croisière en Sicile."
 :tokens 280
 :processed-at "2025-03-16T02:18:14.625855"
 :entities (list
  (entity :text "Mais," :label "ORG" :start 0 :end 5) (entity :text "Chartres," :label "ORG" :start 486 :end 495) (entity :text "Reuss," :label "ORG" :start 509 :end 515) (entity :text "Luxembourg" :label "ORG" :start 526 :end 536) (entity :text "Charlus," :label "ORG" :start 552 :end 560) (entity :text "Françoise" :label "ORG" :start 658 :end 667) (entity :text "Mais" :label "ORG" :start 956 :end 960) (entity :text "Odette," :label "ORG" :start 1051 :end 1058) (entity :text "Swann" :label "ORG" :start 1059 :end 1064) (entity :text "Verdurin," :label "ORG" :start 1241 :end 1250) (entity :text "Sicile." :label "ORG" :start 1655 :end 1662)
 )
 :sentences (list
  (sentence :text "Mais, par les intimités déjà anciennes qu’il avait parmi eux, les gens
du monde, dans une certaine mesure, faisaient aussi partie de sa
maison, de son domestique et de sa famille" :start 0 :end 178) (sentence :text "Il se sentait, à
considérer ses brillantes amitiés, le même appui hors de lui-même, le
même confort, qu’à regarder les belles terres, la belle argenterie, le
beau linge de table, qui lui venaient des siens" :start 179 :end 385) (sentence :text "Et la pensée que s’il
tombait chez lui frappé d’une attaque ce serait tout naturellement le
duc de Chartres, le prince de Reuss, le duc de Luxembourg et le baron
de Charlus, que son valet de chambre courrait chercher, lui apportait
la même consolation qu’à notre vieille Françoise de savoir qu’elle
serait ensevelie dans des draps fins à elle, marqués, non reprisés (ou
si finement que cela ne donnait qu’une plus haute idée du soin de
l’ouvrière), linceul de l’image fréquente duquel elle tirait une
certaine satisfaction, sinon de bien-être, au moins d’amour-propre" :start 386 :end 954) (sentence :text "Mais surtout, comme dans toutes celles de ses actions, et de ses
pensées qui se rapportaient à Odette, Swann était constamment dominé
et dirigé par le sentiment inavoué qu’il lui était peut-être pas moins
cher, mais moins agréable à voir que quiconque, que le plus ennuyeux
fidèle des Verdurin, quand il se reportait à un monde pour qui il
était l’homme exquis par excellence, qu’on faisait tout pour attirer,
qu’on se désolait de ne pas voir, il recommençait à croire à
l’existence d’une vie plus heureuse, presque à en éprouver l’appétit,
comme il arrive à un malade alité depuis des mois, à la diète, et qui
aperçoit dans un journal le menu d’un déjeuner officiel ou l’annonce
d’une croisière en Sicile" :start 955 :end 1661)
 ))