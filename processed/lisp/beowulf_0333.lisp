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
 :text "C’est peut-être d’une impression ressentie aussi auprès de
Montjouvain, quelques années plus tard, impression restée obscure
alors, qu’est sortie, bien après, l’idée que je me suis faite du
sadisme. On verra plus tard que, pour de tout autres raisons, le
souvenir de cette impression devait jouer un rôle important dans ma
vie. C’était par un temps très chaud; mes parents qui avaient dû
s’absenter pour toute la journée, m’avaient dit de rentrer aussi tard
que je voudrais; et étant allé jusqu’à la mare de Montjouvain où
j’aimais revoir les reflets du toit de tuile, je m’étais étendu à
l’ombre et endormi dans les buissons du talus qui domine la maison, là
où j’avais attendu mon père autrefois, un jour qu’il était allé voir
M. Vinteuil. Il faisait presque nuit quand je m’éveillai, je voulus me
lever, mais je vis Mlle Vinteuil (autant que je pus la reconnaître,
car je ne l’avais pas vue souvent à Combray, et seulement quand elle
était encore une enfant, tandis qu’elle commençait d’être une jeune
fille) qui probablement venait de rentrer, en face de moi, à quelques
centimètres de moi, dans cette chambre où son père avait reçu le mien
et dont elle avait fait son petit salon à elle. La fenêtre était
entr’ouverte, la lampe était allumée, je voyais tous ses mouvements
sans qu’elle me vît, mais en m’en allant j’aurais fait craquer les
buissons, elle m’aurait entendu et elle aurait pu croire que je
m’étais caché là pour l’épier."
 :tokens 246
 :processed-at "2025-03-16T02:18:14.147516"
 :entities (list
  (entity :text "Montjouvain," :label "ORG" :start 59 :end 71) (entity :text "Montjouvain" :label "ORG" :start 508 :end 519) (entity :text "Vinteuil." :label "ORG" :start 732 :end 741) (entity :text "Mlle" :label "ORG" :start 819 :end 823) (entity :text "Vinteuil" :label "ORG" :start 824 :end 832) (entity :text "Combray," :label "ORG" :start 904 :end 912)
 )
 :sentences (list
  (sentence :text "C’est peut-être d’une impression ressentie aussi auprès de
Montjouvain, quelques années plus tard, impression restée obscure
alors, qu’est sortie, bien après, l’idée que je me suis faite du
sadisme" :start 0 :end 197) (sentence :text "On verra plus tard que, pour de tout autres raisons, le
souvenir de cette impression devait jouer un rôle important dans ma
vie" :start 198 :end 326) (sentence :text "C’était par un temps très chaud; mes parents qui avaient dû
s’absenter pour toute la journée, m’avaient dit de rentrer aussi tard
que je voudrais; et étant allé jusqu’à la mare de Montjouvain où
j’aimais revoir les reflets du toit de tuile, je m’étais étendu à
l’ombre et endormi dans les buissons du talus qui domine la maison, là
où j’avais attendu mon père autrefois, un jour qu’il était allé voir
M" :start 327 :end 730) (sentence :text "Vinteuil" :start 731 :end 740) (sentence :text "Il faisait presque nuit quand je m’éveillai, je voulus me
lever, mais je vis Mlle Vinteuil (autant que je pus la reconnaître,
car je ne l’avais pas vue souvent à Combray, et seulement quand elle
était encore une enfant, tandis qu’elle commençait d’être une jeune
fille) qui probablement venait de rentrer, en face de moi, à quelques
centimètres de moi, dans cette chambre où son père avait reçu le mien
et dont elle avait fait son petit salon à elle" :start 741 :end 1191) (sentence :text "La fenêtre était
entr’ouverte, la lampe était allumée, je voyais tous ses mouvements
sans qu’elle me vît, mais en m’en allant j’aurais fait craquer les
buissons, elle m’aurait entendu et elle aurait pu croire que je
m’étais caché là pour l’épier" :start 1192 :end 1438)
 ))