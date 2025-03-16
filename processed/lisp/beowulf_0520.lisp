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
 :text "Il plaça sur sa table de travail, comme une photographie d’Odette, une
reproduction de la fille de Jéthro. Il admirait les grands yeux, le
délicat visage qui laissait deviner la peau imparfaite, les boucles
merveilleuses des cheveux le long des joues fatiguées, et adaptant ce
qu’il trouvait beau jusque-là d’une façon esthétique à l’idée d’une
femme vivante, il le transformait en mérites physiques qu’il se
félicitait de trouver réunis dans un être qu’il pourrait posséder.
Cette vague sympathie qui nous porte vers un chef-d’œuvre que nous
regardons, maintenant qu’il connaissait l’original charnel de la fille
de Jéthro, elle devenait un désir qui suppléa désormais à celui que le
corps d’Odette ne lui avait pas d’abord inspiré. Quand il avait
regardé longtemps ce Botticelli, il pensait à son Botticelli à lui
qu’il trouvait plus beau encore et approchant de lui la photographie
de Zéphora, il croyait serrer Odette contre son cœur."
 :tokens 150
 :processed-at "2025-03-16T02:18:14.340937"
 :entities (list
  (entity :text "Jéthro." :label "ORG" :start 99 :end 106) (entity :text "Cette" :label "ORG" :start 476 :end 481) (entity :text "Jéthro," :label "ORG" :start 617 :end 624) (entity :text "Quand" :label "ORG" :start 734 :end 739) (entity :text "Botticelli," :label "ORG" :start 770 :end 781) (entity :text "Botticelli" :label "ORG" :start 799 :end 809) (entity :text "Zéphora," :label "ORG" :start 888 :end 896) (entity :text "Odette" :label "ORG" :start 915 :end 921)
 )
 :sentences (list
  (sentence :text "Il plaça sur sa table de travail, comme une photographie d’Odette, une
reproduction de la fille de Jéthro" :start 0 :end 105) (sentence :text "Il admirait les grands yeux, le
délicat visage qui laissait deviner la peau imparfaite, les boucles
merveilleuses des cheveux le long des joues fatiguées, et adaptant ce
qu’il trouvait beau jusque-là d’une façon esthétique à l’idée d’une
femme vivante, il le transformait en mérites physiques qu’il se
félicitait de trouver réunis dans un être qu’il pourrait posséder" :start 106 :end 474) (sentence :text "Cette vague sympathie qui nous porte vers un chef-d’œuvre que nous
regardons, maintenant qu’il connaissait l’original charnel de la fille
de Jéthro, elle devenait un désir qui suppléa désormais à celui que le
corps d’Odette ne lui avait pas d’abord inspiré" :start 475 :end 732) (sentence :text "Quand il avait
regardé longtemps ce Botticelli, il pensait à son Botticelli à lui
qu’il trouvait plus beau encore et approchant de lui la photographie
de Zéphora, il croyait serrer Odette contre son cœur" :start 733 :end 937)
 ))