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
 :text "Maintenant qu’après cette oscillation, Odette était naturellement
revenue à la place d’où la jalousie de Swann l’avait un moment
écartée, dans l’angle où il la trouvait charmante, il se la figurait
pleine de tendresse, avec un regard de consentement, si jolie ainsi,
qu’il ne pouvait s’empêcher d’avancer les lèvres vers elle comme si
elle avait été là et qu’il eût pu l’embrasser; et il lui gardait de ce
regard enchanteur et bon autant de reconnaissance que si elle venait
de l’avoir réellement et si cela n’eût pas été seulement son
imagination qui venait de le peindre pour donner satisfaction à son
désir."
 :tokens 102
 :processed-at "2025-03-16T02:18:14.607409"
 :entities (list
  (entity :text "Maintenant" :label "ORG" :start 0 :end 10) (entity :text "Odette" :label "ORG" :start 39 :end 45) (entity :text "Swann" :label "ORG" :start 105 :end 110)
 )
 :sentences (list
  (sentence :text "Maintenant qu’après cette oscillation, Odette était naturellement
revenue à la place d’où la jalousie de Swann l’avait un moment
écartée, dans l’angle où il la trouvait charmante, il se la figurait
pleine de tendresse, avec un regard de consentement, si jolie ainsi,
qu’il ne pouvait s’empêcher d’avancer les lèvres vers elle comme si
elle avait été là et qu’il eût pu l’embrasser; et il lui gardait de ce
regard enchanteur et bon autant de reconnaissance que si elle venait
de l’avoir réellement et si cela n’eût pas été seulement son
imagination qui venait de le peindre pour donner satisfaction à son
désir" :start 0 :end 609)
 ))