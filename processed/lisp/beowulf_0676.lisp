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
 :text "Odette le vit s’éloigner avec regret, elle n’osa pas ne pas revenir
avec Swann, mais fut de mauvaise humeur en voiture, et quand il lui
demanda s’il devait entrer chez elle, elle lui dit: «Bien entendu» en
haussant les épaules avec impatience. Quand tous les invités furent
partis, Mme Verdurin dit à son mari:"
 :tokens 54
 :processed-at "2025-03-16T02:18:14.501143"
 :entities (list
  (entity :text "Odette" :label "ORG" :start 0 :end 6) (entity :text "Swann," :label "ORG" :start 73 :end 79) (entity :text "«Bien" :label "ORG" :start 188 :end 193) (entity :text "Quand" :label "ORG" :start 244 :end 249) (entity :text "Verdurin" :label "ORG" :start 286 :end 294)
 )
 :sentences (list
  (sentence :text "Odette le vit s’éloigner avec regret, elle n’osa pas ne pas revenir
avec Swann, mais fut de mauvaise humeur en voiture, et quand il lui
demanda s’il devait entrer chez elle, elle lui dit: «Bien entendu» en
haussant les épaules avec impatience" :start 0 :end 242) (sentence :text "Quand tous les invités furent
partis, Mme Verdurin dit à son mari:" :start 243 :end 310)
 ))