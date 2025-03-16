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
 :text "Je m’amusais à regarder les carafes que les gamins mettaient dans la
Vivonne pour prendre les petits poissons, et qui, remplies par la
rivière, où elles sont à leur tour encloses, à la fois «contenant» aux
flancs transparents comme une eau durcie, et «contenu» plongé dans un
plus grand contenant de cristal liquide et courant, évoquaient l’image
de la fraîcheur d’une façon plus délicieuse et plus irritante qu’elles
n’eussent fait sur une table servie, en ne la montrant qu’en fuite
dans cette allitération perpétuelle entre l’eau sans consistance où
les mains ne pouvaient la capter et le verre sans fluidité où le
palais ne pourrait en jouir. Je me promettais de venir là plus tard
avec des lignes; j’obtenais qu’on tirât un peu de pain des provisions
du goûter; j’en jetais dans la Vivonne des boulettes qui semblaient
suffire pour y provoquer un phénomène de sursaturation, car l’eau se
solidifiait aussitôt autour d’elles en grappes ovoïdes de têtards
inanitiés qu’elle tenait sans doute jusque-là en dissolution,
invisibles, tout près d’être en voie de cristallisation."
 :tokens 174
 :processed-at "2025-03-16T02:18:14.172392"
 :entities (list
  (entity :text "Vivonne" :label "ORG" :start 69 :end 76) (entity :text "Vivonne" :label "ORG" :start 787 :end 794)
 )
 :sentences (list
  (sentence :text "Je m’amusais à regarder les carafes que les gamins mettaient dans la
Vivonne pour prendre les petits poissons, et qui, remplies par la
rivière, où elles sont à leur tour encloses, à la fois «contenant» aux
flancs transparents comme une eau durcie, et «contenu» plongé dans un
plus grand contenant de cristal liquide et courant, évoquaient l’image
de la fraîcheur d’une façon plus délicieuse et plus irritante qu’elles
n’eussent fait sur une table servie, en ne la montrant qu’en fuite
dans cette allitération perpétuelle entre l’eau sans consistance où
les mains ne pouvaient la capter et le verre sans fluidité où le
palais ne pourrait en jouir" :start 0 :end 645) (sentence :text "Je me promettais de venir là plus tard
avec des lignes; j’obtenais qu’on tirât un peu de pain des provisions
du goûter; j’en jetais dans la Vivonne des boulettes qui semblaient
suffire pour y provoquer un phénomène de sursaturation, car l’eau se
solidifiait aussitôt autour d’elles en grappes ovoïdes de têtards
inanitiés qu’elle tenait sans doute jusque-là en dissolution,
invisibles, tout près d’être en voie de cristallisation" :start 646 :end 1076)
 ))