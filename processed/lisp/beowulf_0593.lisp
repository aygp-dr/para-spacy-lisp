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
 :text "--Oh! vous savez ce qu’il y a surtout, dit modestement Mme Verdurin,
c’est qu’ils se sentent en confiance. Ils parlent de ce qu’ils
veulent, et la conversation rejaillit en fusées. Ainsi Brichot, ce
soir, ce n’est rien: je l’ai vu, vous savez, chez moi, éblouissant, à
se mettre à genoux devant; eh bien! chez les autres, ce n’est plus le
même homme, il n’a plus d’esprit, il faut lui arracher les mots, il
est même ennuyeux."
 :tokens 76
 :processed-at "2025-03-16T02:18:14.425041"
 :entities (list
  (entity :text "--Oh!" :label "ORG" :start 0 :end 5) (entity :text "Verdurin," :label "ORG" :start 59 :end 68) (entity :text "Brichot," :label "ORG" :start 187 :end 195)
 )
 :sentences (list
  (sentence :text "--Oh! vous savez ce qu’il y a surtout, dit modestement Mme Verdurin,
c’est qu’ils se sentent en confiance" :start 0 :end 105) (sentence :text "Ils parlent de ce qu’ils
veulent, et la conversation rejaillit en fusées" :start 106 :end 179) (sentence :text "Ainsi Brichot, ce
soir, ce n’est rien: je l’ai vu, vous savez, chez moi, éblouissant, à
se mettre à genoux devant; eh bien! chez les autres, ce n’est plus le
même homme, il n’a plus d’esprit, il faut lui arracher les mots, il
est même ennuyeux" :start 180 :end 424)
 ))