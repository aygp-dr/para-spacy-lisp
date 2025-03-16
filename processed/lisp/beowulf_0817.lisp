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
 :text "L’un d’eux, d’aspect particulièrement féroce et assez semblable à
l’exécuteur dans certains tableaux de la Renaissance qui figurent des
supplices, s’avança vers lui d’un air implacable pour lui prendre ses
affaires. Mais la dureté de son regard d’acier était compensée par la
douceur de ses gants de fil, si bien qu’en approchant de Swann il
semblait témoigner du mépris pour sa personne et des égards pour son
chapeau. Il le prit avec un soin auquel l’exactitude de sa pointure
donnait quelque chose de méticuleux et une délicatesse que rendait
presque touchante l’appareil de sa force. Puis il le passa à un de ses
aides, nouveau, et timide, qui exprimait l’effroi qu’il ressentait en
roulant en tous sens des regards furieux et montrait l’agitation d’une
bête captive dans les premières heures de sa domesticité."
 :tokens 133
 :processed-at "2025-03-16T02:18:14.654152"
 :entities (list
  (entity :text "Renaissance" :label "ORG" :start 107 :end 118) (entity :text "Mais" :label "ORG" :start 216 :end 220) (entity :text "Swann" :label "ORG" :start 333 :end 338) (entity :text "Puis" :label "ORG" :start 588 :end 592)
 )
 :sentences (list
  (sentence :text "L’un d’eux, d’aspect particulièrement féroce et assez semblable à
l’exécuteur dans certains tableaux de la Renaissance qui figurent des
supplices, s’avança vers lui d’un air implacable pour lui prendre ses
affaires" :start 0 :end 214) (sentence :text "Mais la dureté de son regard d’acier était compensée par la
douceur de ses gants de fil, si bien qu’en approchant de Swann il
semblait témoigner du mépris pour sa personne et des égards pour son
chapeau" :start 215 :end 418) (sentence :text "Il le prit avec un soin auquel l’exactitude de sa pointure
donnait quelque chose de méticuleux et une délicatesse que rendait
presque touchante l’appareil de sa force" :start 419 :end 586) (sentence :text "Puis il le passa à un de ses
aides, nouveau, et timide, qui exprimait l’effroi qu’il ressentait en
roulant en tous sens des regards furieux et montrait l’agitation d’une
bête captive dans les premières heures de sa domesticité" :start 587 :end 814)
 ))