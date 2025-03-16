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
 :text "Elle s’attendait si peu à le voir qu’elle eut un mouvement d’effroi.
Quant à lui, il avait couru Paris non parce qu’il croyait possible de
la rejoindre, mais parce qu’il lui était trop cruel d’y renoncer. Mais
cette joie que sa raison n’avait cessé d’estimer, pour ce soir,
irréalisable, ne lui en paraissait maintenant que plus réelle; car, il
n’y avait pas collaboré par la prévision des vraisemblances, elle lui
restait extérieure; il n’avait pas besoin de tirer de son esprit pour
la lui fournir,--c’est d’elle-même qu’émanait, c’est elle-même qui
projetait vers lui--cette vérité qui rayonnait au point de dissiper
comme un songe l’isolement qu’il avait redouté, et sur laquelle il
appuyait, il reposait, sans penser, sa rêverie heureuse. Ainsi un
voyageur arrivé par un beau temps au bord de la Méditerranée,
incertain de l’existence des pays qu’il vient de quitter, laisse
éblouir sa vue, plutôt qu’il ne leur jette des regards, par les rayons
qu’émet vers lui l’azur lumineux et résistant des eaux."
 :tokens 164
 :processed-at "2025-03-16T02:18:14.370931"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Quant" :label "ORG" :start 69 :end 74) (entity :text "Paris" :label "ORG" :start 97 :end 102) (entity :text "Mais" :label "ORG" :start 205 :end 209) (entity :text "Méditerranée," :label "ORG" :start 801 :end 814)
 )
 :sentences (list
  (sentence :text "Elle s’attendait si peu à le voir qu’elle eut un mouvement d’effroi" :start 0 :end 67) (sentence :text "Quant à lui, il avait couru Paris non parce qu’il croyait possible de
la rejoindre, mais parce qu’il lui était trop cruel d’y renoncer" :start 68 :end 203) (sentence :text "Mais
cette joie que sa raison n’avait cessé d’estimer, pour ce soir,
irréalisable, ne lui en paraissait maintenant que plus réelle; car, il
n’y avait pas collaboré par la prévision des vraisemblances, elle lui
restait extérieure; il n’avait pas besoin de tirer de son esprit pour
la lui fournir,--c’est d’elle-même qu’émanait, c’est elle-même qui
projetait vers lui--cette vérité qui rayonnait au point de dissiper
comme un songe l’isolement qu’il avait redouté, et sur laquelle il
appuyait, il reposait, sans penser, sa rêverie heureuse" :start 204 :end 742) (sentence :text "Ainsi un
voyageur arrivé par un beau temps au bord de la Méditerranée,
incertain de l’existence des pays qu’il vient de quitter, laisse
éblouir sa vue, plutôt qu’il ne leur jette des regards, par les rayons
qu’émet vers lui l’azur lumineux et résistant des eaux" :start 743 :end 1005)
 ))