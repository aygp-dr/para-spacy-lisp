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
 :text "--«J’aimerais mieux l’avoir dans mon lit que le tonnerre», dit
précipitamment Cottard qui depuis quelques instants attendait en vain
que Forcheville reprît haleine pour placer cette vieille plaisanterie
dont il craignait que ne revînt pas l’à-propos si la conversation
changeait de cours, et qu’il débita avec cet excès de spontanéité et
d’assurance qui cherche à masquer la froideur et l’émoi inséparables
d’une récitation. Forcheville la connaissait, il la comprit et s’en
amusa. Quant à M. Verdurin, il ne marchanda pas sa gaieté, car il
avait trouvé depuis peu pour la signifier un symbole autre que celui
dont usait sa femme, mais aussi simple et aussi clair. A peine
avait-il commencé à faire le mouvement de tête et d’épaules de
quelqu’un qui s’esclaffe qu’aussitôt il se mettait à tousser comme
si, en riant trop fort, il avait avalé la fumée de sa pipe. Et la
gardant toujours au coin de sa bouche, il prolongeait indéfiniment le
simulacre de suffocation et d’hilarité. Ainsi lui et Mme Verdurin, qui
en face, écoutant le peintre qui lui racontait une histoire, fermait
les yeux avant de précipiter son visage dans ses mains, avaient l’air
de deux masques de théâtre qui figuraient différemment la gaieté."
 :tokens 199
 :processed-at "2025-03-16T02:18:14.475072"
 :entities (list
  (entity :text "Cottard" :label "ORG" :start 78 :end 85) (entity :text "Forcheville" :label "ORG" :start 137 :end 148) (entity :text "Forcheville" :label "ORG" :start 425 :end 436) (entity :text "Quant" :label "ORG" :start 482 :end 487) (entity :text "Verdurin," :label "ORG" :start 493 :end 502) (entity :text "Verdurin," :label "ORG" :start 996 :end 1005)
 )
 :sentences (list
  (sentence :text "--«J’aimerais mieux l’avoir dans mon lit que le tonnerre», dit
précipitamment Cottard qui depuis quelques instants attendait en vain
que Forcheville reprît haleine pour placer cette vieille plaisanterie
dont il craignait que ne revînt pas l’à-propos si la conversation
changeait de cours, et qu’il débita avec cet excès de spontanéité et
d’assurance qui cherche à masquer la froideur et l’émoi inséparables
d’une récitation" :start 0 :end 423) (sentence :text "Forcheville la connaissait, il la comprit et s’en
amusa" :start 424 :end 480) (sentence :text "Quant à M" :start 481 :end 491) (sentence :text "Verdurin, il ne marchanda pas sa gaieté, car il
avait trouvé depuis peu pour la signifier un symbole autre que celui
dont usait sa femme, mais aussi simple et aussi clair" :start 492 :end 663) (sentence :text "A peine
avait-il commencé à faire le mouvement de tête et d’épaules de
quelqu’un qui s’esclaffe qu’aussitôt il se mettait à tousser comme
si, en riant trop fort, il avait avalé la fumée de sa pipe" :start 664 :end 861) (sentence :text "Et la
gardant toujours au coin de sa bouche, il prolongeait indéfiniment le
simulacre de suffocation et d’hilarité" :start 862 :end 977) (sentence :text "Ainsi lui et Mme Verdurin, qui
en face, écoutant le peintre qui lui racontait une histoire, fermait
les yeux avant de précipiter son visage dans ses mains, avaient l’air
de deux masques de théâtre qui figuraient différemment la gaieté" :start 978 :end 1213)
 ))