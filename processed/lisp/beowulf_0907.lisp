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
 :text "Mais tout à coup ce fut comme si elle était entrée, et cette
apparition lui fut une si déchirante souffrance qu’il dut porter la
main à son cœur. C’est que le violon était monté à des notes hautes où
il restait comme pour une attente, une attente qui se prolongeait sans
qu’il cessât de les tenir, dans l’exaltation où il était d’apercevoir
déjà l’objet de son attente qui s’approchait, et avec un effort
désespéré pour tâcher de durer jusqu’à son arrivée, de l’accueillir
avant d’expirer, de lui maintenir encore un moment de toutes ses
dernières forces le chemin ouvert pour qu’il pût passer, comme on
soutient une porte qui sans cela retomberait. Et avant que Swann eût
eu le temps de comprendre, et de se dire: «C’est la petite phrase de
la sonate de Vinteuil, n’écoutons pas!» tous ses souvenirs du temps où
Odette était éprise de lui, et qu’il avait réussi jusqu’à ce jour à
maintenir invisibles dans les profondeurs de son être, trompés par ce
brusque rayon du temps d’amour qu’ils crurent revenu, s’étaient
réveillés, et à tire d’aile, étaient remontés lui chanter éperdument,
sans pitié pour son infortune présente, les refrains oubliés du
bonheur."
 :tokens 197
 :processed-at "2025-03-16T02:18:14.743965"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 663 :end 668) (entity :text "Vinteuil," :label "ORG" :start 755 :end 764) (entity :text "Odette" :label "ORG" :start 813 :end 819)
 )
 :sentences (list
  (sentence :text "Mais tout à coup ce fut comme si elle était entrée, et cette
apparition lui fut une si déchirante souffrance qu’il dut porter la
main à son cœur" :start 0 :end 144) (sentence :text "C’est que le violon était monté à des notes hautes où
il restait comme pour une attente, une attente qui se prolongeait sans
qu’il cessât de les tenir, dans l’exaltation où il était d’apercevoir
déjà l’objet de son attente qui s’approchait, et avec un effort
désespéré pour tâcher de durer jusqu’à son arrivée, de l’accueillir
avant d’expirer, de lui maintenir encore un moment de toutes ses
dernières forces le chemin ouvert pour qu’il pût passer, comme on
soutient une porte qui sans cela retomberait" :start 145 :end 648) (sentence :text "Et avant que Swann eût
eu le temps de comprendre, et de se dire: «C’est la petite phrase de
la sonate de Vinteuil, n’écoutons pas!» tous ses souvenirs du temps où
Odette était éprise de lui, et qu’il avait réussi jusqu’à ce jour à
maintenir invisibles dans les profondeurs de son être, trompés par ce
brusque rayon du temps d’amour qu’ils crurent revenu, s’étaient
réveillés, et à tire d’aile, étaient remontés lui chanter éperdument,
sans pitié pour son infortune présente, les refrains oubliés du
bonheur" :start 649 :end 1156)
 ))