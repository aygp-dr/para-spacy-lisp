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
 :text "Mais quand elle était partie pour Dreux ou pour Pierrefonds,--hélas,
sans lui permettre d’y aller, comme par hasard, de son côté, car «cela
ferait un effet déplorable», disait-elle,--il se plongeait dans le plus
enivrant des romans d’amour, l’indicateur des chemins de fer, qui lui
apprenait les moyens de la rejoindre, l’après-midi, le soir, ce matin
même! Le moyen? presque davantage: l’autorisation. Car enfin
l’indicateur et les trains eux-mêmes n’étaient pas faits pour des
chiens. Si on faisait savoir au public, par voie d’imprimés, qu’à huit
heures du matin partait un train qui arrivait à Pierrefonds à dix
heures, c’est donc qu’aller à Pierrefonds était un acte licite, pour
lequel la permission d’Odette était superflue; et c’était aussi un
acte qui pouvait avoir un tout autre motif que le désir de rencontrer
Odette, puisque des gens qui ne la connaissaient pas l’accomplissaient
chaque jour, en assez grand nombre pour que cela valût la peine de
faire chauffer des locomotives."
 :tokens 158
 :processed-at "2025-03-16T02:18:14.585892"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Dreux" :label "ORG" :start 34 :end 39) (entity :text "Pierrefonds" :label "ORG" :start 48 :end 59) (entity :text "Pierrefonds" :label "ORG" :start 598 :end 609) (entity :text "Odette," :label "ORG" :start 822 :end 829)
 )
 :sentences (list
  (sentence :text "Mais quand elle était partie pour Dreux ou pour Pierrefonds,--hélas,
sans lui permettre d’y aller, comme par hasard, de son côté, car «cela
ferait un effet déplorable», disait-elle,--il se plongeait dans le plus
enivrant des romans d’amour, l’indicateur des chemins de fer, qui lui
apprenait les moyens de la rejoindre, l’après-midi, le soir, ce matin
même! Le moyen? presque davantage: l’autorisation" :start 0 :end 401) (sentence :text "Car enfin
l’indicateur et les trains eux-mêmes n’étaient pas faits pour des
chiens" :start 402 :end 485) (sentence :text "Si on faisait savoir au public, par voie d’imprimés, qu’à huit
heures du matin partait un train qui arrivait à Pierrefonds à dix
heures, c’est donc qu’aller à Pierrefonds était un acte licite, pour
lequel la permission d’Odette était superflue; et c’était aussi un
acte qui pouvait avoir un tout autre motif que le désir de rencontrer
Odette, puisque des gens qui ne la connaissaient pas l’accomplissaient
chaque jour, en assez grand nombre pour que cela valût la peine de
faire chauffer des locomotives" :start 486 :end 990)
 ))