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
 :text "--Ah! dit-il à la cantonade, pour être entendu à la fois de Mme de
Saint-Euverte à qui il parlait et de Mme des Laumes pour qui il
parlait, voici la charmante princesse! Voyez, elle est venue tout
exprès de Guermantes pour entendre le Saint-François d’Assise de Liszt
et elle n’a eu le temps, comme une jolie mésange, que d’aller piquer
pour les mettre sur sa tête quelques petits fruits de prunier des
oiseaux et d’aubépine; il y a même encore de petites gouttes de rosée,
un peu de la gelée blanche qui doit faire gémir la duchesse. C’est
très joli, ma chère princesse."
 :tokens 103
 :processed-at "2025-03-16T02:18:14.709839"
 :entities (list
  (entity :text "--Ah!" :label "ORG" :start 0 :end 5) (entity :text "Saint-Euverte" :label "ORG" :start 67 :end 80) (entity :text "Laumes" :label "ORG" :start 112 :end 118) (entity :text "Voyez," :label "ORG" :start 170 :end 176) (entity :text "Guermantes" :label "ORG" :start 207 :end 217) (entity :text "Saint-François" :label "ORG" :start 235 :end 249) (entity :text "Liszt" :label "ORG" :start 262 :end 267)
 )
 :sentences (list
  (sentence :text "--Ah! dit-il à la cantonade, pour être entendu à la fois de Mme de
Saint-Euverte à qui il parlait et de Mme des Laumes pour qui il
parlait, voici la charmante princesse! Voyez, elle est venue tout
exprès de Guermantes pour entendre le Saint-François d’Assise de Liszt
et elle n’a eu le temps, comme une jolie mésange, que d’aller piquer
pour les mettre sur sa tête quelques petits fruits de prunier des
oiseaux et d’aubépine; il y a même encore de petites gouttes de rosée,
un peu de la gelée blanche qui doit faire gémir la duchesse" :start 0 :end 533) (sentence :text "C’est
très joli, ma chère princesse" :start 534 :end 570)
 ))