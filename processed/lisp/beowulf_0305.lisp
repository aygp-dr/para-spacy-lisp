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
 :text "Mais j’avais beau rester devant les aubépines à respirer, à porter
devant ma pensée qui ne savait ce qu’elle devait en faire, à perdre, à
retrouver leur invisible et fixe odeur, à m’unir au rythme qui jetait
leurs fleurs, ici et là, avec une allégresse juvénile et à des
intervalles inattendus comme certains intervalles musicaux, elles
m’offraient indéfiniment le même charme avec une profusion
inépuisable, mais sans me laisser approfondir davantage, comme ces
mélodies qu’on rejoue cent fois de suite sans descendre plus avant
dans leur secret. Je me détournais d’elles un moment, pour les aborder
ensuite avec des forces plus fraîches. Je poursuivais jusque sur le
talus qui, derrière la haie, montait en pente raide vers les champs,
quelque coquelicot perdu, quelques bluets restés paresseusement en
arrière, qui le décoraient çà et là de leurs fleurs comme la bordure
d’une tapisserie où apparaît clairsemé le motif agreste qui triomphera
sur le panneau; rares encore, espacés comme les maisons isolées qui
annoncent déjà l’approche d’un village, ils m’annonçaient l’immense
étendue où déferlent les blés, où moutonnent les nuages, et la vue
d’un seul coquelicot hissant au bout de son cordage et faisant cingler
au vent sa flamme rouge, au-dessus de sa bouée graisseuse et noire, me
faisait battre le cœur, comme au voyageur qui aperçoit sur une terre
basse une première barque échouée que répare un calfat, et s’écrie,
avant de l’avoir encore vue: «La Mer!»"
 :tokens 236
 :processed-at "2025-03-16T02:18:14.107817"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Mer!»" :label "ORG" :start 1460 :end 1465)
 )
 :sentences (list
  (sentence :text "Mais j’avais beau rester devant les aubépines à respirer, à porter
devant ma pensée qui ne savait ce qu’elle devait en faire, à perdre, à
retrouver leur invisible et fixe odeur, à m’unir au rythme qui jetait
leurs fleurs, ici et là, avec une allégresse juvénile et à des
intervalles inattendus comme certains intervalles musicaux, elles
m’offraient indéfiniment le même charme avec une profusion
inépuisable, mais sans me laisser approfondir davantage, comme ces
mélodies qu’on rejoue cent fois de suite sans descendre plus avant
dans leur secret" :start 0 :end 546) (sentence :text "Je me détournais d’elles un moment, pour les aborder
ensuite avec des forces plus fraîches" :start 547 :end 638) (sentence :text "Je poursuivais jusque sur le
talus qui, derrière la haie, montait en pente raide vers les champs,
quelque coquelicot perdu, quelques bluets restés paresseusement en
arrière, qui le décoraient çà et là de leurs fleurs comme la bordure
d’une tapisserie où apparaît clairsemé le motif agreste qui triomphera
sur le panneau; rares encore, espacés comme les maisons isolées qui
annoncent déjà l’approche d’un village, ils m’annonçaient l’immense
étendue où déferlent les blés, où moutonnent les nuages, et la vue
d’un seul coquelicot hissant au bout de son cordage et faisant cingler
au vent sa flamme rouge, au-dessus de sa bouée graisseuse et noire, me
faisait battre le cœur, comme au voyageur qui aperçoit sur une terre
basse une première barque échouée que répare un calfat, et s’écrie,
avant de l’avoir encore vue: «La Mer!»" :start 639 :end 1465)
 ))