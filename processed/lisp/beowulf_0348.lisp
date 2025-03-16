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
 :text "Mlle Vinteuil répondit par des paroles de doux reproche: «Voyons,
voyons», qui prouvaient la bonté de sa nature, non qu’elles fussent
dictées par l’indignation que cette façon de parler de son père eût pu
lui causer (évidemment c’était là un sentiment qu’elle s’était
habituée, à l’aide de quels sophismes? à faire taire en elle dans ces
minutes-là), mais parce qu’elles étaient comme un frein que pour ne
pas se montrer égoïste elle mettait elle-même au plaisir que son amie
cherchait à lui procurer. Et puis cette modération souriante en
répondant à ces blasphèmes, ce reproche hypocrite et tendre,
paraissaient peut-être à sa nature franche et bonne, une forme
particulièrement infâme, une forme doucereuse de cette scélératesse
qu’elle cherchait à s’assimiler. Mais elle ne put résister à l’attrait
du plaisir qu’elle éprouverait à être traitée avec douceur par une
personne si implacable envers un mort sans défense; elle sauta sur les
genoux de son amie, et lui tendit chastement son front à baiser comme
elle aurait pu faire si elle avait été sa fille, sentant avec délices
qu’elles allaient ainsi toutes deux au bout de la cruauté en ravissant
à M. Vinteuil, jusque dans le tombeau, sa paternité. Son amie lui prit
la tête entre ses mains et lui déposa un baiser sur le front avec
cette docilité que lui rendait facile la grande affection qu’elle
avait pour Mlle Vinteuil et le désir de mettre quelque distraction
dans la vie si triste maintenant de l’orpheline."
 :tokens 244
 :processed-at "2025-03-16T02:18:14.161358"
 :entities (list
  (entity :text "Mlle" :label "ORG" :start 0 :end 4) (entity :text "Vinteuil" :label "ORG" :start 5 :end 13) (entity :text "«Voyons," :label "ORG" :start 57 :end 65) (entity :text "Mais" :label "ORG" :start 765 :end 769) (entity :text "Vinteuil," :label "ORG" :start 1157 :end 1166) (entity :text "Mlle" :label "ORG" :start 1366 :end 1370) (entity :text "Vinteuil" :label "ORG" :start 1371 :end 1379)
 )
 :sentences (list
  (sentence :text "Mlle Vinteuil répondit par des paroles de doux reproche: «Voyons,
voyons», qui prouvaient la bonté de sa nature, non qu’elles fussent
dictées par l’indignation que cette façon de parler de son père eût pu
lui causer (évidemment c’était là un sentiment qu’elle s’était
habituée, à l’aide de quels sophismes? à faire taire en elle dans ces
minutes-là), mais parce qu’elles étaient comme un frein que pour ne
pas se montrer égoïste elle mettait elle-même au plaisir que son amie
cherchait à lui procurer" :start 0 :end 500) (sentence :text "Et puis cette modération souriante en
répondant à ces blasphèmes, ce reproche hypocrite et tendre,
paraissaient peut-être à sa nature franche et bonne, une forme
particulièrement infâme, une forme doucereuse de cette scélératesse
qu’elle cherchait à s’assimiler" :start 501 :end 763) (sentence :text "Mais elle ne put résister à l’attrait
du plaisir qu’elle éprouverait à être traitée avec douceur par une
personne si implacable envers un mort sans défense; elle sauta sur les
genoux de son amie, et lui tendit chastement son front à baiser comme
elle aurait pu faire si elle avait été sa fille, sentant avec délices
qu’elles allaient ainsi toutes deux au bout de la cruauté en ravissant
à M" :start 764 :end 1155) (sentence :text "Vinteuil, jusque dans le tombeau, sa paternité" :start 1156 :end 1203) (sentence :text "Son amie lui prit
la tête entre ses mains et lui déposa un baiser sur le front avec
cette docilité que lui rendait facile la grande affection qu’elle
avait pour Mlle Vinteuil et le désir de mettre quelque distraction
dans la vie si triste maintenant de l’orpheline" :start 1204 :end 1469)
 ))