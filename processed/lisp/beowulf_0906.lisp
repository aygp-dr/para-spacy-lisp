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
 :text "Mais le concert recommença et Swann comprit qu’il ne pourrait pas s’en
aller avant la fin de ce nouveau numéro du programme. Il souffrait de
rester enfermé au milieu de ces gens dont la bêtise et les ridicules
le frappaient d’autant plus douloureusement qu’ignorant son amour,
incapables, s’ils l’avaient connu, de s’y intéresser et de faire autre
chose que d’en sourire comme d’un enfantillage ou de le déplorer comme
une folie, ils le lui faisaient apparaître sous l’aspect d’un état
subjectif qui n’existait que pour lui, dont rien d’extérieur ne lui
affirmait la réalité; il souffrait surtout, et au point que même le
son des instruments lui donnait envie de crier, de prolonger son exil
dans ce lieu où Odette ne viendrait jamais, où personne, où rien ne la
connaissait, d’où elle était entièrement absente."
 :tokens 135
 :processed-at "2025-03-16T02:18:14.743039"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 30 :end 35) (entity :text "Odette" :label "ORG" :start 708 :end 714)
 )
 :sentences (list
  (sentence :text "Mais le concert recommença et Swann comprit qu’il ne pourrait pas s’en
aller avant la fin de ce nouveau numéro du programme" :start 0 :end 123) (sentence :text "Il souffrait de
rester enfermé au milieu de ces gens dont la bêtise et les ridicules
le frappaient d’autant plus douloureusement qu’ignorant son amour,
incapables, s’ils l’avaient connu, de s’y intéresser et de faire autre
chose que d’en sourire comme d’un enfantillage ou de le déplorer comme
une folie, ils le lui faisaient apparaître sous l’aspect d’un état
subjectif qui n’existait que pour lui, dont rien d’extérieur ne lui
affirmait la réalité; il souffrait surtout, et au point que même le
son des instruments lui donnait envie de crier, de prolonger son exil
dans ce lieu où Odette ne viendrait jamais, où personne, où rien ne la
connaissait, d’où elle était entièrement absente" :start 124 :end 811)
 ))