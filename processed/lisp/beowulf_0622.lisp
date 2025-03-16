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
 :text "--Monsieur a une facilité de parole, une mémoire! avait-il dit à Mme
Verdurin quand le peintre eut terminé, comme j’en ai rarement
rencontré. Bigre! je voudrais bien en avoir autant. Il ferait un
excellent prédicateur. On peut dire qu’avec M. Bréchot, vous avez là
deux numéros qui se valent, je ne sais même pas si comme platine,
celui-ci ne damerait pas encore le pion au professeur. Ça vient plus
naturellement, c’est moins recherché. Quoiqu’il ait chemin faisant
quelques mots un peu réalistes, mais c’est le goût du jour, je n’ai
pas souvent vu tenir le crachoir avec une pareille dextérité, comme
nous disions au régiment, où pourtant j’avais un camarade que
justement monsieur me rappelait un peu. A propos de n’importe quoi, je
ne sais que vous dire, sur ce verre, par exemple, il pouvait dégoiser
pendant des heures, non, pas à propos de ce verre, ce que je dis est
stupide; mais à propos de la bataille de Waterloo, de tout ce que vous
voudrez et il nous envoyait chemin faisant des choses auxquelles vous
n’auriez jamais pensé. Du reste Swann était dans le même régiment; il
a dû le connaître.»"
 :tokens 192
 :processed-at "2025-03-16T02:18:14.450989"
 :entities (list
  (entity :text "--Monsieur" :label "ORG" :start 0 :end 10) (entity :text "Verdurin" :label "ORG" :start 69 :end 77) (entity :text "Bigre!" :label "ORG" :start 142 :end 148) (entity :text "Bréchot," :label "ORG" :start 243 :end 251) (entity :text "Waterloo," :label "ORG" :start 916 :end 925) (entity :text "Swann" :label "ORG" :start 1048 :end 1053)
 )
 :sentences (list
  (sentence :text "--Monsieur a une facilité de parole, une mémoire! avait-il dit à Mme
Verdurin quand le peintre eut terminé, comme j’en ai rarement
rencontré" :start 0 :end 140) (sentence :text "Bigre! je voudrais bien en avoir autant" :start 141 :end 181) (sentence :text "Il ferait un
excellent prédicateur" :start 182 :end 217) (sentence :text "On peut dire qu’avec M" :start 218 :end 241) (sentence :text "Bréchot, vous avez là
deux numéros qui se valent, je ne sais même pas si comme platine,
celui-ci ne damerait pas encore le pion au professeur" :start 242 :end 384) (sentence :text "Ça vient plus
naturellement, c’est moins recherché" :start 385 :end 436) (sentence :text "Quoiqu’il ait chemin faisant
quelques mots un peu réalistes, mais c’est le goût du jour, je n’ai
pas souvent vu tenir le crachoir avec une pareille dextérité, comme
nous disions au régiment, où pourtant j’avais un camarade que
justement monsieur me rappelait un peu" :start 437 :end 703) (sentence :text "A propos de n’importe quoi, je
ne sais que vous dire, sur ce verre, par exemple, il pouvait dégoiser
pendant des heures, non, pas à propos de ce verre, ce que je dis est
stupide; mais à propos de la bataille de Waterloo, de tout ce que vous
voudrez et il nous envoyait chemin faisant des choses auxquelles vous
n’auriez jamais pensé" :start 704 :end 1037) (sentence :text "Du reste Swann était dans le même régiment; il
a dû le connaître" :start 1038 :end 1103) (sentence :text "»" :start 1104 :end 1105)
 ))