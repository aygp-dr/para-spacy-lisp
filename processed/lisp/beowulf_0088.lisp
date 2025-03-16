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
 :text "--«Ah! à moins de ça, disait ma tante. Il faudrait qu’elle soit venue
pour les fêtes. C’est cela! Il n’y a pas besoin de chercher, elle sera
venue pour les fêtes. Mais alors nous pourrions bien voir tout à
l’heure Mme Sazerat venir sonner chez sa sœur pour le déjeuner. Ce
sera ça! J’ai vu le petit de chez Galopin qui passait avec une tarte!
Vous verrez que la tarte allait chez Mme Goupil.»"
 :tokens 74
 :processed-at "2025-03-16T02:18:13.876949"
 :entities (list
  (entity :text "--«Ah!" :label "ORG" :start 0 :end 6) (entity :text "Mais" :label "ORG" :start 163 :end 167) (entity :text "Sazerat" :label "ORG" :start 218 :end 225) (entity :text "Galopin" :label "ORG" :start 307 :end 314) (entity :text "Vous" :label "ORG" :start 343 :end 347) (entity :text "Goupil.»" :label "ORG" :start 384 :end 392)
 )
 :sentences (list
  (sentence :text "--«Ah! à moins de ça, disait ma tante" :start 0 :end 37) (sentence :text "Il faudrait qu’elle soit venue
pour les fêtes" :start 38 :end 84) (sentence :text "C’est cela! Il n’y a pas besoin de chercher, elle sera
venue pour les fêtes" :start 85 :end 161) (sentence :text "Mais alors nous pourrions bien voir tout à
l’heure Mme Sazerat venir sonner chez sa sœur pour le déjeuner" :start 162 :end 268) (sentence :text "Ce
sera ça! J’ai vu le petit de chez Galopin qui passait avec une tarte!
Vous verrez que la tarte allait chez Mme Goupil" :start 269 :end 390) (sentence :text "»" :start 391 :end 392)
 ))