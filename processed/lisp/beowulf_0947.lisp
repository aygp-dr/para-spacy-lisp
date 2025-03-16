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
 :text "D’ailleurs ses aveux même, quand elle lui en faisait, de fautes
qu’elle le supposait avoir découvertes, servaient plutôt pour Swann de
point de départ à de nouveaux doutes qu’ils ne mettaient un terme aux
anciens. Car ils n’étaient jamais exactement proportionnés à ceux-ci.
Odette avait eu beau retrancher de sa confession tout l’essentiel, il
restait dans l’accessoire quelque chose que Swann n’avait jamais
imaginé, qui l’accablait de sa nouveauté et allait lui permettre de
changer les termes du problème de sa jalousie. Et ces aveux il ne
pouvait plus les oublier. Son âme les charriait, les rejetait, les
berçait, comme des cadavres. Et elle en était empoisonnée."
 :tokens 107
 :processed-at "2025-03-16T02:18:14.794500"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 126 :end 131) (entity :text "Odette" :label "ORG" :start 275 :end 281) (entity :text "Swann" :label "ORG" :start 389 :end 394)
 )
 :sentences (list
  (sentence :text "D’ailleurs ses aveux même, quand elle lui en faisait, de fautes
qu’elle le supposait avoir découvertes, servaient plutôt pour Swann de
point de départ à de nouveaux doutes qu’ils ne mettaient un terme aux
anciens" :start 0 :end 212) (sentence :text "Car ils n’étaient jamais exactement proportionnés à ceux-ci" :start 213 :end 273) (sentence :text "Odette avait eu beau retrancher de sa confession tout l’essentiel, il
restait dans l’accessoire quelque chose que Swann n’avait jamais
imaginé, qui l’accablait de sa nouveauté et allait lui permettre de
changer les termes du problème de sa jalousie" :start 274 :end 523) (sentence :text "Et ces aveux il ne
pouvait plus les oublier" :start 524 :end 568) (sentence :text "Son âme les charriait, les rejetait, les
berçait, comme des cadavres" :start 569 :end 638) (sentence :text "Et elle en était empoisonnée" :start 639 :end 668)
 ))