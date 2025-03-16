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
 :text "--Que veux-tu? cela ne fait rien, mais c’est malheureux que tu ne
puisses pas me dire le nom. De pouvoir me représenter la personne,
cela m’empêcherait de plus jamais y penser. Je le dis pour toi parce
que je ne t’ennuierais plus. C’est si calmant de se représenter les
choses. Ce qui est affreux c’est ce qu’on ne peut pas imaginer. Mais
tu as déjà été si gentille, je ne veux pas te fatiguer. Je te remercie
de tout mon cœur de tout le bien que tu m’as fait. C’est fini.
Seulement ce mot: «Il y a combien de temps?»"
 :tokens 100
 :processed-at "2025-03-16T02:18:14.782855"
 :entities (list
  (entity :text "--Que" :label "ORG" :start 0 :end 5) (entity :text "Mais" :label "ORG" :start 334 :end 338) (entity :text "Seulement" :label "ORG" :start 473 :end 482)
 )
 :sentences (list
  (sentence :text "--Que veux-tu? cela ne fait rien, mais c’est malheureux que tu ne
puisses pas me dire le nom" :start 0 :end 92) (sentence :text "De pouvoir me représenter la personne,
cela m’empêcherait de plus jamais y penser" :start 93 :end 175) (sentence :text "Je le dis pour toi parce
que je ne t’ennuierais plus" :start 176 :end 229) (sentence :text "C’est si calmant de se représenter les
choses" :start 230 :end 276) (sentence :text "Ce qui est affreux c’est ce qu’on ne peut pas imaginer" :start 277 :end 332) (sentence :text "Mais
tu as déjà été si gentille, je ne veux pas te fatiguer" :start 333 :end 393) (sentence :text "Je te remercie
de tout mon cœur de tout le bien que tu m’as fait" :start 394 :end 459) (sentence :text "C’est fini" :start 460 :end 471) (sentence :text "Seulement ce mot: «Il y a combien de temps?»" :start 472 :end 517)
 ))