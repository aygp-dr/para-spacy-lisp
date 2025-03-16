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
 :text "--«Ce qu’il m’amuse quand il s’emballe comme ça, s’écria, quand il eut
terminé, Mme Verdurin, ravie que la table fût justement si
intéressante le jour où M. de Forcheville venait pour la première
fois. Et toi, qu’est-ce que tu as à rester comme cela, bouche bée
comme une grande bête? dit-elle à son mari. Tu sais pourtant qu’il
parle bien; on dirait que c’est la première fois qu’il vous entend. Si
vous l’aviez vu pendant que vous parliez, il vous buvait. Et demain il
nous récitera tout ce que vous avez dit sans manger un mot.»"
 :tokens 96
 :processed-at "2025-03-16T02:18:14.439062"
 :entities (list
  (entity :text "--«Ce" :label "ORG" :start 0 :end 5) (entity :text "Verdurin," :label "ORG" :start 84 :end 93) (entity :text "Forcheville" :label "ORG" :start 160 :end 171)
 )
 :sentences (list
  (sentence :text "--«Ce qu’il m’amuse quand il s’emballe comme ça, s’écria, quand il eut
terminé, Mme Verdurin, ravie que la table fût justement si
intéressante le jour où M" :start 0 :end 155) (sentence :text "de Forcheville venait pour la première
fois" :start 156 :end 200) (sentence :text "Et toi, qu’est-ce que tu as à rester comme cela, bouche bée
comme une grande bête? dit-elle à son mari" :start 201 :end 304) (sentence :text "Tu sais pourtant qu’il
parle bien; on dirait que c’est la première fois qu’il vous entend" :start 305 :end 395) (sentence :text "Si
vous l’aviez vu pendant que vous parliez, il vous buvait" :start 396 :end 456) (sentence :text "Et demain il
nous récitera tout ce que vous avez dit sans manger un mot" :start 457 :end 529) (sentence :text "»" :start 530 :end 531)
 ))