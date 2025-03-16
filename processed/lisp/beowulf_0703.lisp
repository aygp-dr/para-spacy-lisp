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
 :text "Elle le pria d’éteindre la lumière avant de s’en aller, il referma
lui-même les rideaux du lit et partit. Mais quand il fut rentré chez
lui, l’idée lui vint brusquement que peut-être Odette attendait
quelqu’un ce soir, qu’elle avait seulement simulé la fatigue et
qu’elle ne lui avait demandé d’éteindre que pour qu’il crût qu’elle
allait s’endormir, qu’aussitôt qu’il avait été parti, elle l’avait
rallumée, et fait rentrer celui qui devait passer la nuit auprès
d’elle. Il regarda l’heure. Il y avait à peu près une heure et demie
qu’il l’avait quittée, il ressortit, prit un fiacre et se fit arrêter
tout près de chez elle, dans une petite rue perpendiculaire à celle
sur laquelle donnait derrière son hôtel et où il allait quelquefois
frapper à la fenêtre de sa chambre à coucher pour qu’elle vînt lui
ouvrir; il descendit de voiture, tout était désert et noir dans ce
quartier, il n’eut que quelques pas à faire à pied et déboucha presque
devant chez elle. Parmi l’obscurité de toutes les fenêtres éteintes
depuis longtemps dans la rue, il en vit une seule d’où
débordait,--entre les volets qui en pressaient la pulpe mystérieuse et
dorée,--la lumière qui remplissait la chambre et qui, tant d’autres
soirs, du plus loin qu’il l’apercevait, en arrivant dans la rue le
réjouissait et lui annonçait: «elle est là qui t’attend» et qui
maintenant, le torturait en lui disant: «elle est là avec celui
qu’elle attendait». Il voulait savoir qui; il se glissa le long du mur
jusqu’à la fenêtre, mais entre les lames obliques des volets il ne
pouvait rien voir; il entendait seulement dans le silence de la nuit
le murmure d’une conversation. Certes, il souffrait de voir cette
lumière dans l’atmosphère d’or de laquelle se mouvait derrière le
châssis le couple invisible et détesté, d’entendre ce murmure qui
révélait la présence de celui qui était venu après son départ, la
fausseté d’Odette, le bonheur qu’elle était en train de goûter avec
lui."
 :tokens 328
 :processed-at "2025-03-16T02:18:14.527571"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Mais" :label "ORG" :start 106 :end 110) (entity :text "Odette" :label "ORG" :start 183 :end 189) (entity :text "Parmi" :label "ORG" :start 962 :end 967) (entity :text "Certes," :label "ORG" :start 1639 :end 1646)
 )
 :sentences (list
  (sentence :text "Elle le pria d’éteindre la lumière avant de s’en aller, il referma
lui-même les rideaux du lit et partit" :start 0 :end 104) (sentence :text "Mais quand il fut rentré chez
lui, l’idée lui vint brusquement que peut-être Odette attendait
quelqu’un ce soir, qu’elle avait seulement simulé la fatigue et
qu’elle ne lui avait demandé d’éteindre que pour qu’il crût qu’elle
allait s’endormir, qu’aussitôt qu’il avait été parti, elle l’avait
rallumée, et fait rentrer celui qui devait passer la nuit auprès
d’elle" :start 105 :end 470) (sentence :text "Il regarda l’heure" :start 471 :end 490) (sentence :text "Il y avait à peu près une heure et demie
qu’il l’avait quittée, il ressortit, prit un fiacre et se fit arrêter
tout près de chez elle, dans une petite rue perpendiculaire à celle
sur laquelle donnait derrière son hôtel et où il allait quelquefois
frapper à la fenêtre de sa chambre à coucher pour qu’elle vînt lui
ouvrir; il descendit de voiture, tout était désert et noir dans ce
quartier, il n’eut que quelques pas à faire à pied et déboucha presque
devant chez elle" :start 491 :end 960) (sentence :text "Parmi l’obscurité de toutes les fenêtres éteintes
depuis longtemps dans la rue, il en vit une seule d’où
débordait,--entre les volets qui en pressaient la pulpe mystérieuse et
dorée,--la lumière qui remplissait la chambre et qui, tant d’autres
soirs, du plus loin qu’il l’apercevait, en arrivant dans la rue le
réjouissait et lui annonçait: «elle est là qui t’attend» et qui
maintenant, le torturait en lui disant: «elle est là avec celui
qu’elle attendait»" :start 961 :end 1419) (sentence :text "Il voulait savoir qui; il se glissa le long du mur
jusqu’à la fenêtre, mais entre les lames obliques des volets il ne
pouvait rien voir; il entendait seulement dans le silence de la nuit
le murmure d’une conversation" :start 1420 :end 1637) (sentence :text "Certes, il souffrait de voir cette
lumière dans l’atmosphère d’or de laquelle se mouvait derrière le
châssis le couple invisible et détesté, d’entendre ce murmure qui
révélait la présence de celui qui était venu après son départ, la
fausseté d’Odette, le bonheur qu’elle était en train de goûter avec
lui" :start 1638 :end 1943)
 ))