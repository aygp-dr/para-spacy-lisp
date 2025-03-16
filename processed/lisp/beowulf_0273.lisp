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
 :text "Mais dès que je l’eus appelée et qu’elle fut revenue près du lit de la
Charité de Giotto, ses larmes cessèrent aussitôt de couler; elle ne
put reconnaître ni cette agréable sensation de pitié et
d’attendrissement qu’elle connaissait bien et que la lecture des
journaux lui avait souvent donnée, ni aucun plaisir de même famille,
dans l’ennui et dans l’irritation de s’être levée au milieu de la nuit
pour la fille de cuisine; et à la vue des mêmes souffrances dont la
description l’avait fait pleurer, elle n’eut plus que des
ronchonnements de mauvaise humeur, même d’affreux sarcasmes, disant,
quand elle crut que nous étions partis et ne pouvions plus l’entendre:
«Elle n’avait qu’à ne pas faire ce qu’il faut pour ça! ça lui a fait
plaisir! qu’elle ne fasse pas de manières maintenant. Faut-il tout de
même qu’un garçon ait été abandonné du bon Dieu pour aller avec ça.
Ah! c’est bien comme on disait dans le patois de ma pauvre mère:"
 :tokens 163
 :processed-at "2025-03-16T02:18:14.072766"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Charité" :label "ORG" :start 71 :end 78) (entity :text "Giotto," :label "ORG" :start 82 :end 89) (entity :text "«Elle" :label "ORG" :start 666 :end 671) (entity :text "Dieu" :label "ORG" :start 848 :end 852)
 )
 :sentences (list
  (sentence :text "Mais dès que je l’eus appelée et qu’elle fut revenue près du lit de la
Charité de Giotto, ses larmes cessèrent aussitôt de couler; elle ne
put reconnaître ni cette agréable sensation de pitié et
d’attendrissement qu’elle connaissait bien et que la lecture des
journaux lui avait souvent donnée, ni aucun plaisir de même famille,
dans l’ennui et dans l’irritation de s’être levée au milieu de la nuit
pour la fille de cuisine; et à la vue des mêmes souffrances dont la
description l’avait fait pleurer, elle n’eut plus que des
ronchonnements de mauvaise humeur, même d’affreux sarcasmes, disant,
quand elle crut que nous étions partis et ne pouvions plus l’entendre:
«Elle n’avait qu’à ne pas faire ce qu’il faut pour ça! ça lui a fait
plaisir! qu’elle ne fasse pas de manières maintenant" :start 0 :end 787) (sentence :text "Faut-il tout de
même qu’un garçon ait été abandonné du bon Dieu pour aller avec ça" :start 788 :end 871) (sentence :text "Ah! c’est bien comme on disait dans le patois de ma pauvre mère:" :start 872 :end 937)
 ))