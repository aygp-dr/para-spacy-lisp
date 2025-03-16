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
 :text "--Mais je suis pleine de respect pour les héros, dit la princesse, sur
un ton légèrement ironique: si je ne vais pas avec Basin chez cette
princesse d’Iéna, ce n’est pas du tout pour ça, c’est tout simplement
parce que je ne les connais pas. Basin les connaît, les chérit. Oh!
non, ce n’est pas ce que vous pouvez penser, ce n’est pas un flirt, je
n’ai pas à m’y opposer! Du reste, pour ce que cela sert quand je veux
m’y opposer! ajouta-t-elle d’une voix mélancolique, car tout le monde
savait que dès le lendemain du jour où le prince des Laumes avait
épousé sa ravissante cousine, il n’avait pas cessé de la tromper. Mais
enfin ce n’est pas le cas, ce sont des gens qu’il a connus autrefois,
il en fait ses choux gras, je trouve cela très bien. D’abord je vous
dirai que rien que ce qu’il m’a dit de leur maison... Pensez que tous
leurs meubles sont «Empire!»"
 :tokens 162
 :processed-at "2025-03-16T02:18:14.698464"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Basin" :label "ORG" :start 122 :end 127) (entity :text "Basin" :label "ORG" :start 242 :end 247) (entity :text "Laumes" :label "ORG" :start 541 :end 547) (entity :text "Mais" :label "ORG" :start 620 :end 624) (entity :text "Pensez" :label "ORG" :start 818 :end 824) (entity :text "«Empire!»" :label "ORG" :start 853 :end 862)
 )
 :sentences (list
  (sentence :text "--Mais je suis pleine de respect pour les héros, dit la princesse, sur
un ton légèrement ironique: si je ne vais pas avec Basin chez cette
princesse d’Iéna, ce n’est pas du tout pour ça, c’est tout simplement
parce que je ne les connais pas" :start 0 :end 240) (sentence :text "Basin les connaît, les chérit" :start 241 :end 271) (sentence :text "Oh!
non, ce n’est pas ce que vous pouvez penser, ce n’est pas un flirt, je
n’ai pas à m’y opposer! Du reste, pour ce que cela sert quand je veux
m’y opposer! ajouta-t-elle d’une voix mélancolique, car tout le monde
savait que dès le lendemain du jour où le prince des Laumes avait
épousé sa ravissante cousine, il n’avait pas cessé de la tromper" :start 272 :end 618) (sentence :text "Mais
enfin ce n’est pas le cas, ce sont des gens qu’il a connus autrefois,
il en fait ses choux gras, je trouve cela très bien" :start 619 :end 746) (sentence :text "D’abord je vous
dirai que rien que ce qu’il m’a dit de leur maison" :start 747 :end 814) (sentence :text "Pensez que tous
leurs meubles sont «Empire!»" :start 817 :end 862)
 ))