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
 :text "Mais ma grand’mère, même si le temps trop chaud s’était gâté, si un
orage ou seulement un grain était survenu, venait me supplier de
sortir. Et ne voulant pas renoncer à ma lecture, j’allais du moins la
continuer au jardin, sous le marronnier, dans une petite guérite en
sparterie et en toile au fond de laquelle j’étais assis et me croyais
caché aux yeux des personnes qui pourraient venir faire visite à mes
parents."
 :tokens 74
 :processed-at "2025-03-16T02:18:13.946225"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4)
 )
 :sentences (list
  (sentence :text "Mais ma grand’mère, même si le temps trop chaud s’était gâté, si un
orage ou seulement un grain était survenu, venait me supplier de
sortir" :start 0 :end 139) (sentence :text "Et ne voulant pas renoncer à ma lecture, j’allais du moins la
continuer au jardin, sous le marronnier, dans une petite guérite en
sparterie et en toile au fond de laquelle j’étais assis et me croyais
caché aux yeux des personnes qui pourraient venir faire visite à mes
parents" :start 140 :end 417)
 ))