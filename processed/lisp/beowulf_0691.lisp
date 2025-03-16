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
 :text "Après dîner, si le rendez-vous au bois ou à Saint-Cloud était de bonne
heure, il partait si vite en sortant de table,--surtout si la pluie
menaçait de tomber et de faire rentrer plus tôt les «fidèles»,--qu’une
fois la princesse des Laumes (chez qui on avait dîné tard et que Swann
avait quittée avant qu’on servît le café pour rejoindre les Verdurin
dans l’île du Bois) dit:"
 :tokens 66
 :processed-at "2025-03-16T02:18:14.516794"
 :entities (list
  (entity :text "Saint-Cloud" :label "ORG" :start 44 :end 55) (entity :text "Laumes" :label "ORG" :start 232 :end 238) (entity :text "Swann" :label "ORG" :start 275 :end 280) (entity :text "Verdurin" :label "ORG" :start 341 :end 349) (entity :text "Bois)" :label "ORG" :start 364 :end 369)
 )
 :sentences (list
  (sentence :text "Après dîner, si le rendez-vous au bois ou à Saint-Cloud était de bonne
heure, il partait si vite en sortant de table,--surtout si la pluie
menaçait de tomber et de faire rentrer plus tôt les «fidèles»,--qu’une
fois la princesse des Laumes (chez qui on avait dîné tard et que Swann
avait quittée avant qu’on servît le café pour rejoindre les Verdurin
dans l’île du Bois) dit:" :start 0 :end 374)
 ))