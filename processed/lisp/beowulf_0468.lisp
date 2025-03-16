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
 :text "--«Tiens, c’est amusant, je n’avais jamais fait attention; je vous
dirai que je n’aime pas beaucoup chercher la petite bête et m’égarer
dans des pointes d’aiguille; on ne perd pas son temps à couper les
cheveux en quatre ici, ce n’est pas le genre de la maison», répondit
Mme Verdurin, que le docteur Cottard regardait avec une admiration
béate et un zèle studieux se jouer au milieu de ce flot d’expressions
toutes faites. D’ailleurs lui et Mme Cottard avec une sorte de bon
sens comme en ont aussi certaines gens du peuple se gardaient bien de
donner une opinion ou de feindre l’admiration pour une musique qu’ils
s’avouaient l’un à l’autre, une fois rentrés chez eux, ne pas plus
comprendre que la peinture de «M. Biche». Comme le public ne connaît
du charme, de la grâce, des formes de la nature que ce qu’il en a
puisé dans les poncifs d’un art lentement assimilé, et qu’un artiste
original commence par rejeter ces poncifs, M. et Mme Cottard, image en
cela du public, ne trouvaient ni dans la sonate de Vinteuil, ni dans
les portraits du peintre, ce qui faisait pour eux l’harmonie de la
musique et la beauté de la peinture. Il leur semblait quand le
pianiste jouait la sonate qu’il accrochait au hasard sur le piano des
notes que ne reliaient pas en effet les formes auxquelles ils étaient
habitués, et que le peintre jetait au hasard des couleurs sur ses
toiles. Quand, dans celles-ci, ils pouvaient reconnaître une forme,
ils la trouvaient alourdie et vulgarisée (c’est-à-dire dépourvue de
l’élégance de l’école de peinture à travers laquelle ils voyaient dans
la rue même, les êtres vivants), et sans vérité, comme si M. Biche
n’eût pas su comment était construite une épaule et que les femmes
n’ont pas les cheveux mauves."
 :tokens 301
 :processed-at "2025-03-16T02:18:14.288401"
 :entities (list
  (entity :text "--«Tiens," :label "ORG" :start 0 :end 9) (entity :text "Verdurin," :label "ORG" :start 276 :end 285) (entity :text "Cottard" :label "ORG" :start 301 :end 308) (entity :text "Cottard" :label "ORG" :start 446 :end 453) (entity :text "Biche»." :label "ORG" :start 717 :end 724) (entity :text "Comme" :label "ORG" :start 725 :end 730) (entity :text "Cottard," :label "ORG" :start 940 :end 948) (entity :text "Vinteuil," :label "ORG" :start 1009 :end 1018) (entity :text "Quand," :label "ORG" :start 1371 :end 1377) (entity :text "Biche" :label "ORG" :start 1631 :end 1636)
 )
 :sentences (list
  (sentence :text "--«Tiens, c’est amusant, je n’avais jamais fait attention; je vous
dirai que je n’aime pas beaucoup chercher la petite bête et m’égarer
dans des pointes d’aiguille; on ne perd pas son temps à couper les
cheveux en quatre ici, ce n’est pas le genre de la maison», répondit
Mme Verdurin, que le docteur Cottard regardait avec une admiration
béate et un zèle studieux se jouer au milieu de ce flot d’expressions
toutes faites" :start 0 :end 422) (sentence :text "D’ailleurs lui et Mme Cottard avec une sorte de bon
sens comme en ont aussi certaines gens du peuple se gardaient bien de
donner une opinion ou de feindre l’admiration pour une musique qu’ils
s’avouaient l’un à l’autre, une fois rentrés chez eux, ne pas plus
comprendre que la peinture de «M" :start 423 :end 715) (sentence :text "Biche»" :start 716 :end 723) (sentence :text "Comme le public ne connaît
du charme, de la grâce, des formes de la nature que ce qu’il en a
puisé dans les poncifs d’un art lentement assimilé, et qu’un artiste
original commence par rejeter ces poncifs, M" :start 724 :end 931) (sentence :text "et Mme Cottard, image en
cela du public, ne trouvaient ni dans la sonate de Vinteuil, ni dans
les portraits du peintre, ce qui faisait pour eux l’harmonie de la
musique et la beauté de la peinture" :start 932 :end 1129) (sentence :text "Il leur semblait quand le
pianiste jouait la sonate qu’il accrochait au hasard sur le piano des
notes que ne reliaient pas en effet les formes auxquelles ils étaient
habitués, et que le peintre jetait au hasard des couleurs sur ses
toiles" :start 1130 :end 1369) (sentence :text "Quand, dans celles-ci, ils pouvaient reconnaître une forme,
ils la trouvaient alourdie et vulgarisée (c’est-à-dire dépourvue de
l’élégance de l’école de peinture à travers laquelle ils voyaient dans
la rue même, les êtres vivants), et sans vérité, comme si M" :start 1370 :end 1629) (sentence :text "Biche
n’eût pas su comment était construite une épaule et que les femmes
n’ont pas les cheveux mauves" :start 1630 :end 1732)
 ))