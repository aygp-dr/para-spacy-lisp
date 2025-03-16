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
 :text "L’habit noir était défendu parce qu’on était entre «copains» et pour
ne pas ressembler aux «ennuyeux» dont on se garait comme de la peste
et qu’on n’invitait qu’aux grandes soirées, données le plus rarement
possible et seulement si cela pouvait amuser le peintre ou faire
connaître le musicien. Le reste du temps on se contentait de jouer des
charades, de souper en costumes, mais entre soi, en ne mêlant aucun
étranger au petit «noyau»."
 :tokens 74
 :processed-at "2025-03-16T02:18:14.205664"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "L’habit noir était défendu parce qu’on était entre «copains» et pour
ne pas ressembler aux «ennuyeux» dont on se garait comme de la peste
et qu’on n’invitait qu’aux grandes soirées, données le plus rarement
possible et seulement si cela pouvait amuser le peintre ou faire
connaître le musicien" :start 0 :end 293) (sentence :text "Le reste du temps on se contentait de jouer des
charades, de souper en costumes, mais entre soi, en ne mêlant aucun
étranger au petit «noyau»" :start 294 :end 436)
 ))