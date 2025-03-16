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
 :text "Il la regardait; un fragment de la fresque apparaissait dans son
visage et dans son corps, que dès lors il chercha toujours à y
retrouver soit qu’il fût auprès d’Odette, soit qu’il pensât seulement
à elle, et bien qu’il ne tînt sans doute au chef-d’œuvre florentin que
parce qu’il le retrouvait en elle, pourtant cette ressemblance lui
conférait à elle aussi une beauté, la rendait plus précieuse. Swann se
reprocha d’avoir méconnu le prix d’un être qui eût paru adorable au
grand Sandro, et il se félicita que le plaisir qu’il avait à voir
Odette trouvât une justification dans sa propre culture esthétique. Il
se dit qu’en associant la pensée d’Odette à ses rêves de bonheur il ne
s’était pas résigné à un pis-aller aussi imparfait qu’il l’avait cru
jusqu’ici, puisqu’elle contentait en lui ses goûts d’art les plus
raffinés. Il oubliait qu’Odette n’était pas plus pour cela une femme
selon son désir, puisque précisément son désir avait toujours été
orienté dans un sens opposé à ses goûts esthétiques. Le mot d’«œuvre
florentine» rendit un grand service à Swann. Il lui permit, comme un
titre, de faire pénétrer l’image d’Odette dans un monde de rêves, où
elle n’avait pas eu accès jusqu’ici et où elle s’imprégna de noblesse.
Et tandis que la vue purement charnelle qu’il avait eue de cette
femme, en renouvelant perpétuellement ses doutes sur la qualité de son
visage, de son corps, de toute sa beauté, affaiblissait son amour, ces
doutes furent détruits, cet amour assuré quand il eut à la place pour
base les données d’une esthétique certaine; sans compter que le baiser
et la possession qui semblaient naturels et médiocres s’ils lui
étaient accordés par une chair abîmée, venant couronner l’adoration
d’une pièce de musée, lui parurent devoir être surnaturels et
délicieux."
 :tokens 297
 :processed-at "2025-03-16T02:18:14.338956"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 398 :end 403) (entity :text "Sandro," :label "ORG" :start 481 :end 488) (entity :text "Odette" :label "ORG" :start 541 :end 547) (entity :text "Swann." :label "ORG" :start 1060 :end 1066)
 )
 :sentences (list
  (sentence :text "Il la regardait; un fragment de la fresque apparaissait dans son
visage et dans son corps, que dès lors il chercha toujours à y
retrouver soit qu’il fût auprès d’Odette, soit qu’il pensât seulement
à elle, et bien qu’il ne tînt sans doute au chef-d’œuvre florentin que
parce qu’il le retrouvait en elle, pourtant cette ressemblance lui
conférait à elle aussi une beauté, la rendait plus précieuse" :start 0 :end 396) (sentence :text "Swann se
reprocha d’avoir méconnu le prix d’un être qui eût paru adorable au
grand Sandro, et il se félicita que le plaisir qu’il avait à voir
Odette trouvât une justification dans sa propre culture esthétique" :start 397 :end 607) (sentence :text "Il
se dit qu’en associant la pensée d’Odette à ses rêves de bonheur il ne
s’était pas résigné à un pis-aller aussi imparfait qu’il l’avait cru
jusqu’ici, puisqu’elle contentait en lui ses goûts d’art les plus
raffinés" :start 608 :end 826) (sentence :text "Il oubliait qu’Odette n’était pas plus pour cela une femme
selon son désir, puisque précisément son désir avait toujours été
orienté dans un sens opposé à ses goûts esthétiques" :start 827 :end 1004) (sentence :text "Le mot d’«œuvre
florentine» rendit un grand service à Swann" :start 1005 :end 1065) (sentence :text "Il lui permit, comme un
titre, de faire pénétrer l’image d’Odette dans un monde de rêves, où
elle n’avait pas eu accès jusqu’ici et où elle s’imprégna de noblesse" :start 1066 :end 1229) (sentence :text "Et tandis que la vue purement charnelle qu’il avait eue de cette
femme, en renouvelant perpétuellement ses doutes sur la qualité de son
visage, de son corps, de toute sa beauté, affaiblissait son amour, ces
doutes furent détruits, cet amour assuré quand il eut à la place pour
base les données d’une esthétique certaine; sans compter que le baiser
et la possession qui semblaient naturels et médiocres s’ils lui
étaient accordés par une chair abîmée, venant couronner l’adoration
d’une pièce de musée, lui parurent devoir être surnaturels et
délicieux" :start 1230 :end 1782)
 ))