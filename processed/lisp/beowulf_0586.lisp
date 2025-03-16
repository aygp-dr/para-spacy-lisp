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
 :text "Dès le commencement du repas, comme M. de Forcheville, placé à la
droite de Mme Verdurin qui avait fait pour le «nouveau» de grands
frais de toilette, lui disait: «C’est original, cette robe blanche»,
le docteur qui n’avait cessé de l’observer, tant il était curieux de
savoir comment était fait ce qu’il appelait un «de», et qui cherchait
une occasion d’attirer son attention et d’entrer plus en contact avec
lui, saisit au vol le mot «blanche» et, sans lever le nez de son
assiette, dit: «blanche? Blanche de Castille?», puis sans bouger la
tête lança furtivement de droite et de gauche des regards incertains
et souriants. Tandis que Swann, par l’effort douloureux et vain qu’il
fit pour sourire, témoigna qu’il jugeait ce calembour stupide,
Forcheville avait montré à la fois qu’il en goûtait la finesse et
qu’il savait vivre, en contenant dans de justes limites une gaieté
dont la franchise avait charmé Mme Verdurin."
 :tokens 154
 :processed-at "2025-03-16T02:18:14.418936"
 :entities (list
  (entity :text "Forcheville," :label "ORG" :start 42 :end 54) (entity :text "Verdurin" :label "ORG" :start 80 :end 88) (entity :text "Blanche" :label "ORG" :start 500 :end 507) (entity :text "Castille?»," :label "ORG" :start 511 :end 522) (entity :text "Tandis" :label "ORG" :start 626 :end 632) (entity :text "Swann," :label "ORG" :start 637 :end 643) (entity :text "Forcheville" :label "ORG" :start 745 :end 756) (entity :text "Verdurin." :label "ORG" :start 913 :end 922)
 )
 :sentences (list
  (sentence :text "Dès le commencement du repas, comme M" :start 0 :end 37) (sentence :text "de Forcheville, placé à la
droite de Mme Verdurin qui avait fait pour le «nouveau» de grands
frais de toilette, lui disait: «C’est original, cette robe blanche»,
le docteur qui n’avait cessé de l’observer, tant il était curieux de
savoir comment était fait ce qu’il appelait un «de», et qui cherchait
une occasion d’attirer son attention et d’entrer plus en contact avec
lui, saisit au vol le mot «blanche» et, sans lever le nez de son
assiette, dit: «blanche? Blanche de Castille?», puis sans bouger la
tête lança furtivement de droite et de gauche des regards incertains
et souriants" :start 38 :end 624) (sentence :text "Tandis que Swann, par l’effort douloureux et vain qu’il
fit pour sourire, témoigna qu’il jugeait ce calembour stupide,
Forcheville avait montré à la fois qu’il en goûtait la finesse et
qu’il savait vivre, en contenant dans de justes limites une gaieté
dont la franchise avait charmé Mme Verdurin" :start 625 :end 921)
 ))