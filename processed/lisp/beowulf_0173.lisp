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
 :text "Malheureusement, je ne pus pas apaiser en causant avec Bloch et en lui
demandant des explications, le trouble où il m’avait jeté quand il
m’avait dit que les beaux vers (à moi qui n’attendais d’eux rien moins
que la révélation de la vérité) étaient d’autant plus beaux qu’ils ne
signifiaient rien du tout. Bloch en effet ne fut pas réinvité à la
maison. Il y avait d’abord été bien accueilli. Mon grand-père, il est
vrai, prétendait que chaque fois que je me liais avec un de mes
camarades plus qu’avec les autres et que je l’amenais chez nous,
c’était toujours un juif, ce qui ne lui eût pas déplu en principe--même
son ami Swann était d’origine juive--s’il n’avait trouvé que ce n’était
pas d’habitude parmi les meilleurs que je le choisissais. Aussi quand
j’amenais un nouvel ami il était bien rare qu’il ne fredonnât pas: «O
Dieu de nos Pères» de la Juive ou bien «Israël romps ta chaîne», ne
chantant que l’air naturellement (Ti la lam ta lam, talim), mais
j’avais peur que mon camarade ne le connût et ne rétablît les paroles."
 :tokens 184
 :processed-at "2025-03-16T02:18:13.966098"
 :entities (list
  (entity :text "Malheureusement," :label "ORG" :start 0 :end 16) (entity :text "Bloch" :label "ORG" :start 55 :end 60) (entity :text "Bloch" :label "ORG" :start 306 :end 311) (entity :text "Swann" :label "ORG" :start 625 :end 630) (entity :text "Dieu" :label "ORG" :start 829 :end 833) (entity :text "Pères»" :label "ORG" :start 841 :end 847) (entity :text "Juive" :label "ORG" :start 854 :end 859) (entity :text "«Israël" :label "ORG" :start 868 :end 875)
 )
 :sentences (list
  (sentence :text "Malheureusement, je ne pus pas apaiser en causant avec Bloch et en lui
demandant des explications, le trouble où il m’avait jeté quand il
m’avait dit que les beaux vers (à moi qui n’attendais d’eux rien moins
que la révélation de la vérité) étaient d’autant plus beaux qu’ils ne
signifiaient rien du tout" :start 0 :end 304) (sentence :text "Bloch en effet ne fut pas réinvité à la
maison" :start 305 :end 352) (sentence :text "Il y avait d’abord été bien accueilli" :start 353 :end 391) (sentence :text "Mon grand-père, il est
vrai, prétendait que chaque fois que je me liais avec un de mes
camarades plus qu’avec les autres et que je l’amenais chez nous,
c’était toujours un juif, ce qui ne lui eût pas déplu en principe--même
son ami Swann était d’origine juive--s’il n’avait trouvé que ce n’était
pas d’habitude parmi les meilleurs que je le choisissais" :start 392 :end 745) (sentence :text "Aussi quand
j’amenais un nouvel ami il était bien rare qu’il ne fredonnât pas: «O
Dieu de nos Pères» de la Juive ou bien «Israël romps ta chaîne», ne
chantant que l’air naturellement (Ti la lam ta lam, talim), mais
j’avais peur que mon camarade ne le connût et ne rétablît les paroles" :start 746 :end 1031)
 ))