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
 :text "Si, quand son petit-fils était un peu enrhumé du cerveau, elle partait
la nuit, même malade, au lieu de se coucher, pour voir s’il n’avait
besoin de rien, faisant quatre lieues à pied avant le jour afin d’être
rentrée pour son travail, en revanche ce même amour des siens et son
désir d’assurer la grandeur future de sa maison se traduisait dans sa
politique à l’égard des autres domestiques par une maxime constante
qui fut de n’en jamais laisser un seul s’implanter chez ma tante,
qu’elle mettait d’ailleurs une sorte d’orgueil à ne laisser approcher
par personne, préférant, quand elle-même était malade, se relever pour
lui donner son eau de Vichy plutôt que de permettre l’accès de la
chambre de sa maîtresse à la fille de cuisine. Et comme cet
hyménoptère observé par Fabre, la guêpe fouisseuse, qui pour que ses
petits après sa mort aient de la viande fraîche à manger, appelle
l’anatomie au secours de sa cruauté et, ayant capturé des charançons
et des araignées, leur perce avec un savoir et une adresse merveilleux
le centre nerveux d’où dépend le mouvement des pattes, mais non les
autres fonctions de la vie, de façon que l’insecte paralysé près
duquel elle dépose ses œufs, fournisse aux larves, quand elles
écloront un gibier docile, inoffensif, incapable de fuite ou de
résistance, mais nullement faisandé, Françoise trouvait pour servir sa
volonté permanente de rendre la maison intenable à tout domestique,
des ruses si savantes et si impitoyables que, bien des années plus
tard, nous apprîmes que si cet été-là nous avions mangé presque tous
les jours des asperges, c’était parce que leur odeur donnait à la
pauvre fille de cuisine chargée de les éplucher des crises d’asthme
d’une telle violence qu’elle fut obligée de finir par s’en aller."
 :tokens 296
 :processed-at "2025-03-16T02:18:14.075305"
 :entities (list
  (entity :text "Vichy" :label "ORG" :start 646 :end 651) (entity :text "Fabre," :label "ORG" :start 774 :end 780) (entity :text "Françoise" :label "ORG" :start 1322 :end 1331)
 )
 :sentences (list
  (sentence :text "Si, quand son petit-fils était un peu enrhumé du cerveau, elle partait
la nuit, même malade, au lieu de se coucher, pour voir s’il n’avait
besoin de rien, faisant quatre lieues à pied avant le jour afin d’être
rentrée pour son travail, en revanche ce même amour des siens et son
désir d’assurer la grandeur future de sa maison se traduisait dans sa
politique à l’égard des autres domestiques par une maxime constante
qui fut de n’en jamais laisser un seul s’implanter chez ma tante,
qu’elle mettait d’ailleurs une sorte d’orgueil à ne laisser approcher
par personne, préférant, quand elle-même était malade, se relever pour
lui donner son eau de Vichy plutôt que de permettre l’accès de la
chambre de sa maîtresse à la fille de cuisine" :start 0 :end 735) (sentence :text "Et comme cet
hyménoptère observé par Fabre, la guêpe fouisseuse, qui pour que ses
petits après sa mort aient de la viande fraîche à manger, appelle
l’anatomie au secours de sa cruauté et, ayant capturé des charançons
et des araignées, leur perce avec un savoir et une adresse merveilleux
le centre nerveux d’où dépend le mouvement des pattes, mais non les
autres fonctions de la vie, de façon que l’insecte paralysé près
duquel elle dépose ses œufs, fournisse aux larves, quand elles
écloront un gibier docile, inoffensif, incapable de fuite ou de
résistance, mais nullement faisandé, Françoise trouvait pour servir sa
volonté permanente de rendre la maison intenable à tout domestique,
des ruses si savantes et si impitoyables que, bien des années plus
tard, nous apprîmes que si cet été-là nous avions mangé presque tous
les jours des asperges, c’était parce que leur odeur donnait à la
pauvre fille de cuisine chargée de les éplucher des crises d’asthme
d’une telle violence qu’elle fut obligée de finir par s’en aller" :start 736 :end 1758)
 ))