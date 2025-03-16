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
 :text "Elle n’était pas chez Prévost; il voulut chercher dans tous les
restaurants des boulevards. Pour gagner du temps, pendant qu’il
visitait les uns, il envoya dans les autres son cocher Rémi (le doge
Lorédan de Rizzo) qu’il alla attendre ensuite--n’ayant rien trouvé
lui-même--à l’endroit qu’il lui avait désigné. La voiture ne revenait
pas et Swann se représentait le moment qui approchait, à la fois comme
celui où Rémi lui dirait: «Cette dame est là», et comme celui où Rémi
lui dirait, «cette dame n’était dans aucun des cafés.» Et ainsi il
voyait la fin de la soirée devant lui, une et pourtant alternative,
précédée soit par la rencontre d’Odette qui abolirait son angoisse,
soit, par le renoncement forcé à la trouver ce soir, par l’acceptation
de rentrer chez lui sans l’avoir vue."
 :tokens 132
 :processed-at "2025-03-16T02:18:14.359326"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Prévost;" :label "ORG" :start 22 :end 30) (entity :text "Pour" :label "ORG" :start 92 :end 96) (entity :text "Rémi" :label "ORG" :start 183 :end 187) (entity :text "Lorédan" :label "ORG" :start 197 :end 204) (entity :text "Rizzo)" :label "ORG" :start 208 :end 214) (entity :text "Swann" :label "ORG" :start 341 :end 346) (entity :text "Rémi" :label "ORG" :start 414 :end 418) (entity :text "«Cette" :label "ORG" :start 431 :end 437) (entity :text "Rémi" :label "ORG" :start 470 :end 474)
 )
 :sentences (list
  (sentence :text "Elle n’était pas chez Prévost; il voulut chercher dans tous les
restaurants des boulevards" :start 0 :end 90) (sentence :text "Pour gagner du temps, pendant qu’il
visitait les uns, il envoya dans les autres son cocher Rémi (le doge
Lorédan de Rizzo) qu’il alla attendre ensuite--n’ayant rien trouvé
lui-même--à l’endroit qu’il lui avait désigné" :start 91 :end 309) (sentence :text "La voiture ne revenait
pas et Swann se représentait le moment qui approchait, à la fois comme
celui où Rémi lui dirait: «Cette dame est là», et comme celui où Rémi
lui dirait, «cette dame n’était dans aucun des cafés" :start 310 :end 527) (sentence :text "» Et ainsi il
voyait la fin de la soirée devant lui, une et pourtant alternative,
précédée soit par la rencontre d’Odette qui abolirait son angoisse,
soit, par le renoncement forcé à la trouver ce soir, par l’acceptation
de rentrer chez lui sans l’avoir vue" :start 528 :end 785)
 ))