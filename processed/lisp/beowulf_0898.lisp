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
 :text "--«Ah! lui dit-il, il y a eu de bien belles vies qui ont fini de cette
façon... Ainsi vous savez... ce navigateur dont Dumont d’Urville
ramena les cendres, La Pérouse...(et Swann était déjà heureux comme
s’il avait parlé d’Odette.) «C’est un beau caractère et qui
m’intéresse beaucoup que celui de La Pérouse, ajouta-t-il d’un air
mélancolique.»"
 :tokens 56
 :processed-at "2025-03-16T02:18:14.732051"
 :entities (list
  (entity :text "--«Ah!" :label "ORG" :start 0 :end 6) (entity :text "Dumont" :label "ORG" :start 119 :end 125) (entity :text "Swann" :label "ORG" :start 173 :end 178) (entity :text "Pérouse," :label "ORG" :start 301 :end 309)
 )
 :sentences (list
  (sentence :text "--«Ah! lui dit-il, il y a eu de bien belles vies qui ont fini de cette
façon" :start 0 :end 76) (sentence :text "Ainsi vous savez" :start 79 :end 96) (sentence :text "ce navigateur dont Dumont d’Urville
ramena les cendres, La Pérouse" :start 99 :end 166) (sentence :text "(et Swann était déjà heureux comme
s’il avait parlé d’Odette" :start 169 :end 229) (sentence :text ") «C’est un beau caractère et qui
m’intéresse beaucoup que celui de La Pérouse, ajouta-t-il d’un air
mélancolique" :start 230 :end 343) (sentence :text "»" :start 344 :end 345)
 ))