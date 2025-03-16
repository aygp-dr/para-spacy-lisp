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
 :text "--Comment la princesse est venue exprès de Guermantes? Mais c’est trop!
Je ne savais pas, je suis confuse, s’écrie naïvement Mme de
Saint-Euverte qui était peu habituée au tour d’esprit de Swann. Et
examinant la coiffure de la princesse: Mais c’est vrai, cela imite...
comment dirais-je, pas les châtaignes, non, oh! c’est une idée
ravissante, mais comment la princesse pouvait-elle connaître mon
programme. Les musiciens ne me l’ont même pas communiqué à moi."
 :tokens 73
 :processed-at "2025-03-16T02:18:14.710751"
 :entities (list
  (entity :text "--Comment" :label "ORG" :start 0 :end 9) (entity :text "Guermantes?" :label "ORG" :start 43 :end 54) (entity :text "Mais" :label "ORG" :start 55 :end 59) (entity :text "Saint-Euverte" :label "ORG" :start 132 :end 145) (entity :text "Swann." :label "ORG" :start 189 :end 195) (entity :text "Mais" :label "ORG" :start 238 :end 242)
 )
 :sentences (list
  (sentence :text "--Comment la princesse est venue exprès de Guermantes? Mais c’est trop!
Je ne savais pas, je suis confuse, s’écrie naïvement Mme de
Saint-Euverte qui était peu habituée au tour d’esprit de Swann" :start 0 :end 194) (sentence :text "Et
examinant la coiffure de la princesse: Mais c’est vrai, cela imite" :start 195 :end 265) (sentence :text "comment dirais-je, pas les châtaignes, non, oh! c’est une idée
ravissante, mais comment la princesse pouvait-elle connaître mon
programme" :start 268 :end 406) (sentence :text "Les musiciens ne me l’ont même pas communiqué à moi" :start 407 :end 459)
 ))