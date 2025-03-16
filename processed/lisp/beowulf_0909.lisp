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
 :text "Quand il l’eut compris, sa pitié cessa, mais il fut jaloux de l’autre
lui-même qu’elle avait aimé, il fut jaloux de ceux dont il s’était dit
souvent sans trop souffrir, «elle les aime peut-être», maintenant
qu’il avait échangé l’idée vague d’aimer, dans laquelle il n’y a pas
d’amour, contre les pétales du chrysanthème et l’«en tête» de la
Maison d’Or, qui, eux en étaient pleins. Puis sa souffrance devenant
trop vive, il passa sa main sur son front, laissa tomber son monocle,
en essuya le verre. Et sans doute s’il s’était vu à ce moment-là, il
eut ajouté à la collection de ceux qu’il avait distingués le monocle
qu’il déplaçait comme une pensée importune et sur la face embuée
duquel, avec un mouchoir, il cherchait à effacer des soucis."
 :tokens 129
 :processed-at "2025-03-16T02:18:14.746599"
 :entities (list
  (entity :text "Quand" :label "ORG" :start 0 :end 5) (entity :text "Maison" :label "ORG" :start 341 :end 347) (entity :text "Puis" :label "ORG" :start 382 :end 386)
 )
 :sentences (list
  (sentence :text "Quand il l’eut compris, sa pitié cessa, mais il fut jaloux de l’autre
lui-même qu’elle avait aimé, il fut jaloux de ceux dont il s’était dit
souvent sans trop souffrir, «elle les aime peut-être», maintenant
qu’il avait échangé l’idée vague d’aimer, dans laquelle il n’y a pas
d’amour, contre les pétales du chrysanthème et l’«en tête» de la
Maison d’Or, qui, eux en étaient pleins" :start 0 :end 380) (sentence :text "Puis sa souffrance devenant
trop vive, il passa sa main sur son front, laissa tomber son monocle,
en essuya le verre" :start 381 :end 498) (sentence :text "Et sans doute s’il s’était vu à ce moment-là, il
eut ajouté à la collection de ceux qu’il avait distingués le monocle
qu’il déplaçait comme une pensée importune et sur la face embuée
duquel, avec un mouchoir, il cherchait à effacer des soucis" :start 499 :end 742)
 ))