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
 :text "Puis renaissait le souvenir d’une nouvelle attitude; le mur filait
dans une autre direction: j’étais dans ma chambre chez Mme de
Saint-Loup, à la campagne; mon Dieu! Il est au moins dix heures, on
doit avoir fini de dîner! J’aurai trop prolongé la sieste que je fais
tous les soirs en rentrant de ma promenade avec Mme de Saint-Loup,
avant d’endosser mon habit. Car bien des années ont passé depuis
Combray, où, dans nos retours les plus tardifs, c’était les reflets
rouges du couchant que je voyais sur le vitrage de ma fenêtre. C’est
un autre genre de vie qu’on mène à Tansonville, chez Mme de
Saint-Loup, un autre genre de plaisir que je trouve à ne sortir qu’à
la nuit, à suivre au clair de lune ces chemins où je jouais jadis au
soleil; et la chambre où je me serai endormi au lieu de m’habiller
pour le dîner, de loin je l’aperçois, quand nous rentrons, traversée
par les feux de la lampe, seul phare dans la nuit."
 :tokens 169
 :processed-at "2025-03-16T02:18:13.784874"
 :entities (list
  (entity :text "Puis" :label "ORG" :start 0 :end 4) (entity :text "Saint-Loup," :label "ORG" :start 129 :end 140) (entity :text "Dieu!" :label "ORG" :start 160 :end 165) (entity :text "Saint-Loup," :label "ORG" :start 322 :end 333) (entity :text "Combray," :label "ORG" :start 399 :end 407) (entity :text "Tansonville," :label "ORG" :start 571 :end 583) (entity :text "Saint-Loup," :label "ORG" :start 596 :end 607)
 )
 :sentences (list
  (sentence :text "Puis renaissait le souvenir d’une nouvelle attitude; le mur filait
dans une autre direction: j’étais dans ma chambre chez Mme de
Saint-Loup, à la campagne; mon Dieu! Il est au moins dix heures, on
doit avoir fini de dîner! J’aurai trop prolongé la sieste que je fais
tous les soirs en rentrant de ma promenade avec Mme de Saint-Loup,
avant d’endosser mon habit" :start 0 :end 360) (sentence :text "Car bien des années ont passé depuis
Combray, où, dans nos retours les plus tardifs, c’était les reflets
rouges du couchant que je voyais sur le vitrage de ma fenêtre" :start 361 :end 528) (sentence :text "C’est
un autre genre de vie qu’on mène à Tansonville, chez Mme de
Saint-Loup, un autre genre de plaisir que je trouve à ne sortir qu’à
la nuit, à suivre au clair de lune ces chemins où je jouais jadis au
soleil; et la chambre où je me serai endormi au lieu de m’habiller
pour le dîner, de loin je l’aperçois, quand nous rentrons, traversée
par les feux de la lampe, seul phare dans la nuit" :start 529 :end 919)
 ))