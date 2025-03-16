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
 :text "Il y avait, à ce dîner, en dehors des habitués, un professeur de la
Sorbonne, Brichot, qui avait rencontré M. et Mme Verdurin aux eaux et
si ses fonctions universitaires et ses travaux d’érudition n’avaient
pas rendu très rares ses moments de liberté, serait volontiers venu
souvent chez eux. Car il avait cette curiosité, cette superstition de
la vie, qui unie à un certain scepticisme relatif à l’objet de leurs
études, donne dans n’importe quelle profession, à certains hommes
intelligents, médecins qui ne croient pas à la médecine, professeurs
de lycée qui ne croient pas au thème latin, la réputation d’esprits
larges, brillants, et même supérieurs. Il affectait, chez Mme
Verdurin, de chercher ses comparaisons dans ce qu’il y avait de plus
actuel quand il parlait de philosophie et d’histoire, d’abord parce
qu’il croyait qu’elles ne sont qu’une préparation à la vie et qu’il
s’imaginait trouver en action dans le petit clan ce qu’il n’avait
connu jusqu’ici que dans les livres, puis peut-être aussi parce que,
s’étant vu inculquer autrefois, et ayant gardé à son insu, le respect
de certains sujets, il croyait dépouiller l’universitaire en prenant
avec eux des hardiesses qui, au contraire, ne lui paraissaient telles,
que parce qu’il l’était resté."
 :tokens 203
 :processed-at "2025-03-16T02:18:14.417655"
 :entities (list
  (entity :text "Sorbonne," :label "ORG" :start 68 :end 77) (entity :text "Brichot," :label "ORG" :start 78 :end 86) (entity :text "Verdurin" :label "ORG" :start 117 :end 125) (entity :text "Verdurin," :label "ORG" :start 679 :end 688)
 )
 :sentences (list
  (sentence :text "Il y avait, à ce dîner, en dehors des habitués, un professeur de la
Sorbonne, Brichot, qui avait rencontré M" :start 0 :end 108) (sentence :text "et Mme Verdurin aux eaux et
si ses fonctions universitaires et ses travaux d’érudition n’avaient
pas rendu très rares ses moments de liberté, serait volontiers venu
souvent chez eux" :start 109 :end 291) (sentence :text "Car il avait cette curiosité, cette superstition de
la vie, qui unie à un certain scepticisme relatif à l’objet de leurs
études, donne dans n’importe quelle profession, à certains hommes
intelligents, médecins qui ne croient pas à la médecine, professeurs
de lycée qui ne croient pas au thème latin, la réputation d’esprits
larges, brillants, et même supérieurs" :start 292 :end 654) (sentence :text "Il affectait, chez Mme
Verdurin, de chercher ses comparaisons dans ce qu’il y avait de plus
actuel quand il parlait de philosophie et d’histoire, d’abord parce
qu’il croyait qu’elles ne sont qu’une préparation à la vie et qu’il
s’imaginait trouver en action dans le petit clan ce qu’il n’avait
connu jusqu’ici que dans les livres, puis peut-être aussi parce que,
s’étant vu inculquer autrefois, et ayant gardé à son insu, le respect
de certains sujets, il croyait dépouiller l’universitaire en prenant
avec eux des hardiesses qui, au contraire, ne lui paraissaient telles,
que parce qu’il l’était resté" :start 655 :end 1258)
 ))