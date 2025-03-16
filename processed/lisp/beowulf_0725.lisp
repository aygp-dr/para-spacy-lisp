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
 :text "Mme Verdurin, voyant que Swann était à deux pas, prit cette expression
où le désir de faire taire celui qui parle et de garder un air
innocent aux yeux de celui qui entend, se neutralise en une nullité
intense du regard, où l’immobile signe d’intelligence du complice se
dissimule sous les sourires de l’ingénu et qui enfin, commune à tous
ceux qui s’aperçoivent d’une gaffe, la révèle instantanément sinon à
ceux qui la font, du moins à celui qui en est l’objet. Odette eut
soudain l’air d’une désespérée qui renonce à lutter contre les
difficultés écrasantes de la vie, et Swann comptait anxieusement les
minutes qui le séparaient du moment où, après avoir quitté ce
restaurant, pendant le retour avec elle, il allait pouvoir lui
demander des explications, obtenir qu’elle n’allât pas le lendemain à
Chatou ou qu’elle l’y fit inviter et apaiser dans ses bras l’angoisse
qu’il ressentait. Enfin on demanda leurs voitures. Mme Verdurin dit à
Swann:"
 :tokens 159
 :processed-at "2025-03-16T02:18:14.552906"
 :entities (list
  (entity :text "Verdurin," :label "ORG" :start 4 :end 13) (entity :text "Swann" :label "ORG" :start 25 :end 30) (entity :text "Odette" :label "ORG" :start 464 :end 470) (entity :text "Swann" :label "ORG" :start 575 :end 580) (entity :text "Chatou" :label "ORG" :start 802 :end 808) (entity :text "Enfin" :label "ORG" :start 890 :end 895) (entity :text "Verdurin" :label "ORG" :start 927 :end 935) (entity :text "Swann:" :label "ORG" :start 942 :end 948)
 )
 :sentences (list
  (sentence :text "Mme Verdurin, voyant que Swann était à deux pas, prit cette expression
où le désir de faire taire celui qui parle et de garder un air
innocent aux yeux de celui qui entend, se neutralise en une nullité
intense du regard, où l’immobile signe d’intelligence du complice se
dissimule sous les sourires de l’ingénu et qui enfin, commune à tous
ceux qui s’aperçoivent d’une gaffe, la révèle instantanément sinon à
ceux qui la font, du moins à celui qui en est l’objet" :start 0 :end 462) (sentence :text "Odette eut
soudain l’air d’une désespérée qui renonce à lutter contre les
difficultés écrasantes de la vie, et Swann comptait anxieusement les
minutes qui le séparaient du moment où, après avoir quitté ce
restaurant, pendant le retour avec elle, il allait pouvoir lui
demander des explications, obtenir qu’elle n’allât pas le lendemain à
Chatou ou qu’elle l’y fit inviter et apaiser dans ses bras l’angoisse
qu’il ressentait" :start 463 :end 888) (sentence :text "Enfin on demanda leurs voitures" :start 889 :end 921) (sentence :text "Mme Verdurin dit à
Swann:" :start 922 :end 948)
 ))