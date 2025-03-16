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
 :text "--«De ne pas tenir à la vie? Mais à quoi donc qu’il faut tenir, si ce
n’est pas à la vie, le seul cadeau que le bon Dieu ne fasse jamais
deux fois. Hélas! mon Dieu! C’est pourtant vrai qu’ils n’y tiennent
pas! Je les ai vus en 70; ils n’ont plus peur de la mort, dans ces
misérables guerres; c’est ni plus ni moins des fous; et puis ils ne
valent plus la corde pour les pendre, ce n’est pas des hommes, c’est
des lions.» (Pour Françoise la comparaison d’un homme à un lion,
qu’elle prononçait li-on, n’avait rien de flatteur.)"
 :tokens 102
 :processed-at "2025-03-16T02:18:13.956982"
 :entities (list
  (entity :text "--«De" :label "ORG" :start 0 :end 5) (entity :text "Mais" :label "ORG" :start 29 :end 33) (entity :text "Dieu" :label "ORG" :start 116 :end 120) (entity :text "Hélas!" :label "ORG" :start 148 :end 154) (entity :text "Dieu!" :label "ORG" :start 159 :end 164) (entity :text "(Pour" :label "ORG" :start 421 :end 426) (entity :text "Françoise" :label "ORG" :start 427 :end 436)
 )
 :sentences (list
  (sentence :text "--«De ne pas tenir à la vie? Mais à quoi donc qu’il faut tenir, si ce
n’est pas à la vie, le seul cadeau que le bon Dieu ne fasse jamais
deux fois" :start 0 :end 146) (sentence :text "Hélas! mon Dieu! C’est pourtant vrai qu’ils n’y tiennent
pas! Je les ai vus en 70; ils n’ont plus peur de la mort, dans ces
misérables guerres; c’est ni plus ni moins des fous; et puis ils ne
valent plus la corde pour les pendre, ce n’est pas des hommes, c’est
des lions" :start 147 :end 418) (sentence :text "» (Pour Françoise la comparaison d’un homme à un lion,
qu’elle prononçait li-on, n’avait rien de flatteur" :start 419 :end 524) (sentence :text ")" :start 525 :end 526)
 ))