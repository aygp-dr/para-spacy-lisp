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
 :text "D’un côté de son lit était une grande commode jaune en bois de
citronnier et une table qui tenait à la fois de l’officine et du
maître-autel, où, au-dessus d’une statuette de la Vierge et d’une
bouteille de Vichy-Célestins, on trouvait des livres de messe et des
ordonnances de médicaments, tous ce qu’il fallait pour suivre de son
lit les offices et son régime, pour ne manquer l’heure ni de la
pepsine, ni des vêpres. De l’autre côté, son lit longeait la fenêtre,
elle avait la rue sous les yeux et y lisait du matin au soir, pour se
désennuyer, à la façon des princes persans, la chronique quotidienne
mais immémoriale de Combray, qu’elle commentait ensuite avec
Françoise."
 :tokens 118
 :processed-at "2025-03-16T02:18:13.856739"
 :entities (list
  (entity :text "Vierge" :label "ORG" :start 178 :end 184) (entity :text "Vichy-Célestins," :label "ORG" :start 207 :end 223) (entity :text "Combray," :label "ORG" :start 625 :end 633) (entity :text "Françoise." :label "ORG" :start 666 :end 676)
 )
 :sentences (list
  (sentence :text "D’un côté de son lit était une grande commode jaune en bois de
citronnier et une table qui tenait à la fois de l’officine et du
maître-autel, où, au-dessus d’une statuette de la Vierge et d’une
bouteille de Vichy-Célestins, on trouvait des livres de messe et des
ordonnances de médicaments, tous ce qu’il fallait pour suivre de son
lit les offices et son régime, pour ne manquer l’heure ni de la
pepsine, ni des vêpres" :start 0 :end 418) (sentence :text "De l’autre côté, son lit longeait la fenêtre,
elle avait la rue sous les yeux et y lisait du matin au soir, pour se
désennuyer, à la façon des princes persans, la chronique quotidienne
mais immémoriale de Combray, qu’elle commentait ensuite avec
Françoise" :start 419 :end 675)
 ))