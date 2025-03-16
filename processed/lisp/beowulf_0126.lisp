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
 :text "Toutes mes conversations avec mes camarades portaient sur ces acteurs
dont l’art, bien qu’il me fût encore inconnu, était la première forme,
entre toutes celles qu’il revêt, sous laquelle se laissait pressentir
par moi, l’Art. Entre la manière que l’un ou l’autre avait de débiter,
de nuancer une tirade, les différences les plus minimes me semblaient
avoir une importance incalculable. Et, d’après ce que l’on m’avait dit
d’eux, je les classais par ordre de talent, dans des listes que je me
récitais toute la journée: et qui avaient fini par durcir dans mon
cerveau et par le gêner de leur inamovibilité."
 :tokens 101
 :processed-at "2025-03-16T02:18:13.920530"
 :entities (list
  (entity :text "Toutes" :label "ORG" :start 0 :end 6) (entity :text "Entre" :label "ORG" :start 227 :end 232)
 )
 :sentences (list
  (sentence :text "Toutes mes conversations avec mes camarades portaient sur ces acteurs
dont l’art, bien qu’il me fût encore inconnu, était la première forme,
entre toutes celles qu’il revêt, sous laquelle se laissait pressentir
par moi, l’Art" :start 0 :end 225) (sentence :text "Entre la manière que l’un ou l’autre avait de débiter,
de nuancer une tirade, les différences les plus minimes me semblaient
avoir une importance incalculable" :start 226 :end 385) (sentence :text "Et, d’après ce que l’on m’avait dit
d’eux, je les classais par ordre de talent, dans des listes que je me
récitais toute la journée: et qui avaient fini par durcir dans mon
cerveau et par le gêner de leur inamovibilité" :start 386 :end 605)
 ))