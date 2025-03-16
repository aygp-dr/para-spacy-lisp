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
 :text "Mais si l’on avait dit à ma grand’mère que ce Swann qui, en tant que
fils Swann était parfaitement «qualifié» pour être reçu par toute la
«belle bourgeoisie», par les notaires ou les avoués les plus estimés
de Paris (privilège qu’il semblait laisser tomber un peu en
quenouille), avait, comme en cachette, une vie toute différente; qu’en
sortant de chez nous, à Paris, après nous avoir dit qu’il rentrait se
coucher, il rebroussait chemin à peine la rue tournée et se rendait
dans tel salon que jamais l’œil d’aucun agent ou associé d’agent ne
contempla, cela eût paru aussi extraordinaire à ma tante qu’aurait pu
l’être pour une dame plus lettrée la pensée d’être personnellement
liée avec Aristée dont elle aurait compris qu’il allait, après avoir
causé avec elle, plonger au sein des royaumes de Thétis, dans un
empire soustrait aux yeux des mortels et où Virgile nous le montre
reçu à bras ouverts; ou, pour s’en tenir à une image qui avait plus de
chance de lui venir à l’esprit, car elle l’avait vue peinte sur nos
assiettes à petits fours de Combray--d’avoir eu à dîner Ali-Baba,
lequel quand il se saura seul, pénétrera dans la caverne, éblouissante
de trésors insoupçonnés."
 :tokens 202
 :processed-at "2025-03-16T02:18:13.800434"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 46 :end 51) (entity :text "Swann" :label "ORG" :start 74 :end 79) (entity :text "Paris" :label "ORG" :start 210 :end 215) (entity :text "Paris," :label "ORG" :start 362 :end 368) (entity :text "Thétis," :label "ORG" :start 799 :end 806) (entity :text "Virgile" :label "ORG" :start 859 :end 866)
 )
 :sentences (list
  (sentence :text "Mais si l’on avait dit à ma grand’mère que ce Swann qui, en tant que
fils Swann était parfaitement «qualifié» pour être reçu par toute la
«belle bourgeoisie», par les notaires ou les avoués les plus estimés
de Paris (privilège qu’il semblait laisser tomber un peu en
quenouille), avait, comme en cachette, une vie toute différente; qu’en
sortant de chez nous, à Paris, après nous avoir dit qu’il rentrait se
coucher, il rebroussait chemin à peine la rue tournée et se rendait
dans tel salon que jamais l’œil d’aucun agent ou associé d’agent ne
contempla, cela eût paru aussi extraordinaire à ma tante qu’aurait pu
l’être pour une dame plus lettrée la pensée d’être personnellement
liée avec Aristée dont elle aurait compris qu’il allait, après avoir
causé avec elle, plonger au sein des royaumes de Thétis, dans un
empire soustrait aux yeux des mortels et où Virgile nous le montre
reçu à bras ouverts; ou, pour s’en tenir à une image qui avait plus de
chance de lui venir à l’esprit, car elle l’avait vue peinte sur nos
assiettes à petits fours de Combray--d’avoir eu à dîner Ali-Baba,
lequel quand il se saura seul, pénétrera dans la caverne, éblouissante
de trésors insoupçonnés" :start 0 :end 1181)
 ))