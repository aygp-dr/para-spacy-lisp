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
 :text "En réalité il n’y avait pas un fidèle qui ne fût plus malveillant que
Swann; mais tous ils avaient la précaution d’assaisonner leurs
médisances de plaisanteries connues, d’une petite pointe d’émotion et
de cordialité; tandis que la moindre réserve que se permettait Swann,
dépouillée des formules de convention telles que: «Ce n’est pas du mal
que nous disons» et auxquelles il dédaignait de s’abaisser, paraissait
une perfidie. Il y a des auteurs originaux dont la moindre hardiesse
révolte parce qu’ils n’ont pas d’abord flatté les goûts du public et
ne lui ont pas servi les lieux communs auxquels il est habitué; c’est
de la même manière que Swann indignait M. Verdurin. Pour Swann comme
pour eux, c’était la nouveauté de son langage qui faisait croire à là
noirceur de ses intentions."
 :tokens 131
 :processed-at "2025-03-16T02:18:14.508428"
 :entities (list
  (entity :text "Swann;" :label "ORG" :start 70 :end 76) (entity :text "Swann," :label "ORG" :start 266 :end 272) (entity :text "Swann" :label "ORG" :start 646 :end 651) (entity :text "Verdurin." :label "ORG" :start 665 :end 674) (entity :text "Pour" :label "ORG" :start 675 :end 679) (entity :text "Swann" :label "ORG" :start 680 :end 685)
 )
 :sentences (list
  (sentence :text "En réalité il n’y avait pas un fidèle qui ne fût plus malveillant que
Swann; mais tous ils avaient la précaution d’assaisonner leurs
médisances de plaisanteries connues, d’une petite pointe d’émotion et
de cordialité; tandis que la moindre réserve que se permettait Swann,
dépouillée des formules de convention telles que: «Ce n’est pas du mal
que nous disons» et auxquelles il dédaignait de s’abaisser, paraissait
une perfidie" :start 0 :end 427) (sentence :text "Il y a des auteurs originaux dont la moindre hardiesse
révolte parce qu’ils n’ont pas d’abord flatté les goûts du public et
ne lui ont pas servi les lieux communs auxquels il est habitué; c’est
de la même manière que Swann indignait M" :start 428 :end 663) (sentence :text "Verdurin" :start 664 :end 673) (sentence :text "Pour Swann comme
pour eux, c’était la nouveauté de son langage qui faisait croire à là
noirceur de ses intentions" :start 674 :end 788)
 ))