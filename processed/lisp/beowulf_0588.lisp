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
 :text "--Je crois avoir entendu que le docteur parlait de cette vieille chipie
de Blanche de Castille, si j’ose m’exprimer ainsi. N’est-il pas vrai,
madame? demanda Brichot à Mme Verdurin qui, pâmant, les yeux fermés,
précipita sa figure dans ses mains d’où s’échappèrent des cris
étouffés."
 :tokens 45
 :processed-at "2025-03-16T02:18:14.420726"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Blanche" :label "ORG" :start 75 :end 82) (entity :text "Castille," :label "ORG" :start 86 :end 95) (entity :text "Brichot" :label "ORG" :start 158 :end 165) (entity :text "Verdurin" :label "ORG" :start 172 :end 180)
 )
 :sentences (list
  (sentence :text "--Je crois avoir entendu que le docteur parlait de cette vieille chipie
de Blanche de Castille, si j’ose m’exprimer ainsi" :start 0 :end 121) (sentence :text "N’est-il pas vrai,
madame? demanda Brichot à Mme Verdurin qui, pâmant, les yeux fermés,
précipita sa figure dans ses mains d’où s’échappèrent des cris
étouffés" :start 122 :end 282)
 ))