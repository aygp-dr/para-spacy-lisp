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
 :text "--Je te dirai, dit Mme Verdurin, qu’il a cru devoir lancer contre
Brichot quelques insinuations venimeuses et assez ridicules.
Naturellement, comme il a vu que Brichot était aimé dans la maison,
c’était une manière de nous atteindre, de bêcher notre dîner. On sent
le bon petit camarade qui vous débinera en sortant."
 :tokens 52
 :processed-at "2025-03-16T02:18:14.506692"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Verdurin," :label "ORG" :start 23 :end 32) (entity :text "Brichot" :label "ORG" :start 66 :end 73) (entity :text "Naturellement," :label "ORG" :start 127 :end 141) (entity :text "Brichot" :label "ORG" :start 160 :end 167)
 )
 :sentences (list
  (sentence :text "--Je te dirai, dit Mme Verdurin, qu’il a cru devoir lancer contre
Brichot quelques insinuations venimeuses et assez ridicules" :start 0 :end 125) (sentence :text "Naturellement, comme il a vu que Brichot était aimé dans la maison,
c’était une manière de nous atteindre, de bêcher notre dîner" :start 126 :end 255) (sentence :text "On sent
le bon petit camarade qui vous débinera en sortant" :start 256 :end 315)
 ))