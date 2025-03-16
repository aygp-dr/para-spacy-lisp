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
 :text "Ceux même qui ne la connaissaient pas étaient avertis par quelque
chose de singulier et d’excessif--ou peut-être par une radiation
télépathique comme celles qui déchaînaient des applaudissements dans
la foule ignorante aux moments où la Berma était sublime,--que ce
devait être quelque personne connue. Ils se demandaient: «Qui
est-ce?», interrogeaient quelquefois un passant, ou se promettaient de
se rappeler la toilette comme un point de repère pour des amis plus
instruits qui les renseigneraient aussitôt. D’autres promeneurs,
s’arrêtant à demi, disaient:"
 :tokens 81
 :processed-at "2025-03-16T02:18:14.898717"
 :entities (list
  (entity :text "Ceux" :label "ORG" :start 0 :end 4) (entity :text "Berma" :label "ORG" :start 237 :end 242) (entity :text "«Qui" :label "ORG" :start 323 :end 327)
 )
 :sentences (list
  (sentence :text "Ceux même qui ne la connaissaient pas étaient avertis par quelque
chose de singulier et d’excessif--ou peut-être par une radiation
télépathique comme celles qui déchaînaient des applaudissements dans
la foule ignorante aux moments où la Berma était sublime,--que ce
devait être quelque personne connue" :start 0 :end 301) (sentence :text "Ils se demandaient: «Qui
est-ce?», interrogeaient quelquefois un passant, ou se promettaient de
se rappeler la toilette comme un point de repère pour des amis plus
instruits qui les renseigneraient aussitôt" :start 302 :end 509) (sentence :text "D’autres promeneurs,
s’arrêtant à demi, disaient:" :start 510 :end 560)
 ))