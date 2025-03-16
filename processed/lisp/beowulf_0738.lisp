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
 :text "--As-tu vu les façons que Swann se permet maintenant avec nous? dit Mme
Verdurin à son mari quand ils furent rentrés. J’ai cru qu’il allait me
manger, parce que nous ramenions Odette. C’est d’une inconvenance,
vraiment! Alors, qu’il dise tout de suite que nous tenons une maison
de rendez-vous! Je ne comprends pas qu’Odette supporte des manières
pareilles. Il a absolument l’air de dire: vous m’appartenez. Je dirai
ma manière de penser à Odette, j’espère qu’elle comprendra.»"
 :tokens 77
 :processed-at "2025-03-16T02:18:14.562910"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 26 :end 31) (entity :text "Verdurin" :label "ORG" :start 72 :end 80) (entity :text "Odette." :label "ORG" :start 176 :end 183) (entity :text "Odette," :label "ORG" :start 440 :end 447)
 )
 :sentences (list
  (sentence :text "--As-tu vu les façons que Swann se permet maintenant avec nous? dit Mme
Verdurin à son mari quand ils furent rentrés" :start 0 :end 116) (sentence :text "J’ai cru qu’il allait me
manger, parce que nous ramenions Odette" :start 117 :end 182) (sentence :text "C’est d’une inconvenance,
vraiment! Alors, qu’il dise tout de suite que nous tenons une maison
de rendez-vous! Je ne comprends pas qu’Odette supporte des manières
pareilles" :start 183 :end 356) (sentence :text "Il a absolument l’air de dire: vous m’appartenez" :start 357 :end 406) (sentence :text "Je dirai
ma manière de penser à Odette, j’espère qu’elle comprendra" :start 407 :end 475) (sentence :text "»" :start 476 :end 477)
 ))