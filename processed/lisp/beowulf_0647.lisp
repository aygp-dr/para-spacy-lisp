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
 :text "Saniette qui, depuis qu’il avait rendu précipitamment au maître
d’hôtel son assiette encore pleine, s’était replongé dans un silence
méditatif, en sortit enfin pour raconter en riant l’histoire d’un
dîner qu’il avait fait avec le duc de La Trémoïlle et d’où il
résultait que celui-ci ne savait pas que George Sand était le
pseudonyme d’une femme. Swann qui avait de la sympathie pour Saniette
crut devoir lui donner sur la culture du duc des détails montrant
qu’une telle ignorance de la part de celui-ci était matériellement
impossible; mais tout d’un coup il s’arrêta, il venait de comprendre
que Saniette n’avait pas besoin de ces preuves et savait que
l’histoire était fausse pour la raison qu’il venait de l’inventer il y
avait un moment. Cet excellent homme souffrait d’être trouvé si
ennuyeux par les Verdurin; et ayant conscience d’avoir été plus terne
encore à ce dîner que d’habitude, il n’avait voulu le laisser finir
sans avoir réussi à amuser. Il capitula si vite, eut l’air si
malheureux de voir manqué l’effet sur lequel il avait compté et
répondit d’un ton si lâche à Swann pour que celui-ci ne s’acharnât pas
à une réfutation désormais inutile: «C’est bon, c’est bon; en tous
cas, même si je me trompe, ce n’est pas un crime, je pense» que Swann
aurait voulu pouvoir dire que l’histoire était vraie et délicieuse. Le
docteur qui les avait écoutés eut l’idée que c’était le cas de dire:
«Se non e vero», mais il n’était pas assez sûr des mots et craignit de
s’embrouiller."
 :tokens 255
 :processed-at "2025-03-16T02:18:14.472013"
 :entities (list
  (entity :text "Saniette" :label "ORG" :start 0 :end 8) (entity :text "Trémoïlle" :label "ORG" :start 240 :end 249) (entity :text "George" :label "ORG" :start 302 :end 308) (entity :text "Sand" :label "ORG" :start 309 :end 313) (entity :text "Swann" :label "ORG" :start 347 :end 352) (entity :text "Saniette" :label "ORG" :start 384 :end 392) (entity :text "Saniette" :label "ORG" :start 599 :end 607) (entity :text "Verdurin;" :label "ORG" :start 808 :end 817) (entity :text "Swann" :label "ORG" :start 1084 :end 1089) (entity :text "Swann" :label "ORG" :start 1257 :end 1262)
 )
 :sentences (list
  (sentence :text "Saniette qui, depuis qu’il avait rendu précipitamment au maître
d’hôtel son assiette encore pleine, s’était replongé dans un silence
méditatif, en sortit enfin pour raconter en riant l’histoire d’un
dîner qu’il avait fait avec le duc de La Trémoïlle et d’où il
résultait que celui-ci ne savait pas que George Sand était le
pseudonyme d’une femme" :start 0 :end 345) (sentence :text "Swann qui avait de la sympathie pour Saniette
crut devoir lui donner sur la culture du duc des détails montrant
qu’une telle ignorance de la part de celui-ci était matériellement
impossible; mais tout d’un coup il s’arrêta, il venait de comprendre
que Saniette n’avait pas besoin de ces preuves et savait que
l’histoire était fausse pour la raison qu’il venait de l’inventer il y
avait un moment" :start 346 :end 742) (sentence :text "Cet excellent homme souffrait d’être trouvé si
ennuyeux par les Verdurin; et ayant conscience d’avoir été plus terne
encore à ce dîner que d’habitude, il n’avait voulu le laisser finir
sans avoir réussi à amuser" :start 743 :end 955) (sentence :text "Il capitula si vite, eut l’air si
malheureux de voir manqué l’effet sur lequel il avait compté et
répondit d’un ton si lâche à Swann pour que celui-ci ne s’acharnât pas
à une réfutation désormais inutile: «C’est bon, c’est bon; en tous
cas, même si je me trompe, ce n’est pas un crime, je pense» que Swann
aurait voulu pouvoir dire que l’histoire était vraie et délicieuse" :start 956 :end 1329) (sentence :text "Le
docteur qui les avait écoutés eut l’idée que c’était le cas de dire:
«Se non e vero», mais il n’était pas assez sûr des mots et craignit de
s’embrouiller" :start 1330 :end 1487)
 ))