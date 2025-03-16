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
 :text "Et tandis que Mme Verdurin disait à son mari: «Allons, donne-lui de
l’orangeade, il l’a bien méritée», Swann racontait à Odette comment il
avait été amoureux de cette petite phrase. Quand Mme Verdurin, ayant
dit d’un peu loin: «Eh bien! il me semble qu’on est en train de vous
dire de belles choses, Odette», elle répondit: «Oui, de très belles»
et Swann trouva délicieuse sa simplicité. Cependant il demandait des
renseignements sur Vinteuil, sur son œuvre, sur l’époque de sa vie où
il avait composé cette sonate, sur ce qu’avait pu signifier pour lui
la petite phrase, c’est cela surtout qu’il aurait voulu savoir."
 :tokens 104
 :processed-at "2025-03-16T02:18:14.285384"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 18 :end 26) (entity :text "«Allons," :label "ORG" :start 46 :end 54) (entity :text "Swann" :label "ORG" :start 103 :end 108) (entity :text "Odette" :label "ORG" :start 121 :end 127) (entity :text "Quand" :label "ORG" :start 182 :end 187) (entity :text "Verdurin," :label "ORG" :start 192 :end 201) (entity :text "Odette»," :label "ORG" :start 300 :end 308) (entity :text "«Oui," :label "ORG" :start 324 :end 329) (entity :text "Swann" :label "ORG" :start 349 :end 354) (entity :text "Cependant" :label "ORG" :start 388 :end 397) (entity :text "Vinteuil," :label "ORG" :start 434 :end 443)
 )
 :sentences (list
  (sentence :text "Et tandis que Mme Verdurin disait à son mari: «Allons, donne-lui de
l’orangeade, il l’a bien méritée», Swann racontait à Odette comment il
avait été amoureux de cette petite phrase" :start 0 :end 180) (sentence :text "Quand Mme Verdurin, ayant
dit d’un peu loin: «Eh bien! il me semble qu’on est en train de vous
dire de belles choses, Odette», elle répondit: «Oui, de très belles»
et Swann trouva délicieuse sa simplicité" :start 181 :end 386) (sentence :text "Cependant il demandait des
renseignements sur Vinteuil, sur son œuvre, sur l’époque de sa vie où
il avait composé cette sonate, sur ce qu’avait pu signifier pour lui
la petite phrase, c’est cela surtout qu’il aurait voulu savoir" :start 387 :end 616)
 ))