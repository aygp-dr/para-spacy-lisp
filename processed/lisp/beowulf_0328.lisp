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
 :text "Si alors Françoise remplie comme un poète d’un flot de pensées
confuses sur le chagrin, sur les souvenirs de famille, s’excusait de
ne pas savoir répondre à mes théories et disait: «Je ne sais pas
m’esprimer», je triomphais de cet aveu avec un bon sens ironique et
brutal digne du docteur Percepied; et si elle ajoutait: «Elle était
tout de même de la parentèse, il reste toujours le respect qu’on doit
à la parentèse», je haussais les épaules et je me disais: «Je suis
bien bon de discuter avec une illettrée qui fait des cuirs pareils»,
adoptant ainsi pour juger Françoise le point de vue mesquin d’hommes
dont ceux qui les méprisent le plus dans l’impartialité de la
méditation, sont fort capables de tenir le rôle quand ils jouent une
des scènes vulgaires de la vie."
 :tokens 136
 :processed-at "2025-03-16T02:18:14.140444"
 :entities (list
  (entity :text "Françoise" :label "ORG" :start 9 :end 18) (entity :text "Percepied;" :label "ORG" :start 289 :end 299) (entity :text "«Elle" :label "ORG" :start 321 :end 326) (entity :text "Françoise" :label "ORG" :start 565 :end 574)
 )
 :sentences (list
  (sentence :text "Si alors Françoise remplie comme un poète d’un flot de pensées
confuses sur le chagrin, sur les souvenirs de famille, s’excusait de
ne pas savoir répondre à mes théories et disait: «Je ne sais pas
m’esprimer», je triomphais de cet aveu avec un bon sens ironique et
brutal digne du docteur Percepied; et si elle ajoutait: «Elle était
tout de même de la parentèse, il reste toujours le respect qu’on doit
à la parentèse», je haussais les épaules et je me disais: «Je suis
bien bon de discuter avec une illettrée qui fait des cuirs pareils»,
adoptant ainsi pour juger Françoise le point de vue mesquin d’hommes
dont ceux qui les méprisent le plus dans l’impartialité de la
méditation, sont fort capables de tenir le rôle quand ils jouent une
des scènes vulgaires de la vie" :start 0 :end 769)
 ))