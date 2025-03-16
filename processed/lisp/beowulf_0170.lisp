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
 :text "Mais Françoise se hâtait de rejoindre ma tante, je retournais à mon
livre, les domestiques se réinstallaient devant la porte à regarder
tomber la poussière et l’émotion qu’avaient soulevées les soldats.
Longtemps après que l’accalmie était venue, un flot inaccoutumé de
promeneurs noircissait encore les rues de Combray. Et devant chaque
maison, même celles où ce n’était pas l’habitude, les domestiques ou
même les maîtres, assis et regardant, festonnaient le seuil d’un
liséré capricieux et sombre comme celui des algues et des coquilles
dont une forte marée laisse le crêpe et la broderie au rivage, après
qu’elle s’est éloignée."
 :tokens 99
 :processed-at "2025-03-16T02:18:13.962571"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Françoise" :label "ORG" :start 5 :end 14) (entity :text "Longtemps" :label "ORG" :start 203 :end 212) (entity :text "Combray." :label "ORG" :start 312 :end 320)
 )
 :sentences (list
  (sentence :text "Mais Françoise se hâtait de rejoindre ma tante, je retournais à mon
livre, les domestiques se réinstallaient devant la porte à regarder
tomber la poussière et l’émotion qu’avaient soulevées les soldats" :start 0 :end 201) (sentence :text "Longtemps après que l’accalmie était venue, un flot inaccoutumé de
promeneurs noircissait encore les rues de Combray" :start 202 :end 319) (sentence :text "Et devant chaque
maison, même celles où ce n’était pas l’habitude, les domestiques ou
même les maîtres, assis et regardant, festonnaient le seuil d’un
liséré capricieux et sombre comme celui des algues et des coquilles
dont une forte marée laisse le crêpe et la broderie au rivage, après
qu’elle s’est éloignée" :start 320 :end 631)
 ))