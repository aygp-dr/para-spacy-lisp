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
 :text "Et--ô merveilleuse indépendance des regards humains, retenus au visage
par une corde si lâche, si longue, si extensible qu’ils peuvent se
promener seuls loin de lui--pendant que Mme de Guermantes était assise
dans la chapelle au-dessus des tombes de ses morts, ses regards
flânaient çà et là, montaient le long des piliers, s’arrêtaient même
sur moi comme un rayon de soleil errant dans la nef, mais un rayon de
soleil qui, au moment où je reçus sa caresse, me sembla conscient.
Quant à Mme de Guermantes elle-même, comme elle restait immobile,
assise comme une mère qui semble ne pas voir les audaces espiègles et
les entreprises indiscrètes de ses enfants qui jouent et interpellent
des personnes qu’elle ne connaît pas, il me fût impossible de savoir
si elle approuvait ou blâmait dans le désœuvrement de son âme, le
vagabondage de ses regards."
 :tokens 142
 :processed-at "2025-03-16T02:18:14.185945"
 :entities (list
  (entity :text "Guermantes" :label "ORG" :start 185 :end 195) (entity :text "Quant" :label "ORG" :start 479 :end 484) (entity :text "Guermantes" :label "ORG" :start 494 :end 504)
 )
 :sentences (list
  (sentence :text "Et--ô merveilleuse indépendance des regards humains, retenus au visage
par une corde si lâche, si longue, si extensible qu’ils peuvent se
promener seuls loin de lui--pendant que Mme de Guermantes était assise
dans la chapelle au-dessus des tombes de ses morts, ses regards
flânaient çà et là, montaient le long des piliers, s’arrêtaient même
sur moi comme un rayon de soleil errant dans la nef, mais un rayon de
soleil qui, au moment où je reçus sa caresse, me sembla conscient" :start 0 :end 477) (sentence :text "Quant à Mme de Guermantes elle-même, comme elle restait immobile,
assise comme une mère qui semble ne pas voir les audaces espiègles et
les entreprises indiscrètes de ses enfants qui jouent et interpellent
des personnes qu’elle ne connaît pas, il me fût impossible de savoir
si elle approuvait ou blâmait dans le désœuvrement de son âme, le
vagabondage de ses regards" :start 478 :end 846)
 ))