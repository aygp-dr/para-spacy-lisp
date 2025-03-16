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
 :text "Arrivera-t-il jusqu’à la surface de ma claire conscience, ce souvenir,
l’instant ancien que l’attraction d’un instant identique est venue de
si loin solliciter, émouvoir, soulever tout au fond de moi? Je ne
sais. Maintenant je ne sens plus rien, il est arrêté, redescendu
peut-être; qui sait s’il remontera jamais de sa nuit? Dix fois il me
faut recommencer, me pencher vers lui. Et chaque fois la lâcheté qui
nous détourne de toute tâche difficile, de toute œuvre important, m’a
conseillé de laisser cela, de boire mon thé en pensant simplement à
mes ennuis d’aujourd’hui, à mes désirs de demain qui se laissent
remâcher sans peine."
 :tokens 105
 :processed-at "2025-03-16T02:18:13.847942"
 :entities (list
  (entity :text "Maintenant" :label "ORG" :start 213 :end 223)
 )
 :sentences (list
  (sentence :text "Arrivera-t-il jusqu’à la surface de ma claire conscience, ce souvenir,
l’instant ancien que l’attraction d’un instant identique est venue de
si loin solliciter, émouvoir, soulever tout au fond de moi? Je ne
sais" :start 0 :end 211) (sentence :text "Maintenant je ne sens plus rien, il est arrêté, redescendu
peut-être; qui sait s’il remontera jamais de sa nuit? Dix fois il me
faut recommencer, me pencher vers lui" :start 212 :end 378) (sentence :text "Et chaque fois la lâcheté qui
nous détourne de toute tâche difficile, de toute œuvre important, m’a
conseillé de laisser cela, de boire mon thé en pensant simplement à
mes ennuis d’aujourd’hui, à mes désirs de demain qui se laissent
remâcher sans peine" :start 379 :end 632)
 ))