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
 :text "Et tout d’un coup le souvenir m’est apparu. Ce goût c’était celui du petit
morceau de madeleine que le dimanche matin à Combray (parce que ce
jour-là je ne sortais pas avant l’heure de la messe), quand j’allais
lui dire bonjour dans sa chambre, ma tante Léonie m’offrait après
l’avoir trempé dans son infusion de thé ou de tilleul. La vue de la
petite madeleine ne m’avait rien rappelé avant que je n’y eusse goûté;
peut-être parce que, en ayant souvent aperçu depuis, sans en manger,
sur les tablettes des pâtissiers, leur image avait quitté ces jours de
Combray pour se lier à d’autres plus récents; peut-être parce que de
ces souvenirs abandonnés si longtemps hors de la mémoire, rien ne
survivait, tout s’était désagrégé; les formes,--et celle aussi du petit
coquillage de pâtisserie, si grassement sensuel, sous son plissage
sévère et dévot--s’étaient abolies, ou, ensommeillées, avaient perdu la
force d’expansion qui leur eût permis de rejoindre la conscience.
Mais, quand d’un passé ancien rien ne subsiste, après la mort des
êtres, après la destruction des choses, seules, plus frêles mais plus
vivaces, plus immatérielles, plus persistantes, plus fidèles, l’odeur
et la saveur restent encore longtemps, comme des âmes, à se rappeler,
à attendre, à espérer, sur la ruine de tout le reste, à porter sans
fléchir, sur leur gouttelette presque impalpable, l’édifice immense du
souvenir."
 :tokens 226
 :processed-at "2025-03-16T02:18:13.848926"
 :entities (list
  (entity :text "Combray" :label "ORG" :start 120 :end 127) (entity :text "Léonie" :label "ORG" :start 254 :end 260) (entity :text "Combray" :label "ORG" :start 556 :end 563) (entity :text "Mais," :label "ORG" :start 968 :end 973)
 )
 :sentences (list
  (sentence :text "Et tout d’un coup le souvenir m’est apparu" :start 0 :end 42) (sentence :text "Ce goût c’était celui du petit
morceau de madeleine que le dimanche matin à Combray (parce que ce
jour-là je ne sortais pas avant l’heure de la messe), quand j’allais
lui dire bonjour dans sa chambre, ma tante Léonie m’offrait après
l’avoir trempé dans son infusion de thé ou de tilleul" :start 43 :end 330) (sentence :text "La vue de la
petite madeleine ne m’avait rien rappelé avant que je n’y eusse goûté;
peut-être parce que, en ayant souvent aperçu depuis, sans en manger,
sur les tablettes des pâtissiers, leur image avait quitté ces jours de
Combray pour se lier à d’autres plus récents; peut-être parce que de
ces souvenirs abandonnés si longtemps hors de la mémoire, rien ne
survivait, tout s’était désagrégé; les formes,--et celle aussi du petit
coquillage de pâtisserie, si grassement sensuel, sous son plissage
sévère et dévot--s’étaient abolies, ou, ensommeillées, avaient perdu la
force d’expansion qui leur eût permis de rejoindre la conscience" :start 331 :end 966) (sentence :text "Mais, quand d’un passé ancien rien ne subsiste, après la mort des
êtres, après la destruction des choses, seules, plus frêles mais plus
vivaces, plus immatérielles, plus persistantes, plus fidèles, l’odeur
et la saveur restent encore longtemps, comme des âmes, à se rappeler,
à attendre, à espérer, sur la ruine de tout le reste, à porter sans
fléchir, sur leur gouttelette presque impalpable, l’édifice immense du
souvenir" :start 967 :end 1391)
 ))