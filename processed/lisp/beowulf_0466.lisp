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
 :text "Mais tous ces gens qui faisaient profession d’admirer ce musicien
(quand Swann avait dit que sa sonate était vraiment belle, Mme
Verdurin s’était écriée: «Je vous crois un peu qu’elle est belle! Mais
on n’avoue pas qu’on ne connaît pas la sonate de Vinteuil, on n’a pas
le droit de ne pas la connaître», et le peintre avait ajouté: «Ah!
c’est tout à fait une très grande machine, n’est-ce pas. Ce n’est pas
si vous voulez la chose «cher» et «public», n’est-ce pas, mais c’est
la très grosse impression pour les artistes»), ces gens semblaient ne
s’être jamais posé ces questions car ils furent incapables d’y
répondre."
 :tokens 107
 :processed-at "2025-03-16T02:18:14.286394"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 73 :end 78) (entity :text "Verdurin" :label "ORG" :start 129 :end 137) (entity :text "Mais" :label "ORG" :start 195 :end 199) (entity :text "Vinteuil," :label "ORG" :start 249 :end 258) (entity :text "«Ah!" :label "ORG" :start 332 :end 336)
 )
 :sentences (list
  (sentence :text "Mais tous ces gens qui faisaient profession d’admirer ce musicien
(quand Swann avait dit que sa sonate était vraiment belle, Mme
Verdurin s’était écriée: «Je vous crois un peu qu’elle est belle! Mais
on n’avoue pas qu’on ne connaît pas la sonate de Vinteuil, on n’a pas
le droit de ne pas la connaître», et le peintre avait ajouté: «Ah!
c’est tout à fait une très grande machine, n’est-ce pas" :start 0 :end 392) (sentence :text "Ce n’est pas
si vous voulez la chose «cher» et «public», n’est-ce pas, mais c’est
la très grosse impression pour les artistes»), ces gens semblaient ne
s’être jamais posé ces questions car ils furent incapables d’y
répondre" :start 393 :end 617)
 ))