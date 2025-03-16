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
 :text "Il serait malgré tout revenu à Combray. Il n’était pas pourtant l’ami
que mes parents eussent souhaité pour moi; ils avaient fini par penser
que les larmes que lui avait fait verser l’indisposition de ma
grand’mère n’étaient pas feintes; mais ils savaient d’instinct ou par
expérience que les élans de notre sensibilité ont peu d’empire sur la
suite de nos actes et la conduite de notre vie, et que le respect des
obligations morales, la fidélité aux amis, l’exécution d’une œuvre,
l’observance d’un régime, ont un fondement plus sûr dans des habitudes
aveugles que dans ces transports momentanés, ardents et stériles. Ils
auraient préféré pour moi à Bloch des compagnons qui ne me donneraient
pas plus qu’il n’est convenu d’accorder à ses amis, selon les règles
de la morale bourgeoise; qui ne m’enverraient pas inopinément une
corbeille de fruits parce qu’ils auraient ce jour-là pensé à moi avec
tendresse, mais qui, n’étant pas capables de faire pencher en ma
faveur la juste balance des devoirs et des exigences de l’amitié sur
un simple mouvement de leur imagination et de leur sensibilité, ne la
fausseraient pas davantage à mon préjudice. Nos torts même font
difficilement départir de ce qu’elles nous doivent ces natures dont ma
grand’tante était le modèle, elle qui brouillée depuis des années avec
une nièce à qui elle ne parlait jamais, ne modifia pas pour cela le
testament où elle lui laissait toute sa fortune, parce que c’était sa
plus proche parente et que cela «se devait»."
 :tokens 249
 :processed-at "2025-03-16T02:18:13.984323"
 :entities (list
  (entity :text "Combray." :label "ORG" :start 31 :end 39) (entity :text "Bloch" :label "ORG" :start 651 :end 656)
 )
 :sentences (list
  (sentence :text "Il serait malgré tout revenu à Combray" :start 0 :end 38) (sentence :text "Il n’était pas pourtant l’ami
que mes parents eussent souhaité pour moi; ils avaient fini par penser
que les larmes que lui avait fait verser l’indisposition de ma
grand’mère n’étaient pas feintes; mais ils savaient d’instinct ou par
expérience que les élans de notre sensibilité ont peu d’empire sur la
suite de nos actes et la conduite de notre vie, et que le respect des
obligations morales, la fidélité aux amis, l’exécution d’une œuvre,
l’observance d’un régime, ont un fondement plus sûr dans des habitudes
aveugles que dans ces transports momentanés, ardents et stériles" :start 39 :end 617) (sentence :text "Ils
auraient préféré pour moi à Bloch des compagnons qui ne me donneraient
pas plus qu’il n’est convenu d’accorder à ses amis, selon les règles
de la morale bourgeoise; qui ne m’enverraient pas inopinément une
corbeille de fruits parce qu’ils auraient ce jour-là pensé à moi avec
tendresse, mais qui, n’étant pas capables de faire pencher en ma
faveur la juste balance des devoirs et des exigences de l’amitié sur
un simple mouvement de leur imagination et de leur sensibilité, ne la
fausseraient pas davantage à mon préjudice" :start 618 :end 1145) (sentence :text "Nos torts même font
difficilement départir de ce qu’elles nous doivent ces natures dont ma
grand’tante était le modèle, elle qui brouillée depuis des années avec
une nièce à qui elle ne parlait jamais, ne modifia pas pour cela le
testament où elle lui laissait toute sa fortune, parce que c’était sa
plus proche parente et que cela «se devait»" :start 1146 :end 1490)
 ))