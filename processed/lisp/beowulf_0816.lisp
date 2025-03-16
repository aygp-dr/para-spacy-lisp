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
 :text "Le baron lui promit d’aller faire la visite qu’il désirait après qu’il
l’aurait conduit jusqu’à la porte de l’hôtel Saint-Euverte, où Swann
arriva tranquillisé par la pensée que M. de Charlus passerait la
soirée rue La Pérouse, mais dans un état de mélancolique indifférence
à toutes les choses qui ne touchaient pas Odette, et en particulier
aux choses mondaines, qui leur donnait le charme de ce qui, n’étant
plus un but pour notre volonté, nous apparaît en soi-même. Dès sa
descente de voiture, au premier plan de ce résumé fictif de leur vie
domestique que les maîtresses de maison prétendent offrir à leurs
invités les jours de cérémonie et où elles cherchent à respecter la
vérité du costume et celle du décor, Swann prit plaisir à voir les
héritiers des «tigres» de Balzac, les grooms, suivants ordinaires de
la promenade, qui, chapeautés et bottés, restaient dehors devant
l’hôtel sur le sol de l’avenue, ou devant les écuries, comme des
jardiniers auraient été rangés à l’entrée de leurs parterres. La
disposition particulière qu’il avait toujours eue à chercher des
analogies entre les êtres vivants et les portraits des musées
s’exerçait encore mais d’une façon plus constante et plus générale;
c’est la vie mondaine tout entière, maintenant qu’il en était détaché,
qui se présentait à lui comme une suite de tableaux. Dans le vestibule
où, autrefois, quand il était un mondain, il entrait enveloppé dans
son pardessus pour en sortir en frac, mais sans savoir ce qui s’y
était passé, étant par la pensée, pendant les quelques instants qu’il
y séjournait, ou bien encore dans la fête qu’il venait de quitter, ou
bien déjà dans la fête où on allait l’introduire, pour la première
fois il remarqua, réveillée par l’arrivée inopinée d’un invité aussi
tardif, la meute éparse, magnifique et désœuvrée de grands valets de
pied qui dormaient çà et là sur des banquettes et des coffres et qui,
soulevant leurs nobles profils aigus de lévriers, se dressèrent et,
rassemblés, formèrent le cercle autour de lui."
 :tokens 334
 :processed-at "2025-03-16T02:18:14.653004"
 :entities (list
  (entity :text "Saint-Euverte," :label "ORG" :start 116 :end 130) (entity :text "Swann" :label "ORG" :start 134 :end 139) (entity :text "Charlus" :label "ORG" :start 184 :end 191) (entity :text "Pérouse," :label "ORG" :start 219 :end 227) (entity :text "Odette," :label "ORG" :start 317 :end 324) (entity :text "Swann" :label "ORG" :start 717 :end 722) (entity :text "Balzac," :label "ORG" :start 773 :end 780) (entity :text "Dans" :label "ORG" :start 1330 :end 1334)
 )
 :sentences (list
  (sentence :text "Le baron lui promit d’aller faire la visite qu’il désirait après qu’il
l’aurait conduit jusqu’à la porte de l’hôtel Saint-Euverte, où Swann
arriva tranquillisé par la pensée que M" :start 0 :end 179) (sentence :text "de Charlus passerait la
soirée rue La Pérouse, mais dans un état de mélancolique indifférence
à toutes les choses qui ne touchaient pas Odette, et en particulier
aux choses mondaines, qui leur donnait le charme de ce qui, n’étant
plus un but pour notre volonté, nous apparaît en soi-même" :start 180 :end 468) (sentence :text "Dès sa
descente de voiture, au premier plan de ce résumé fictif de leur vie
domestique que les maîtresses de maison prétendent offrir à leurs
invités les jours de cérémonie et où elles cherchent à respecter la
vérité du costume et celle du décor, Swann prit plaisir à voir les
héritiers des «tigres» de Balzac, les grooms, suivants ordinaires de
la promenade, qui, chapeautés et bottés, restaient dehors devant
l’hôtel sur le sol de l’avenue, ou devant les écuries, comme des
jardiniers auraient été rangés à l’entrée de leurs parterres" :start 469 :end 1006) (sentence :text "La
disposition particulière qu’il avait toujours eue à chercher des
analogies entre les êtres vivants et les portraits des musées
s’exerçait encore mais d’une façon plus constante et plus générale;
c’est la vie mondaine tout entière, maintenant qu’il en était détaché,
qui se présentait à lui comme une suite de tableaux" :start 1007 :end 1328) (sentence :text "Dans le vestibule
où, autrefois, quand il était un mondain, il entrait enveloppé dans
son pardessus pour en sortir en frac, mais sans savoir ce qui s’y
était passé, étant par la pensée, pendant les quelques instants qu’il
y séjournait, ou bien encore dans la fête qu’il venait de quitter, ou
bien déjà dans la fête où on allait l’introduire, pour la première
fois il remarqua, réveillée par l’arrivée inopinée d’un invité aussi
tardif, la meute éparse, magnifique et désœuvrée de grands valets de
pied qui dormaient çà et là sur des banquettes et des coffres et qui,
soulevant leurs nobles profils aigus de lévriers, se dressèrent et,
rassemblés, formèrent le cercle autour de lui" :start 1329 :end 2010)
 ))