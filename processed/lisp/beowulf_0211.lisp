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
 :text "--Je crois dans sa petite plaquette sur Racine, mais elle doit être
épuisée. Il y a peut-être eu cependant une réimpression. Je
m’informerai. Je peux d’ailleurs demander à Bergotte tout ce que vous
voulez, il n’y a pas de semaine dans l’année où il ne dîne à la
maison. C’est le grand ami de ma fille. Ils vont ensemble visiter les
vieilles villes, les cathédrales, les châteaux."
 :tokens 67
 :processed-at "2025-03-16T02:18:13.999494"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Racine," :label "ORG" :start 40 :end 47) (entity :text "Bergotte" :label "ORG" :start 172 :end 180)
 )
 :sentences (list
  (sentence :text "--Je crois dans sa petite plaquette sur Racine, mais elle doit être
épuisée" :start 0 :end 75) (sentence :text "Il y a peut-être eu cependant une réimpression" :start 76 :end 123) (sentence :text "Je
m’informerai" :start 124 :end 140) (sentence :text "Je peux d’ailleurs demander à Bergotte tout ce que vous
voulez, il n’y a pas de semaine dans l’année où il ne dîne à la
maison" :start 141 :end 268) (sentence :text "C’est le grand ami de ma fille" :start 269 :end 300) (sentence :text "Ils vont ensemble visiter les
vieilles villes, les cathédrales, les châteaux" :start 301 :end 378)
 ))