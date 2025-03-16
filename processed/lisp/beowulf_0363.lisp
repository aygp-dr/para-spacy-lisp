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
 :text "Parfois, au bord de l’eau entourée de bois, nous rencontrions une
maison dite de plaisance, isolée, perdue, qui ne voyait rien, du
monde, que la rivière qui baignait ses pieds. Une jeune femme dont le
visage pensif et les voiles élégants n’étaient pas de ce pays et qui
sans doute était venue, selon l’expression populaire «s’enterrer» là,
goûter le plaisir amer de sentir que son nom, le nom surtout de celui
dont elle n’avait pu garder le cœur, y était inconnu, s’encadrait dans
la fenêtre qui ne lui laissait pas regarder plus loin que la barque
amarrée près de la porte. Elle levait distraitement les yeux en
entendant derrière les arbres de la rive la voix des passants dont
avant qu’elle eût aperçu leur visage, elle pouvait être certaine que
jamais ils n’avaient connu, ni ne connaîtraient l’infidèle, que rien
dans leur passé ne gardait sa marque, que rien dans leur avenir
n’aurait l’occasion de la recevoir. On sentait que, dans son
renoncement, elle avait volontairement quitté des lieux où elle aurait
pu du moins apercevoir celui qu’elle aimait, pour ceux-ci qui ne
l’avaient jamais vu. Et je la regardais, revenant de quelque promenade
sur un chemin où elle savait qu’il ne passerait pas, ôter de ses mains
résignées de longs gants d’une grâce inutile."
 :tokens 215
 :processed-at "2025-03-16T02:18:14.177512"
 :entities (list
  (entity :text "Parfois," :label "ORG" :start 0 :end 8) (entity :text "Elle" :label "ORG" :start 575 :end 579)
 )
 :sentences (list
  (sentence :text "Parfois, au bord de l’eau entourée de bois, nous rencontrions une
maison dite de plaisance, isolée, perdue, qui ne voyait rien, du
monde, que la rivière qui baignait ses pieds" :start 0 :end 175) (sentence :text "Une jeune femme dont le
visage pensif et les voiles élégants n’étaient pas de ce pays et qui
sans doute était venue, selon l’expression populaire «s’enterrer» là,
goûter le plaisir amer de sentir que son nom, le nom surtout de celui
dont elle n’avait pu garder le cœur, y était inconnu, s’encadrait dans
la fenêtre qui ne lui laissait pas regarder plus loin que la barque
amarrée près de la porte" :start 176 :end 573) (sentence :text "Elle levait distraitement les yeux en
entendant derrière les arbres de la rive la voix des passants dont
avant qu’elle eût aperçu leur visage, elle pouvait être certaine que
jamais ils n’avaient connu, ni ne connaîtraient l’infidèle, que rien
dans leur passé ne gardait sa marque, que rien dans leur avenir
n’aurait l’occasion de la recevoir" :start 574 :end 916) (sentence :text "On sentait que, dans son
renoncement, elle avait volontairement quitté des lieux où elle aurait
pu du moins apercevoir celui qu’elle aimait, pour ceux-ci qui ne
l’avaient jamais vu" :start 917 :end 1098) (sentence :text "Et je la regardais, revenant de quelque promenade
sur un chemin où elle savait qu’il ne passerait pas, ôter de ses mains
résignées de longs gants d’une grâce inutile" :start 1099 :end 1265)
 ))