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
 :text "Mais il n’entrait jamais chez elle. Deux fois seulement, dans
l’après-midi, il était allé participer à cette opération capitale pour
elle «prendre le thé». L’isolement et le vide de ces courtes rues
(faites presque toutes de petits hôtels contigus, dont tout à coup
venait rompre la monotonie quelque sinistre échoppe, témoignage
historique et reste sordide du temps où ces quartiers étaient encore
mal famés), la neige qui était restée dans le jardin et aux arbres, le
négligé de la saison, le voisinage de la nature, donnaient quelque
chose de plus mystérieux à la chaleur, aux fleurs qu’il avait trouvées
en entrant."
 :tokens 101
 :processed-at "2025-03-16T02:18:14.333743"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Deux" :label "ORG" :start 36 :end 40)
 )
 :sentences (list
  (sentence :text "Mais il n’entrait jamais chez elle" :start 0 :end 34) (sentence :text "Deux fois seulement, dans
l’après-midi, il était allé participer à cette opération capitale pour
elle «prendre le thé»" :start 35 :end 154) (sentence :text "L’isolement et le vide de ces courtes rues
(faites presque toutes de petits hôtels contigus, dont tout à coup
venait rompre la monotonie quelque sinistre échoppe, témoignage
historique et reste sordide du temps où ces quartiers étaient encore
mal famés), la neige qui était restée dans le jardin et aux arbres, le
négligé de la saison, le voisinage de la nature, donnaient quelque
chose de plus mystérieux à la chaleur, aux fleurs qu’il avait trouvées
en entrant" :start 155 :end 618)
 ))