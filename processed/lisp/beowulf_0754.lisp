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
 :text "Odette depuis un moment donnait des signes d’émotion et d’incertitude.
A défaut du sens de ce discours, elle comprenait qu’il pouvait rentrer
dans le genre commun des «laïus», et scènes de reproches ou de
supplications dont l’habitude qu’elle avait des hommes lui permettait
sans s’attacher aux détails des mots, de conclure qu’ils ne les
prononceraient pas s’ils n’étaient pas amoureux, que du moment qu’ils
étaient amoureux, il était inutile de leur obéir, qu’ils ne le
seraient que plus après. Aussi aurait-elle écouté Swann avec le plus
grand calme si elle n’avait vu que l’heure passait et que pour peu
qu’il parlât encore quelque temps, elle allait, comme elle le lui dit
avec un sourire tendre, obstiné et confus, «finir par manquer
l’Ouverture!»"
 :tokens 122
 :processed-at "2025-03-16T02:18:14.579254"
 :entities (list
  (entity :text "Odette" :label "ORG" :start 0 :end 6) (entity :text "Swann" :label "ORG" :start 522 :end 527)
 )
 :sentences (list
  (sentence :text "Odette depuis un moment donnait des signes d’émotion et d’incertitude" :start 0 :end 69) (sentence :text "A défaut du sens de ce discours, elle comprenait qu’il pouvait rentrer
dans le genre commun des «laïus», et scènes de reproches ou de
supplications dont l’habitude qu’elle avait des hommes lui permettait
sans s’attacher aux détails des mots, de conclure qu’ils ne les
prononceraient pas s’ils n’étaient pas amoureux, que du moment qu’ils
étaient amoureux, il était inutile de leur obéir, qu’ils ne le
seraient que plus après" :start 70 :end 495) (sentence :text "Aussi aurait-elle écouté Swann avec le plus
grand calme si elle n’avait vu que l’heure passait et que pour peu
qu’il parlât encore quelque temps, elle allait, comme elle le lui dit
avec un sourire tendre, obstiné et confus, «finir par manquer
l’Ouverture!»" :start 496 :end 753)
 ))