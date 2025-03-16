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
 :text "--«Mais pourquoi veux-tu que ça l’ennuie, dit M. Verdurin, M. Swann ne
connaît peut-être pas la sonate en fa dièse que nous avons découverte,
il va nous jouer l’arrangement pour piano.»"
 :tokens 31
 :processed-at "2025-03-16T02:18:14.260209"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Verdurin," :label "ORG" :start 49 :end 58) (entity :text "Swann" :label "ORG" :start 62 :end 67)
 )
 :sentences (list
  (sentence :text "--«Mais pourquoi veux-tu que ça l’ennuie, dit M" :start 0 :end 47) (sentence :text "Verdurin, M" :start 48 :end 60) (sentence :text "Swann ne
connaît peut-être pas la sonate en fa dièse que nous avons découverte,
il va nous jouer l’arrangement pour piano" :start 61 :end 183) (sentence :text "»" :start 184 :end 185)
 ))