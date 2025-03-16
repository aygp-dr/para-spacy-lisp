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
 :text "Et quittant sa cousine mortifiée, elle éclata de nouveau d’un rire qui
scandalisa les personnes qui écoutaient la musique, mais attira
l’attention de Mme de Saint-Euverte, restée par politesse près du
piano et qui aperçut seulement alors la princesse. Mme de
Saint-Euverte était d’autant plus ravie de voir Mme des Laumes qu’elle
la croyait encore à Guermantes en train de soigner son beau-père
malade."
 :tokens 64
 :processed-at "2025-03-16T02:18:14.683297"
 :entities (list
  (entity :text "Saint-Euverte," :label "ORG" :start 157 :end 171) (entity :text "Saint-Euverte" :label "ORG" :start 259 :end 272) (entity :text "Laumes" :label "ORG" :start 315 :end 321) (entity :text "Guermantes" :label "ORG" :start 350 :end 360)
 )
 :sentences (list
  (sentence :text "Et quittant sa cousine mortifiée, elle éclata de nouveau d’un rire qui
scandalisa les personnes qui écoutaient la musique, mais attira
l’attention de Mme de Saint-Euverte, restée par politesse près du
piano et qui aperçut seulement alors la princesse" :start 0 :end 250) (sentence :text "Mme de
Saint-Euverte était d’autant plus ravie de voir Mme des Laumes qu’elle
la croyait encore à Guermantes en train de soigner son beau-père
malade" :start 251 :end 401)
 ))