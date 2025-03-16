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
 :text "--«Ah! je vous crois qu’ils ne doivent pas être amusants ces déjeuners,
vous avez de la vertu d’y aller, dit Mme Verdurin, à qui le Président
de la République apparaissait comme un ennuyeux particulièrement
redoutable parce qu’il disposait de moyens de séduction et de
contrainte qui, employés à l’égard des fidèles, eussent été capables
de les faire lâcher. Il paraît qu’il est sourd comme un pot et qu’il
mange avec ses doigts.»"
 :tokens 72
 :processed-at "2025-03-16T02:18:14.321504"
 :entities (list
  (entity :text "--«Ah!" :label "ORG" :start 0 :end 6) (entity :text "Verdurin," :label "ORG" :start 113 :end 122) (entity :text "Président" :label "ORG" :start 132 :end 141) (entity :text "République" :label "ORG" :start 148 :end 158)
 )
 :sentences (list
  (sentence :text "--«Ah! je vous crois qu’ils ne doivent pas être amusants ces déjeuners,
vous avez de la vertu d’y aller, dit Mme Verdurin, à qui le Président
de la République apparaissait comme un ennuyeux particulièrement
redoutable parce qu’il disposait de moyens de séduction et de
contrainte qui, employés à l’égard des fidèles, eussent été capables
de les faire lâcher" :start 0 :end 357) (sentence :text "Il paraît qu’il est sourd comme un pot et qu’il
mange avec ses doigts" :start 358 :end 428) (sentence :text "»" :start 429 :end 430)
 ))