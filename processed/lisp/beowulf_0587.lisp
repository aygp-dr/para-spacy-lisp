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
 :text "--Qu’est-ce que vous dites d’un savant comme cela? avait-elle demandé à
Forcheville. Il n’y a pas moyen de causer sérieusement deux minutes
avec lui. Est-ce que vous leur en dites comme cela, à votre hôpital?
avait-elle ajouté en se tournant vers le docteur, ça ne doit pas être
ennuyeux tous les jours, alors. Je vois qu’il va falloir que je
demande à m’y faire admettre."
 :tokens 65
 :processed-at "2025-03-16T02:18:14.419879"
 :entities (list
  (entity :text "Forcheville." :label "ORG" :start 72 :end 84)
 )
 :sentences (list
  (sentence :text "--Qu’est-ce que vous dites d’un savant comme cela? avait-elle demandé à
Forcheville" :start 0 :end 83) (sentence :text "Il n’y a pas moyen de causer sérieusement deux minutes
avec lui" :start 84 :end 148) (sentence :text "Est-ce que vous leur en dites comme cela, à votre hôpital?
avait-elle ajouté en se tournant vers le docteur, ça ne doit pas être
ennuyeux tous les jours, alors" :start 149 :end 309) (sentence :text "Je vois qu’il va falloir que je
demande à m’y faire admettre" :start 310 :end 371)
 ))