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
 :text "Il est vrai qu’un jour Forcheville avait demandé à être ramené en même
temps, mais comme, arrivé devant la porte d’Odette il avait sollicité
la permission d’entrer aussi, Odette lui avait répondu en montrant
Swann: «Ah! cela dépend de ce monsieur-là, demandez-lui. Enfin, entrez
un moment si vous voulez, mais pas longtemps parce que je vous
préviens qu’il aime causer tranquillement avec moi, et qu’il n’aime
pas beaucoup qu’il y ait des visites quand il vient. Ah! si vous
connaissiez cet être-là autant que je le connais; n’est-ce pas, my
love, il n’y a que moi qui vous connaisse bien?»"
 :tokens 100
 :processed-at "2025-03-16T02:18:14.594596"
 :entities (list
  (entity :text "Forcheville" :label "ORG" :start 23 :end 34) (entity :text "Odette" :label "ORG" :start 115 :end 121) (entity :text "Swann:" :label "ORG" :start 208 :end 214) (entity :text "«Ah!" :label "ORG" :start 215 :end 219) (entity :text "Enfin," :label "ORG" :start 265 :end 271)
 )
 :sentences (list
  (sentence :text "Il est vrai qu’un jour Forcheville avait demandé à être ramené en même
temps, mais comme, arrivé devant la porte d’Odette il avait sollicité
la permission d’entrer aussi, Odette lui avait répondu en montrant
Swann: «Ah! cela dépend de ce monsieur-là, demandez-lui" :start 0 :end 263) (sentence :text "Enfin, entrez
un moment si vous voulez, mais pas longtemps parce que je vous
préviens qu’il aime causer tranquillement avec moi, et qu’il n’aime
pas beaucoup qu’il y ait des visites quand il vient" :start 264 :end 461) (sentence :text "Ah! si vous
connaissiez cet être-là autant que je le connais; n’est-ce pas, my
love, il n’y a que moi qui vous connaisse bien?»" :start 462 :end 590)
 ))