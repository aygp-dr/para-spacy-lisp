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
 :text "L’ambition mondaine était un sentiment que ma grand’mère était si
incapable de ressentir et presque de comprendre qu’il lui paraissait
bien inutile de mettre tant d’ardeur à la flétrir. De plus elle ne
trouvait pas de très bon goût que M. Legrandin dont la sœur était
mariée près de Balbec avec un gentilhomme bas-normand se livrât à des
attaques aussi violentes encore les nobles, allant jusqu’à reprocher à
la Révolution de ne les avoir pas tous guillotinés."
 :tokens 77
 :processed-at "2025-03-16T02:18:13.905806"
 :entities (list
  (entity :text "Legrandin" :label "ORG" :start 239 :end 248) (entity :text "Balbec" :label "ORG" :start 283 :end 289) (entity :text "Révolution" :label "ORG" :start 412 :end 422)
 )
 :sentences (list
  (sentence :text "L’ambition mondaine était un sentiment que ma grand’mère était si
incapable de ressentir et presque de comprendre qu’il lui paraissait
bien inutile de mettre tant d’ardeur à la flétrir" :start 0 :end 184) (sentence :text "De plus elle ne
trouvait pas de très bon goût que M" :start 185 :end 237) (sentence :text "Legrandin dont la sœur était
mariée près de Balbec avec un gentilhomme bas-normand se livrât à des
attaques aussi violentes encore les nobles, allant jusqu’à reprocher à
la Révolution de ne les avoir pas tous guillotinés" :start 238 :end 459)
 ))