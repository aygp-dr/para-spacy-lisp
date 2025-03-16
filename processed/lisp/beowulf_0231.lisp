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
 :text "En réalité, les visites du curé ne faisaient pas à ma tante un aussi
grand plaisir que le supposait Françoise et l’air de jubilation dont
celle-ci croyait devoir pavoiser son visage chaque fois qu’elle avait
à l’annoncer ne répondait pas entièrement au sentiment de la malade.
Le curé (excellent homme avec qui je regrette de ne pas avoir causé
davantage, car s’il n’entendait rien aux arts, il connaissait beaucoup
d’étymologies), habitué à donner aux visiteurs de marque des
renseignements sur l’église (il avait même l’intention d’écrire un
livre sur la paroisse de Combray), la fatiguait par des explications
infinies et d’ailleurs toujours les mêmes. Mais quand elle arrivait
ainsi juste en même temps que celle d’Eulalie, sa visite devenait
franchement désagréable à ma tante. Elle eût mieux aimé bien profiter
d’Eulalie et ne pas avoir tout le monde à la fois. Mais elle n’osait
pas ne pas recevoir le curé et faisait seulement signe à Eulalie de ne
pas s’en aller en même temps que lui, qu’elle la garderait un peu
seule quand il serait parti."
 :tokens 176
 :processed-at "2025-03-16T02:18:14.025140"
 :entities (list
  (entity :text "Françoise" :label "ORG" :start 100 :end 109) (entity :text "Combray)," :label "ORG" :start 569 :end 578) (entity :text "Mais" :label "ORG" :start 656 :end 660) (entity :text "Elle" :label "ORG" :start 783 :end 787) (entity :text "Mais" :label "ORG" :start 868 :end 872) (entity :text "Eulalie" :label "ORG" :start 943 :end 950)
 )
 :sentences (list
  (sentence :text "En réalité, les visites du curé ne faisaient pas à ma tante un aussi
grand plaisir que le supposait Françoise et l’air de jubilation dont
celle-ci croyait devoir pavoiser son visage chaque fois qu’elle avait
à l’annoncer ne répondait pas entièrement au sentiment de la malade" :start 0 :end 275) (sentence :text "Le curé (excellent homme avec qui je regrette de ne pas avoir causé
davantage, car s’il n’entendait rien aux arts, il connaissait beaucoup
d’étymologies), habitué à donner aux visiteurs de marque des
renseignements sur l’église (il avait même l’intention d’écrire un
livre sur la paroisse de Combray), la fatiguait par des explications
infinies et d’ailleurs toujours les mêmes" :start 276 :end 654) (sentence :text "Mais quand elle arrivait
ainsi juste en même temps que celle d’Eulalie, sa visite devenait
franchement désagréable à ma tante" :start 655 :end 781) (sentence :text "Elle eût mieux aimé bien profiter
d’Eulalie et ne pas avoir tout le monde à la fois" :start 782 :end 866) (sentence :text "Mais elle n’osait
pas ne pas recevoir le curé et faisait seulement signe à Eulalie de ne
pas s’en aller en même temps que lui, qu’elle la garderait un peu
seule quand il serait parti" :start 867 :end 1050)
 ))