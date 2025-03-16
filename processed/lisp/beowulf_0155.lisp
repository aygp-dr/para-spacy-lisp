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
 :text "Déjà moins intérieur à mon corps que cette vie des personnages, venait
ensuite, à demi projeté devant moi, le paysage où se déroulait
l’action et qui exerçait sur ma pensée une bien plus grande influence
que l’autre, que celui que j’avais sous les yeux quand je les levais
du livre. C’est ainsi que pendant deux étés, dans la chaleur du jardin
de Combray, j’ai eu, à cause du livre que je lisais alors, la
nostalgie d’un pays montueux et fluviatile, où je verrais beaucoup de
scieries et où, au fond de l’eau claire, des morceaux de bois
pourrissaient sous des touffes de cresson: non loin montaient le long
de murs bas, des grappes de fleurs violettes et rougeâtres. Et comme
le rêve d’une femme qui m’aurait aimé était toujours présent à ma
pensée, ces étés-là ce rêve fut imprégné de la fraîcheur des eaux
courantes; et quelle que fût la femme que j’évoquais, des grappes de
fleurs violettes et rougeâtres s’élevaient aussitôt de chaque côté
d’elle comme des couleurs complémentaires."
 :tokens 170
 :processed-at "2025-03-16T02:18:13.949539"
 :entities (list
  (entity :text "Déjà" :label "ORG" :start 0 :end 4) (entity :text "Combray," :label "ORG" :start 347 :end 355)
 )
 :sentences (list
  (sentence :text "Déjà moins intérieur à mon corps que cette vie des personnages, venait
ensuite, à demi projeté devant moi, le paysage où se déroulait
l’action et qui exerçait sur ma pensée une bien plus grande influence
que l’autre, que celui que j’avais sous les yeux quand je les levais
du livre" :start 0 :end 281) (sentence :text "C’est ainsi que pendant deux étés, dans la chaleur du jardin
de Combray, j’ai eu, à cause du livre que je lisais alors, la
nostalgie d’un pays montueux et fluviatile, où je verrais beaucoup de
scieries et où, au fond de l’eau claire, des morceaux de bois
pourrissaient sous des touffes de cresson: non loin montaient le long
de murs bas, des grappes de fleurs violettes et rougeâtres" :start 282 :end 666) (sentence :text "Et comme
le rêve d’une femme qui m’aurait aimé était toujours présent à ma
pensée, ces étés-là ce rêve fut imprégné de la fraîcheur des eaux
courantes; et quelle que fût la femme que j’évoquais, des grappes de
fleurs violettes et rougeâtres s’élevaient aussitôt de chaque côté
d’elle comme des couleurs complémentaires" :start 667 :end 986)
 ))