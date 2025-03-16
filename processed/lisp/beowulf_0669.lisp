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
 :text "--Ah! vous arrivez tard, dit Mme Verdurin à un fidèle qu’elle n’avait
invité qu’en «cure-dents», «nous avons eu «un» Brichot incomparable,
d’une éloquence! Mais il est parti. N’est-ce pas, monsieur Swann? Je
crois que c’est la première fois que vous vous rencontriez avec lui,
dit-elle pour lui faire remarquer que c’était à elle qu’il devait de
le connaître. «N’est-ce pas, il a été délicieux, notre Brichot?»"
 :tokens 66
 :processed-at "2025-03-16T02:18:14.495111"
 :entities (list
  (entity :text "--Ah!" :label "ORG" :start 0 :end 5) (entity :text "Verdurin" :label "ORG" :start 33 :end 41) (entity :text "Brichot" :label "ORG" :start 117 :end 124) (entity :text "Mais" :label "ORG" :start 156 :end 160) (entity :text "Swann?" :label "ORG" :start 198 :end 204) (entity :text "Brichot?»" :label "ORG" :start 401 :end 410)
 )
 :sentences (list
  (sentence :text "--Ah! vous arrivez tard, dit Mme Verdurin à un fidèle qu’elle n’avait
invité qu’en «cure-dents», «nous avons eu «un» Brichot incomparable,
d’une éloquence! Mais il est parti" :start 0 :end 173) (sentence :text "N’est-ce pas, monsieur Swann? Je
crois que c’est la première fois que vous vous rencontriez avec lui,
dit-elle pour lui faire remarquer que c’était à elle qu’il devait de
le connaître" :start 174 :end 358) (sentence :text "«N’est-ce pas, il a été délicieux, notre Brichot?»" :start 359 :end 410)
 ))