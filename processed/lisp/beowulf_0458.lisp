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
 :text "D’un rythme lent elle le dirigeait ici d’abord, puis là, puis
ailleurs, vers un bonheur noble, inintelligible et précis. Et tout
d’un coup au point où elle était arrivée et d’où il se préparait à la
suivre, après une pause d’un instant, brusquement elle changeait de
direction et d’un mouvement nouveau, plus rapide, menu, mélancolique,
incessant et doux, elle l’entraînait avec elle vers des perspectives
inconnues. Puis elle disparut. Il souhaita passionnément la revoir une
troisième fois. Et elle reparut en effet mais sans lui parler plus
clairement, en lui causant même une volupté moins profonde. Mais
rentré chez lui il eut besoin d’elle, il était comme un homme dans la
vie de qui une passante qu’il a aperçue un moment vient de faire
entrer l’image d’une beauté nouvelle qui donne à sa propre sensibilité
une valeur plus grande, sans qu’il sache seulement s’il pourra revoir
jamais celle qu’il aime déjà et dont il ignore jusqu’au nom."
 :tokens 157
 :processed-at "2025-03-16T02:18:14.278751"
 :entities (list
  (entity :text "Puis" :label "ORG" :start 417 :end 421) (entity :text "Mais" :label "ORG" :start 604 :end 608)
 )
 :sentences (list
  (sentence :text "D’un rythme lent elle le dirigeait ici d’abord, puis là, puis
ailleurs, vers un bonheur noble, inintelligible et précis" :start 0 :end 119) (sentence :text "Et tout
d’un coup au point où elle était arrivée et d’où il se préparait à la
suivre, après une pause d’un instant, brusquement elle changeait de
direction et d’un mouvement nouveau, plus rapide, menu, mélancolique,
incessant et doux, elle l’entraînait avec elle vers des perspectives
inconnues" :start 120 :end 415) (sentence :text "Puis elle disparut" :start 416 :end 435) (sentence :text "Il souhaita passionnément la revoir une
troisième fois" :start 436 :end 491) (sentence :text "Et elle reparut en effet mais sans lui parler plus
clairement, en lui causant même une volupté moins profonde" :start 492 :end 602) (sentence :text "Mais
rentré chez lui il eut besoin d’elle, il était comme un homme dans la
vie de qui une passante qu’il a aperçue un moment vient de faire
entrer l’image d’une beauté nouvelle qui donne à sa propre sensibilité
une valeur plus grande, sans qu’il sache seulement s’il pourra revoir
jamais celle qu’il aime déjà et dont il ignore jusqu’au nom" :start 603 :end 944)
 ))