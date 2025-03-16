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
 :text "Certes, j’étais bien éveillé maintenant, mon corps avait viré une
dernière fois et le bon ange de la certitude avait tout arrêté autour
de moi, m’avait couché sous mes couvertures, dans ma chambre, et avait
mis approximativement à leur place dans l’obscurité ma commode, mon
bureau, ma cheminée, la fenêtre sur la rue et les deux portes. Mais
j’avais beau savoir que je n’étais pas dans les demeures dont
l’ignorance du réveil m’avait en un instant sinon présenté l’image
distincte, du moins fait croire la présence possible, le branle était
donné à ma mémoire; généralement je ne cherchais pas à me rendormir
tout de suite; je passais la plus grande partie de la nuit à me
rappeler notre vie d’autrefois, à Combray chez ma grand’tante, à
Balbec, à Paris, à Doncières, à Venise, ailleurs encore, à me rappeler
les lieux, les personnes que j’y avais connues, ce que j’avais vu
d’elles, ce qu’on m’en avait raconté."
 :tokens 156
 :processed-at "2025-03-16T02:18:13.787401"
 :entities (list
  (entity :text "Certes," :label "ORG" :start 0 :end 7) (entity :text "Mais" :label "ORG" :start 338 :end 342) (entity :text "Combray" :label "ORG" :start 708 :end 715) (entity :text "Balbec," :label "ORG" :start 739 :end 746) (entity :text "Paris," :label "ORG" :start 749 :end 755) (entity :text "Doncières," :label "ORG" :start 758 :end 768) (entity :text "Venise," :label "ORG" :start 771 :end 778)
 )
 :sentences (list
  (sentence :text "Certes, j’étais bien éveillé maintenant, mon corps avait viré une
dernière fois et le bon ange de la certitude avait tout arrêté autour
de moi, m’avait couché sous mes couvertures, dans ma chambre, et avait
mis approximativement à leur place dans l’obscurité ma commode, mon
bureau, ma cheminée, la fenêtre sur la rue et les deux portes" :start 0 :end 336) (sentence :text "Mais
j’avais beau savoir que je n’étais pas dans les demeures dont
l’ignorance du réveil m’avait en un instant sinon présenté l’image
distincte, du moins fait croire la présence possible, le branle était
donné à ma mémoire; généralement je ne cherchais pas à me rendormir
tout de suite; je passais la plus grande partie de la nuit à me
rappeler notre vie d’autrefois, à Combray chez ma grand’tante, à
Balbec, à Paris, à Doncières, à Venise, ailleurs encore, à me rappeler
les lieux, les personnes que j’y avais connues, ce que j’avais vu
d’elles, ce qu’on m’en avait raconté" :start 337 :end 912)
 ))