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
 :text "--«Il paraît que c’est une bête bien affable», ajoutait Françoise qui
tenait le renseignement de Théodore, «spirituelle comme une personne,
toujours de bonne humeur, toujours aimable, toujours quelque chose de
gracieux. C’est rare qu’une bête qui n’a que cet âge-là soit déjà si
galante. Madame Octave, il va falloir que je vous quitte, je n’ai pas
le temps de m’amuser, voilà bientôt dix heures, mon fourneau n’est
seulement pas éclairé, et j’ai encore à plumer mes asperges.»"
 :tokens 77
 :processed-at "2025-03-16T02:18:13.887645"
 :entities (list
  (entity :text "--«Il" :label "ORG" :start 0 :end 5) (entity :text "Françoise" :label "ORG" :start 56 :end 65) (entity :text "Théodore," :label "ORG" :start 97 :end 106) (entity :text "Madame" :label "ORG" :start 288 :end 294) (entity :text "Octave," :label "ORG" :start 295 :end 302)
 )
 :sentences (list
  (sentence :text "--«Il paraît que c’est une bête bien affable», ajoutait Françoise qui
tenait le renseignement de Théodore, «spirituelle comme une personne,
toujours de bonne humeur, toujours aimable, toujours quelque chose de
gracieux" :start 0 :end 218) (sentence :text "C’est rare qu’une bête qui n’a que cet âge-là soit déjà si
galante" :start 219 :end 286) (sentence :text "Madame Octave, il va falloir que je vous quitte, je n’ai pas
le temps de m’amuser, voilà bientôt dix heures, mon fourneau n’est
seulement pas éclairé, et j’ai encore à plumer mes asperges" :start 287 :end 475) (sentence :text "»" :start 44 :end 45)
 ))