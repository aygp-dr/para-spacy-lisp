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
 :text "Dans l’échancrure de son corsage de crêpe Mlle Vinteuil sentit que son
amie piquait un baiser, elle poussa un petit cri, s’échappa, et elles
se poursuivirent en sautant, faisant voleter leurs larges manches
comme des ailes et gloussant et piaillant comme des oiseaux amoureux.
Puis Mlle Vinteuil finit par tomber sur le canapé, recouverte par le
corps de son amie. Mais celle-ci tournait le dos à la petite table sur
laquelle était placé le portrait de l’ancien professeur de piano. Mlle
Vinteuil comprit que son amie ne le verrait pas si elle n’attirait pas
sur lui son attention, et elle lui dit, comme si elle venait seulement
de le remarquer:"
 :tokens 110
 :processed-at "2025-03-16T02:18:14.157977"
 :entities (list
  (entity :text "Dans" :label "ORG" :start 0 :end 4) (entity :text "Mlle" :label "ORG" :start 42 :end 46) (entity :text "Vinteuil" :label "ORG" :start 47 :end 55) (entity :text "Puis" :label "ORG" :start 277 :end 281) (entity :text "Mlle" :label "ORG" :start 282 :end 286) (entity :text "Vinteuil" :label "ORG" :start 287 :end 295) (entity :text "Mais" :label "ORG" :start 365 :end 369) (entity :text "Mlle" :label "ORG" :start 483 :end 487) (entity :text "Vinteuil" :label "ORG" :start 488 :end 496)
 )
 :sentences (list
  (sentence :text "Dans l’échancrure de son corsage de crêpe Mlle Vinteuil sentit que son
amie piquait un baiser, elle poussa un petit cri, s’échappa, et elles
se poursuivirent en sautant, faisant voleter leurs larges manches
comme des ailes et gloussant et piaillant comme des oiseaux amoureux" :start 0 :end 275) (sentence :text "Puis Mlle Vinteuil finit par tomber sur le canapé, recouverte par le
corps de son amie" :start 276 :end 363) (sentence :text "Mais celle-ci tournait le dos à la petite table sur
laquelle était placé le portrait de l’ancien professeur de piano" :start 364 :end 481) (sentence :text "Mlle
Vinteuil comprit que son amie ne le verrait pas si elle n’attirait pas
sur lui son attention, et elle lui dit, comme si elle venait seulement
de le remarquer:" :start 482 :end 646)
 ))