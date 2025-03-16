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
 :text "Mais la princesse voyant que M. de Froberville continuait à regarder
Mme de Cambremer, ajouta moitié par méchanceté pour celle-ci, moitié
par amabilité pour le général: «Pas agréable... pour son mari! Je
regrette de ne pas la connaître puisqu’elle vous tient à cœur, je vous
aurais présenté,» dit la princesse qui probablement n’en aurait rien
fait si elle avait connu la jeune femme. «Je vais être obligée de vous
dire bonsoir, parce que c’est la fête d’une amie à qui je dois aller
la souhaiter, dit-elle d’un ton modeste et vrai, réduisant la réunion
mondaine à laquelle elle se rendait à la simplicité d’une cérémonie
ennuyeuse mais où il était obligatoire et touchant d’aller. D’ailleurs
je dois y retrouver Basin qui, pendant que j’étais ici, est allé voir
ses amis que vous connaissez, je crois, qui ont un nom de pont, les
Iéna.»"
 :tokens 143
 :processed-at "2025-03-16T02:18:14.696428"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Froberville" :label "ORG" :start 35 :end 46) (entity :text "Cambremer," :label "ORG" :start 76 :end 86) (entity :text "«Pas" :label "ORG" :start 169 :end 173) (entity :text "Basin" :label "ORG" :start 713 :end 718) (entity :text "Iéna.»" :label "ORG" :start 831 :end 837)
 )
 :sentences (list
  (sentence :text "Mais la princesse voyant que M" :start 0 :end 30) (sentence :text "de Froberville continuait à regarder
Mme de Cambremer, ajouta moitié par méchanceté pour celle-ci, moitié
par amabilité pour le général: «Pas agréable" :start 31 :end 182) (sentence :text "pour son mari! Je
regrette de ne pas la connaître puisqu’elle vous tient à cœur, je vous
aurais présenté,» dit la princesse qui probablement n’en aurait rien
fait si elle avait connu la jeune femme" :start 185 :end 383) (sentence :text "«Je vais être obligée de vous
dire bonsoir, parce que c’est la fête d’une amie à qui je dois aller
la souhaiter, dit-elle d’un ton modeste et vrai, réduisant la réunion
mondaine à laquelle elle se rendait à la simplicité d’une cérémonie
ennuyeuse mais où il était obligatoire et touchant d’aller" :start 384 :end 680) (sentence :text "D’ailleurs
je dois y retrouver Basin qui, pendant que j’étais ici, est allé voir
ses amis que vous connaissez, je crois, qui ont un nom de pont, les
Iéna" :start 681 :end 835) (sentence :text "»" :start 291 :end 292)
 ))