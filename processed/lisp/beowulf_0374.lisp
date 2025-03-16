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
 :text "Sans me dire que ce qui était caché derrière les clochers de
Martinville devait être quelque chose d’analogue à une jolie phrase,
puisque c’était sous la forme de mots qui me faisaient plaisir, que
cela m’était apparu, demandant un crayon et du papier au docteur, je
composai malgré les cahots de la voiture, pour soulager ma conscience
et obéir à mon enthousiasme, le petit morceau suivant que j’ai
retrouvé depuis et auquel je n’ai eu à faire subir que peu de
changements:"
 :tokens 82
 :processed-at "2025-03-16T02:18:14.192725"
 :entities (list
  (entity :text "Sans" :label "ORG" :start 0 :end 4) (entity :text "Martinville" :label "ORG" :start 61 :end 72)
 )
 :sentences (list
  (sentence :text "Sans me dire que ce qui était caché derrière les clochers de
Martinville devait être quelque chose d’analogue à une jolie phrase,
puisque c’était sous la forme de mots qui me faisaient plaisir, que
cela m’était apparu, demandant un crayon et du papier au docteur, je
composai malgré les cahots de la voiture, pour soulager ma conscience
et obéir à mon enthousiasme, le petit morceau suivant que j’ai
retrouvé depuis et auquel je n’ai eu à faire subir que peu de
changements:" :start 0 :end 474)
 ))