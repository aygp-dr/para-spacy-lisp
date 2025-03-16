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
 :text "Un genre d’esprit comme celui de Brichot aurait été tenu pour
stupidité pure dans la coterie où Swann avait passé sa jeunesse, bien
qu’il soit compatible avec une intelligence réelle. Et celle du
professeur, vigoureuse et bien nourrie, aurait probablement pu être
enviée par bien des gens du monde que Swann trouvait spirituels. Mais
ceux-ci avaient fini par lui inculquer si bien leurs goûts et leurs
répugnances, au moins en tout ce qui touche à la vie mondaine et même
en celle de ses parties annexes qui devrait plutôt relever du domaine
de l’intelligence: la conversation, que Swann ne put trouver les
plaisanteries de Brichot que pédantesques, vulgaires et grasses à
écœurer. Puis il était choqué, dans l’habitude qu’il avait des bonnes
manières, par le ton rude et militaire qu’affectait, en s’adressant à
chacun, l’universitaire cocardier. Enfin, peut-être avait-il surtout
perdu, ce soir-là, de son indulgence en voyant l’amabilité que Mme
Verdurin déployait pour ce Forcheville qu’Odette avait eu la
singulière idée d’amener. Un peu gênée vis-à-vis de Swann, elle lui
avait demandé en arrivant:"
 :tokens 175
 :processed-at "2025-03-16T02:18:14.426813"
 :entities (list
  (entity :text "Brichot" :label "ORG" :start 33 :end 40) (entity :text "Swann" :label "ORG" :start 96 :end 101) (entity :text "Swann" :label "ORG" :start 302 :end 307) (entity :text "Mais" :label "ORG" :start 329 :end 333) (entity :text "Swann" :label "ORG" :start 582 :end 587) (entity :text "Brichot" :label "ORG" :start 624 :end 631) (entity :text "Puis" :label "ORG" :start 682 :end 686) (entity :text "Enfin," :label "ORG" :start 848 :end 854) (entity :text "Verdurin" :label "ORG" :start 949 :end 957) (entity :text "Forcheville" :label "ORG" :start 976 :end 987) (entity :text "Swann," :label "ORG" :start 1062 :end 1068)
 )
 :sentences (list
  (sentence :text "Un genre d’esprit comme celui de Brichot aurait été tenu pour
stupidité pure dans la coterie où Swann avait passé sa jeunesse, bien
qu’il soit compatible avec une intelligence réelle" :start 0 :end 182) (sentence :text "Et celle du
professeur, vigoureuse et bien nourrie, aurait probablement pu être
enviée par bien des gens du monde que Swann trouvait spirituels" :start 183 :end 327) (sentence :text "Mais
ceux-ci avaient fini par lui inculquer si bien leurs goûts et leurs
répugnances, au moins en tout ce qui touche à la vie mondaine et même
en celle de ses parties annexes qui devrait plutôt relever du domaine
de l’intelligence: la conversation, que Swann ne put trouver les
plaisanteries de Brichot que pédantesques, vulgaires et grasses à
écœurer" :start 328 :end 680) (sentence :text "Puis il était choqué, dans l’habitude qu’il avait des bonnes
manières, par le ton rude et militaire qu’affectait, en s’adressant à
chacun, l’universitaire cocardier" :start 681 :end 846) (sentence :text "Enfin, peut-être avait-il surtout
perdu, ce soir-là, de son indulgence en voyant l’amabilité que Mme
Verdurin déployait pour ce Forcheville qu’Odette avait eu la
singulière idée d’amener" :start 847 :end 1034) (sentence :text "Un peu gênée vis-à-vis de Swann, elle lui
avait demandé en arrivant:" :start 1035 :end 1104)
 ))