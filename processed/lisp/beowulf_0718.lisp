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
 :text "Il rentra chez lui en quittant la poste, mais il avait gardé sur lui
cette dernière lettre. Il alluma une bougie et en approcha l’enveloppe
qu’il n’avait pas osé ouvrir. D’abord il ne put rien lire, mais
l’enveloppe était mince, et en la faisant adhérer à la carte dure qui
y était incluse, il put à travers sa transparence, lire les derniers
mots. C’était une formule finale très froide. Si, au lieu que ce fût
lui qui regardât une lettre adressée à Forcheville, c’eût été
Forcheville qui eût lu une lettre adressée à Swann, il aurait pu voir
des mots autrement tendres! Il maintint immobile la carte qui dansait
dans l’enveloppe plus grande qu’elle, puis, la faisant glisser avec le
pouce, en amena successivement les différentes lignes sous la partie
de l’enveloppe qui n’était pas doublée, la seule à travers laquelle on
pouvait lire."
 :tokens 144
 :processed-at "2025-03-16T02:18:14.545610"
 :entities (list
  (entity :text "Forcheville," :label "ORG" :start 451 :end 463) (entity :text "Forcheville" :label "ORG" :start 474 :end 485) (entity :text "Swann," :label "ORG" :start 519 :end 525)
 )
 :sentences (list
  (sentence :text "Il rentra chez lui en quittant la poste, mais il avait gardé sur lui
cette dernière lettre" :start 0 :end 90) (sentence :text "Il alluma une bougie et en approcha l’enveloppe
qu’il n’avait pas osé ouvrir" :start 91 :end 168) (sentence :text "D’abord il ne put rien lire, mais
l’enveloppe était mince, et en la faisant adhérer à la carte dure qui
y était incluse, il put à travers sa transparence, lire les derniers
mots" :start 169 :end 347) (sentence :text "C’était une formule finale très froide" :start 348 :end 387) (sentence :text "Si, au lieu que ce fût
lui qui regardât une lettre adressée à Forcheville, c’eût été
Forcheville qui eût lu une lettre adressée à Swann, il aurait pu voir
des mots autrement tendres! Il maintint immobile la carte qui dansait
dans l’enveloppe plus grande qu’elle, puis, la faisant glisser avec le
pouce, en amena successivement les différentes lignes sous la partie
de l’enveloppe qui n’était pas doublée, la seule à travers laquelle on
pouvait lire" :start 388 :end 837)
 ))