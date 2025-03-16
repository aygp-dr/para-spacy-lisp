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
 :text "Quel mensonge déprimant était-elle en train de faire à Swann pour
qu’elle eût ce regard douloureux, cette voix plaintive qui semblaient
fléchir sous l’effort qu’elle s’imposait, et demander grâce? Il eut
l’idée que ce n’était pas seulement la vérité sur l’incident de
l’après-midi qu’elle s’efforçait de lui cacher, mais quelque chose de
plus actuel, peut-être de non encore survenu et de tout prochain, et
qui pourrait l’éclairer sur cette vérité. A ce moment, il entendit un
coup de sonnette. Odette ne cessa plus de parler, mais ses paroles
n’étaient qu’un gémissement: son regret de ne pas avoir vu Swann dans
l’après-midi, de ne pas lui avoir ouvert, était devenu un véritable
désespoir."
 :tokens 112
 :processed-at "2025-03-16T02:18:14.543387"
 :entities (list
  (entity :text "Quel" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 55 :end 60) (entity :text "Odette" :label "ORG" :start 495 :end 501) (entity :text "Swann" :label "ORG" :start 603 :end 608)
 )
 :sentences (list
  (sentence :text "Quel mensonge déprimant était-elle en train de faire à Swann pour
qu’elle eût ce regard douloureux, cette voix plaintive qui semblaient
fléchir sous l’effort qu’elle s’imposait, et demander grâce? Il eut
l’idée que ce n’était pas seulement la vérité sur l’incident de
l’après-midi qu’elle s’efforçait de lui cacher, mais quelque chose de
plus actuel, peut-être de non encore survenu et de tout prochain, et
qui pourrait l’éclairer sur cette vérité" :start 0 :end 447) (sentence :text "A ce moment, il entendit un
coup de sonnette" :start 448 :end 493) (sentence :text "Odette ne cessa plus de parler, mais ses paroles
n’étaient qu’un gémissement: son regret de ne pas avoir vu Swann dans
l’après-midi, de ne pas lui avoir ouvert, était devenu un véritable
désespoir" :start 494 :end 691)
 ))